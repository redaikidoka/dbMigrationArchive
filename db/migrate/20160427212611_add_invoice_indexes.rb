class AddInvoiceIndexes < ActiveRecord::Migration
  def change
    add_index :invoices, :state
    add_index :invoices, :lob_submitted_at
    add_index :invoices, :daisy_submitted_at
  end
end
