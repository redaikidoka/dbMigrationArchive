class AddArClerkIdToMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    add_column :materialized_invoice_rows, :ar_clerk_id, :integer
    add_index :materialized_invoice_rows, :ar_clerk_id
  end
end
