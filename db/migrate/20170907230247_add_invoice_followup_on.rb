class AddInvoiceFollowupOn < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :followup_on, :date
    add_index :invoices, :followup_on
  end
end
