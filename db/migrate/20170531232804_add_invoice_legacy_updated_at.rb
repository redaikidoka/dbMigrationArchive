class AddInvoiceLegacyUpdatedAt < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :legacy_updated_at, :datetime
  end
end
