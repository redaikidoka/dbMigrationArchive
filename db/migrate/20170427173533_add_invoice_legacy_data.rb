class AddInvoiceLegacyData < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :legacy_data, :jsonb, null: false, default: {}
  end
end
