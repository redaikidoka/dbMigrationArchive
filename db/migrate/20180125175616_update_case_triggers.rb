class UpdateCaseTriggers < ActiveRecord::Migration[5.1]

  def up
    execute <<-SQL
      -- First remove the existing triggers/functions as we will replace them
      DROP TRIGGER update_kase_kase_order_amount_due ON case_orders;
      DROP FUNCTION kase_order_change();

      DROP TRIGGER update_kase_invoice_amount_due ON invoices;
      DROP FUNCTION invoice_amount_due_change();

      DROP FUNCTION calc_kase_amount_due_cents(integer);
      DROP FUNCTION update_kase_amount_due_cents(integer);

      -- returns SUM of associated invoices amount_due_cents given a case ID
      CREATE OR REPLACE FUNCTION calc_kase_amount_due_cents(kase_eyed integer) RETURNS integer as $$
        DECLARE
          result integer;
        BEGIN
          SELECT COALESCE(SUM("invoices"."amount_due_cents"), 0) INTO result
          FROM "invoices"
            INNER JOIN "work_orders"
              ON "invoices"."work_order_id" = "work_orders"."id"
            INNER JOIN "orders"
              ON "work_orders"."order_id" = "orders"."id" AND "orders"."case_id" = kase_eyed
            WHERE
              "invoices"."state" != 'cancelled';
          RETURN result;
        END;
      $$ LANGUAGE plpgsql;

      CREATE OR REPLACE FUNCTION update_kase_amount_due_cents(kase_eyed integer) RETURNS void as $$
        BEGIN
          UPDATE "cases"
          SET "amount_due_cents" = calc_kase_amount_due_cents(kase_eyed)
          WHERE "cases"."id" = kase_eyed;
        END;
      $$ LANGUAGE plpgsql;

      CREATE OR REPLACE FUNCTION invoice_amount_due_change() RETURNS trigger as $$
        DECLARE
          record invoices%ROWTYPE;
        BEGIN

          IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
            record := NEW;
          ELSIF TG_OP = 'DELETE' THEN
            record := OLD;
          ELSE
            return NULL;
          END IF;

          PERFORM update_kase_amount_due_cents(cases.id) FROM "cases"
          INNER JOIN "orders"
            ON "cases"."id" = "orders"."case_id"
          INNER JOIN "work_orders"
            ON "orders"."id" = "work_orders"."order_id"
          WHERE "work_orders"."id" = record.work_order_id;

          RETURN NULL;
        END;
      $$ LANGUAGE plpgsql;

      CREATE OR REPLACE FUNCTION order_kase_id_change() RETURNS trigger as $$\
        BEGIN
          IF TG_OP = 'INSERT' THEN
            PERFORM update_kase_amount_due_cents((NEW.case_id)::integer);
          ELSIF TG_OP = 'UPDATE' THEN
            PERFORM update_kase_amount_due_cents((NEW.case_id)::integer);
            PERFORM update_kase_amount_due_cents((OLD.case_id)::integer);
          ELSIF TG_OP = 'DELETE' THEN
            PERFORM update_kase_amount_due_cents((OLD.case_id)::integer);
          ELSE
            return NULL;
          END IF;

          RETURN NULL;
        END;
      $$ LANGUAGE plpgsql;

      -- TRIGGERS
      CREATE TRIGGER update_kase_invoice_amount_due
      AFTER INSERT OR UPDATE OR DELETE ON invoices
      FOR EACH ROW EXECUTE PROCEDURE invoice_amount_due_change();

      CREATE TRIGGER update_kase_kase_order_amount_due_create_or_destroy
      AFTER INSERT OR DELETE ON orders
      FOR EACH ROW EXECUTE PROCEDURE order_kase_id_change();

      CREATE TRIGGER update_kase_kase_order_amount_due_update
      AFTER UPDATE OF case_id ON orders
      FOR EACH ROW EXECUTE PROCEDURE order_kase_id_change();

    SQL
  end

end
