class AddBillingSelectionIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :billing_selection_id, :integer
  end
end
