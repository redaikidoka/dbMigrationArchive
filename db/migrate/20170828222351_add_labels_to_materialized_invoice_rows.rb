class AddLabelsToMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    add_column :materialized_invoice_rows, :label_ids, :text, array: true
    add_index :materialized_invoice_rows, :label_ids, using: 'gin'
  end
end
