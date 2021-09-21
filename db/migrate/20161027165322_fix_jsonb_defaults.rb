class FixJsonbDefaults < ActiveRecord::Migration[5.0]
  def up
    change_column :api_spies, :request_json, :jsonb, default: {}
    change_column :api_spies, :response_json, :jsonb, default: {}
    change_column :invoices, :ordered_by_cache, :jsonb, default: {}
    change_column :invoices, :sent_to_cache, :jsonb, default: {}
    change_column :invoices, :billed_to_cache, :jsonb, default: {}
    change_column :invoices, :location_of_records_cache, :jsonb, default: {}
    change_column :orders, :additional_set_mappings, :jsonb, default: {}
    change_column :s3_relay_uploads, :data, :jsonb, default: {}
  end

  def down
    change_column :api_spies, :request_json, :jsonb, default: "{}"
    change_column :api_spies, :response_json, :jsonb, default: "{}"
    change_column :invoices, :ordered_by_cache, :jsonb, default: "{}"
    change_column :invoices, :sent_to_cache, :jsonb, default: "{}"
    change_column :invoices, :billed_to_cache, :jsonb, default: "{}"
    change_column :invoices, :location_of_records_cache, :jsonb, default: "{}"
    change_column :orders, :additional_set_mappings, :jsonb, default: "{}"
    change_column :s3_relay_uploads, :data, :jsonb, default: "{}"
  end

end
