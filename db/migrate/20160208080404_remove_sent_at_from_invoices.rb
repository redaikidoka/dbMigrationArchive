class RemoveSentAtFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :sent_at
  end
end
