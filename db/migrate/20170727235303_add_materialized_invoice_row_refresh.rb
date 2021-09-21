class AddMaterializedInvoiceRowRefresh < ActiveRecord::Migration[5.1]
  def up

    # This creates a function that refreshes a materialized invoice row via a
    # upsert.  A simple delete + insert can and will result in a race
    # condition when firing this function multiple times as happens if you
    # create an invoice, work_order, etc all at once, the upsert solves this and
    # ensures the latest values are always present even if updates are happening
    # simultaneously.  The downside is that update requires the columns to be
    # specified.

    execute <<-SQL
      CREATE FUNCTION refresh_materialized_invoice_row(invoice_ids integer[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_invoice_rows (id, applicant_name, claim_number, case_number, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id)
            SELECT id, applicant_name, claim_number, case_number, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id
            FROM unmaterialized_invoice_rows
            WHERE unmaterialized_invoice_rows.id = ANY(invoice_ids)
          ON CONFLICT (id) DO UPDATE
            SET
              applicant_name    = EXCLUDED.applicant_name,
              claim_number      = EXCLUDED.claim_number,
              case_number       = EXCLUDED.case_number,
              work_order_number = EXCLUDED.work_order_number,
              order_type        = EXCLUDED.order_type,
              entity_id         = EXCLUDED.entity_id,
              entity_name       = EXCLUDED.entity_name,
              display_name      = EXCLUDED.display_name,
              account_id        = EXCLUDED.account_id,
              territory_id      = EXCLUDED.territory_id,
              daisy_id          = EXCLUDED.daisy_id;
        END
      $BODY$;
    SQL

    execute <<-SQL
      CREATE FUNCTION refresh_all_materialized_invoice_rows()
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          DELETE
            FROM materialized_invoice_rows;
          INSERT INTO materialized_invoice_rows
            SELECT *
            FROM unmaterialized_invoice_rows
          ON CONFLICT (id) DO NOTHING;
        END
      $BODY$;
    SQL

    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end

  def down
    execute <<-SQL
      DROP FUNCTION IF EXISTS refresh_materialized_invoice_row(invoice_ids integer[]);
    SQL

    execute <<-SQL
      DROP FUNCTION IF EXISTS refresh_all_materialized_invoice_rows();
    SQL
  end

end


