class CreateMaterializedRequestRowRefresh < ActiveRecord::Migration[5.1]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION refresh_materialized_request_row(request_ids bigint[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_request_rows (id, work_order_id, request_masked_state, applicant_name, defendant, rush, received_on, account_id, order_state, case_number, case_status, requested_contact_name, requested_company_name, requested_street, requested_city, requested_state, requested_zip, verified_contact_name, verified_company_name, verified_street, verified_city, verified_state, verified_zip)
            SELECT id, work_order_id, request_masked_state, applicant_name, defendant, rush, received_on, account_id, order_state, case_number, case_status, requested_contact_name, requested_company_name, requested_street, requested_city, requested_state, requested_zip, verified_contact_name, verified_company_name, verified_street, verified_city, verified_state, verified_zip
            FROM unmaterialized_request_rows
            WHERE unmaterialized_request_rows.id = ANY(request_ids)
          ON CONFLICT (id) DO UPDATE
            SET
              work_order_id          = EXCLUDED.work_order_id,
              request_masked_state   = EXCLUDED.request_masked_state,
              applicant_name         = EXCLUDED.applicant_name,
              defendant              = EXCLUDED.defendant,
              rush                   = EXCLUDED.rush,
              received_on            = EXCLUDED.received_on,
              account_id             = EXCLUDED.account_id,
              order_state            = EXCLUDED.order_state,
              case_number            = EXCLUDED.case_number,
              case_status            = EXCLUDED.case_status,
              requested_contact_name = EXCLUDED.requested_contact_name,
              requested_company_name = EXCLUDED.requested_company_name,
              requested_street       = EXCLUDED.requested_street,
              requested_city         = EXCLUDED.requested_city,
              requested_state        = EXCLUDED.requested_state,
              requested_zip          = EXCLUDED.requested_zip,
              verified_contact_name  = EXCLUDED.verified_contact_name,
              verified_company_name  = EXCLUDED.verified_company_name,
              verified_street        = EXCLUDED.verified_street,
              verified_city          = EXCLUDED.verified_city,
              verified_state         = EXCLUDED.verified_state,
              verified_zip           = EXCLUDED.verified_zip;
        END
      $BODY$;
    SQL

    execute <<-SQL
      CREATE FUNCTION refresh_all_materialized_request_rows()
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          DELETE
            FROM materialized_request_rows;
          INSERT INTO materialized_request_rows
            SELECT *
            FROM unmaterialized_request_rows
          ON CONFLICT (id) DO NOTHING;
        END
      $BODY$;
    SQL

    execute <<-SQL
      SELECT refresh_all_materialized_request_rows();
    SQL
  end

  def down
    execute <<-SQL
      DROP FUNCTION refresh_materialized_request_row(request_ids bigint[]);
      DROP FUNCTION refresh_all_materialized_request_rows();
    SQL
  end
end
