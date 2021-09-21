class AddLocationOfRecordsCacheToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :location_of_records_cache, :json, default: "{}"
  end
end
