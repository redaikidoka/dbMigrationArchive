class AddFinalizedByToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :finalized_by_id, :integer
  end
end
