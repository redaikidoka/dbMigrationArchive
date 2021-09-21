class CreateMaterializedCaseRowRefresh < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION refresh_materialized_case_row(case_ids bigint[])
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          INSERT INTO materialized_case_rows (id, account_name, account_hivo_tag, billing_entity_name, billing_entity_id,
            requesting_attorney_name, user_to_contact_name, earliest_needed_by_date, earliest_created_at
          )
            SELECT id, account_name, account_hivo_tag, billing_entity_name, billing_entity_id, requesting_attorney_name,
            user_to_contact_name, earliest_needed_by_date, earliest_created_at
            FROM unmaterialized_case_rows
            WHERE unmaterialized_case_rows.id = ANY(case_ids)
          ON CONFLICT (id) DO UPDATE
            SET
              account_name = EXCLUDED.account_name,
              account_hivo_tag = EXCLUDED.account_hivo_tag,
              billing_entity_name = EXCLUDED.billing_entity_name,
              billing_entity_id = EXCLUDED.billing_entity_id,
              requesting_attorney_name = EXCLUDED.requesting_attorney_name,
              user_to_contact_name = EXCLUDED.user_to_contact_name,
              earliest_needed_by_date = EXCLUDED.earliest_needed_by_date,
              earliest_created_at = EXCLUDED.earliest_created_at;
        END
      $BODY$;
    SQL

    execute <<-SQL
      CREATE FUNCTION refresh_all_materialized_case_rows()
          RETURNS void
          LANGUAGE 'plpgsql'
          SECURITY DEFINER
      AS $BODY$
        BEGIN
          DELETE
            FROM materialized_case_rows;
          INSERT INTO materialized_case_rows
            SELECT *
            FROM unmaterialized_case_rows
          ON CONFLICT (id) DO NOTHING;
        END
      $BODY$;
    SQL

    execute <<-SQL
      SELECT refresh_all_materialized_case_rows();
    SQL
  end

  def down
    execute <<-SQL
      DROP FUNCTION refresh_materialized_case_row(case_ids bigint[]);
      DROP FUNCTION refresh_all_materialized_case_rows();
    SQL
  end
end
