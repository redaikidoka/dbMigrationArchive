class UpdateMaterializedRequestRowRefresh6 < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION refresh_materialized_request_row(request_ids bigint[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_request_rows
            SELECT *
            FROM unmaterialized_request_rows
            WHERE unmaterialized_request_rows.id = ANY(request_ids)
          ON CONFLICT (id) DO UPDATE
            SET
              request_masked_state       = EXCLUDED.request_masked_state,
              applicant_name             = EXCLUDED.applicant_name,
              defendant                  = EXCLUDED.defendant,
              rush                       = EXCLUDED.rush,
              account_id                 = EXCLUDED.account_id,
              order_state                = EXCLUDED.order_state,
              case_number                = EXCLUDED.case_number,
              case_status                = EXCLUDED.case_status,
              requested_contact_name     = EXCLUDED.requested_contact_name,
              requested_company_name     = EXCLUDED.requested_company_name,
              requested_street           = EXCLUDED.requested_street,
              requested_city             = EXCLUDED.requested_city,
              requested_state            = EXCLUDED.requested_state,
              requested_zip              = EXCLUDED.requested_zip,
              verified_contact_name      = EXCLUDED.verified_contact_name,
              verified_company_name      = EXCLUDED.verified_company_name,
              verified_street            = EXCLUDED.verified_street,
              verified_city              = EXCLUDED.verified_city,
              verified_state             = EXCLUDED.verified_state,
              verified_zip               = EXCLUDED.verified_zip,
              cnr                        = EXCLUDED.cnr,
              case_number_without_prefix = EXCLUDED.case_number_without_prefix,
              lower_case_number          = EXCLUDED.lower_case_number,
              applicant_dob              = EXCLUDED.applicant_dob,
              encrypted_applicant_ssn    = EXCLUDED.encrypted_applicant_ssn;
        END
      $BODY$;
    SQL
  end

  def down
    execute <<-SQL
      CREATE OR REPLACE FUNCTION refresh_materialized_request_row(request_ids bigint[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_request_rows
            SELECT *
            FROM unmaterialized_request_rows
            WHERE unmaterialized_request_rows.id = ANY(request_ids)
          ON CONFLICT (id) DO UPDATE
            SET
              request_masked_state       = EXCLUDED.request_masked_state,
              applicant_name             = EXCLUDED.applicant_name,
              defendant                  = EXCLUDED.defendant,
              rush                       = EXCLUDED.rush,
              account_id                 = EXCLUDED.account_id,
              order_state                = EXCLUDED.order_state,
              case_number                = EXCLUDED.case_number,
              case_status                = EXCLUDED.case_status,
              requested_contact_name     = EXCLUDED.requested_contact_name,
              requested_company_name     = EXCLUDED.requested_company_name,
              requested_street           = EXCLUDED.requested_street,
              requested_city             = EXCLUDED.requested_city,
              requested_state            = EXCLUDED.requested_state,
              requested_zip              = EXCLUDED.requested_zip,
              verified_contact_name      = EXCLUDED.verified_contact_name,
              verified_company_name      = EXCLUDED.verified_company_name,
              verified_street            = EXCLUDED.verified_street,
              verified_city              = EXCLUDED.verified_city,
              verified_state             = EXCLUDED.verified_state,
              verified_zip               = EXCLUDED.verified_zip,
              cnr                        = EXCLUDED.cnr,
              case_number_without_prefix = EXCLUDED.case_number_without_prefix,
              lower_case_number          = EXCLUDED.lower_case_number;
        END
      $BODY$;
    SQL
  end
end
