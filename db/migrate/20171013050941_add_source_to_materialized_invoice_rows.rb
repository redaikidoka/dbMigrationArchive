class AddSourceToMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    add_column :materialized_invoice_rows, :order_source, :string
    add_index :materialized_invoice_rows, :order_source
  end
end
