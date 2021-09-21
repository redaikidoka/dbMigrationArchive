class AddCaseAmountDueCentsTriggers < ActiveRecord::Migration

  def up
    execute <<-SQL
      -- returns SUM of associated invoices amount_due_cents given a case ID
      CREATE OR REPLACE FUNCTION calc_kase_amount_due_cents(kase_eyed integer) RETURNS integer as $$
        DECLARE
          result integer;
        BEGIN
          SELECT COALESCE(SUM("invoices"."amount_due_cents"), 0) INTO result FROM "invoices"
            INNER JOIN "work_orders"
              ON "invoices"."work_order_id" = "work_orders"."id"
            INNER JOIN "orders"
              ON "work_orders"."order_id" = "orders"."id"
            INNER JOIN "case_orders"
              ON "orders"."id" = "case_orders"."order_id"
            WHERE "case_orders"."case_id" = kase_eyed
              AND "invoices"."state" != 'cancelled';
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
          INNER JOIN "case_orders"
            ON "cases"."id" = "case_orders"."case_id"
          INNER JOIN "orders"
            ON "case_orders"."order_id" = "orders"."id"
          INNER JOIN "work_orders"
            ON "orders"."id" = "work_orders"."order_id"
          WHERE "work_orders"."id" = record.work_order_id;

          RETURN NULL;
        END;
      $$ LANGUAGE plpgsql;

      CREATE OR REPLACE FUNCTION kase_order_change() RETURNS trigger as $$
        DECLARE
          record case_orders%ROWTYPE;
        BEGIN
          IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
            record := NEW;
          ELSIF TG_OP = 'DELETE' THEN
            record := OLD;
          ELSE
            return NULL;
          END IF;

          PERFORM update_kase_amount_due_cents(record.case_id);

          RETURN NULL;
        END;
      $$ LANGUAGE plpgsql;

      -- TRIGGERS
      CREATE TRIGGER update_kase_invoice_amount_due
      AFTER INSERT OR UPDATE OR DELETE ON invoices
      FOR EACH ROW EXECUTE PROCEDURE invoice_amount_due_change();

      CREATE TRIGGER update_kase_kase_order_amount_due
      AFTER INSERT OR UPDATE OR DELETE ON case_orders
      FOR EACH ROW EXECUTE PROCEDURE kase_order_change();

    SQL

  end

  def down
    execute <<-SQL
      DROP TRIGGER update_kase_kase_order_amount_due ON case_orders;
      DROP FUNCTION kase_order_change();

      DROP TRIGGER update_kase_invoice_amount_due ON invoices;
      DROP FUNCTION invoice_amount_due_change();

      DROP FUNCTION calc_kase_amount_due_cents(integer);
      DROP FUNCTION update_kase_amount_due_cents(integer);
    SQL
  end
end
