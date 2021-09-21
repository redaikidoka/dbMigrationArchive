class AddDocucentsToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :docucents_pending_at, :datetime
    add_column :invoices, :docucents_submitted_at, :datetime
  end
end
