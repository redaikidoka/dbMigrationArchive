class ConvertJsonToJsonb < ActiveRecord::Migration
  def up

    change_column :api_spies, :request_json, :json, default: nil
    change_column :api_spies, :request_json, "jsonb USING request_json::jsonb"
    change_column :api_spies, :request_json, :jsonb, default: "{}"

    change_column :api_spies, :response_json, :json, default: nil
    change_column :api_spies, :response_json, "jsonb USING response_json::jsonb"
    change_column :api_spies, :response_json, :jsonb, default: "{}"

    change_column :invoices, :ordered_by_cache, :json, default: nil
    change_column :invoices, :ordered_by_cache, "jsonb USING ordered_by_cache::jsonb"
    change_column :invoices, :ordered_by_cache, :jsonb, default: "{}"

    change_column :invoices, :sent_to_cache, :json, default: nil
    change_column :invoices, :sent_to_cache, "jsonb USING sent_to_cache::jsonb"
    change_column :invoices, :sent_to_cache, :jsonb, default: "{}"

    change_column :invoices, :billed_to_cache, :json, default: nil
    change_column :invoices, :billed_to_cache, "jsonb USING billed_to_cache::jsonb"
    change_column :invoices, :billed_to_cache, :jsonb, default: "{}"

    change_column :invoices, :location_of_records_cache, :json, default: nil
    change_column :invoices, :location_of_records_cache, "jsonb USING location_of_records_cache::jsonb"
    change_column :invoices, :location_of_records_cache, :jsonb, default: "{}"

    change_column :orders, :additional_set_mappings, :json, default: nil
    change_column :orders, :additional_set_mappings, "jsonb USING additional_set_mappings::jsonb"
    change_column :orders, :additional_set_mappings, :jsonb, default: "{}"

    change_column :s3_relay_uploads, :data, :json, default: nil
    change_column :s3_relay_uploads, :data, "jsonb USING data::jsonb"
    change_column :s3_relay_uploads, :data, :jsonb, default: "{}"

  end

  def down

  end

end
