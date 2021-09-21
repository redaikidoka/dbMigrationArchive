class AddInvoiceBulkSubmittedAt < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :legacy_submitted_at, :datetime
  end
end
