class UpdateMaterializedInvoiceRowRefresh1 < ActiveRecord::Migration[5.1]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION refresh_materialized_invoice_row(invoice_ids integer[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_invoice_rows (id, applicant_name, claim_number, case_number, case_number_without_prefix, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id, label_ids)
            SELECT id, applicant_name, claim_number, case_number, case_number_without_prefix, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id, label_ids
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
              label_ids                  = EXCLUDED.label_ids;
        END
      $BODY$;
    SQL

    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end

  def down
    execute <<-SQL
      CREATE OR REPLACE FUNCTION refresh_materialized_invoice_row(invoice_ids integer[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_invoice_rows (id, applicant_name, claim_number, case_number, case_number_without_prefix, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id)
            SELECT id, applicant_name, claim_number, case_number, case_number_without_prefix, work_order_number, order_type, entity_id, entity_name, display_name, account_id, territory_id, daisy_id
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
              daisy_id                   = EXCLUDED.daisy_id;
        END
      $BODY$;
    SQL
  end
end
