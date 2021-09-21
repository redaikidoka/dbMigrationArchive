class AddTriggersAndViewsForBigints < ActiveRecord::Migration[5.1]
  def up
    replace_view :unmaterialized_invoice_rows, version: 7

    execute <<-SQL
      CREATE TRIGGER update_kase_kase_order_amount_due_update
      AFTER UPDATE OF case_id ON orders
      FOR EACH ROW EXECUTE PROCEDURE order_kase_id_change();
    SQL

    execute <<-SQL
      DROP FUNCTION calc_kase_amount_due_cents(integer);
      CREATE OR REPLACE FUNCTION calc_kase_amount_due_cents(kase_eyed bigint) RETURNS integer as $$
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

      DROP FUNCTION update_kase_amount_due_cents(integer);
      CREATE OR REPLACE FUNCTION update_kase_amount_due_cents(kase_eyed bigint) RETURNS void as $$
        BEGIN
          UPDATE "cases"
          SET "amount_due_cents" = calc_kase_amount_due_cents(kase_eyed)
          WHERE "cases"."id" = kase_eyed;
        END;
      $$ LANGUAGE plpgsql;

      CREATE OR REPLACE FUNCTION order_kase_id_change() RETURNS trigger as $$\
        BEGIN
          IF TG_OP = 'INSERT' THEN
            PERFORM update_kase_amount_due_cents((NEW.case_id)::bigint);
          ELSIF TG_OP = 'UPDATE' THEN
            PERFORM update_kase_amount_due_cents((NEW.case_id)::bigint);
            PERFORM update_kase_amount_due_cents((OLD.case_id)::bigint);
          ELSIF TG_OP = 'DELETE' THEN
            PERFORM update_kase_amount_due_cents((OLD.case_id)::bigint);
          ELSE
            return NULL;
          END IF;

          RETURN NULL;
        END;
      $$ LANGUAGE plpgsql;
    SQL

    execute <<-SQL
      DROP FUNCTION refresh_materialized_invoice_row(integer[]);
      CREATE OR REPLACE FUNCTION refresh_materialized_invoice_row(invoice_ids bigint[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_invoice_rows (id, applicant_name, claim_number, case_number, case_number_without_prefix, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id, label_ids, ar_clerk_id, order_source)
            SELECT id, applicant_name, claim_number, case_number, case_number_without_prefix, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id, label_ids, ar_clerk_id, order_source
            FROM unmaterialized_invoice_rows
            WHERE unmaterialized_invoice_rows.id = ANY(invoice_ids)
          ON CONFLICT (id) DO UPDATE
            SET
              applicant_name             = EXCLUDED.applicant_name,
              claim_number               = EXCLUDED.claim_number,
              case_number                = EXCLUDED.case_number,
              case_number_without_prefix = EXCLUDED.case_number_without_prefix,
              work_order_number          = EXCLUDED.work_order_number,
              order_type                 = EXCLUDED.order_type,
              entity_id                  = EXCLUDED.entity_id,
              entity_name                = EXCLUDED.entity_name,
              display_name               = EXCLUDED.display_name,
              account_id                 = EXCLUDED.account_id,
              territory_id               = EXCLUDED.territory_id,
              daisy_id                   = EXCLUDED.daisy_id,
              label_ids                  = EXCLUDED.label_ids,
              ar_clerk_id                = EXCLUDED.ar_clerk_id,
              order_source               = EXCLUDED.order_source;
        END
      $BODY$;
    SQL


  end

  def down
  end
end
