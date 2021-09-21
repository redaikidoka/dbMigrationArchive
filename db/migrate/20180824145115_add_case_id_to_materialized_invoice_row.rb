class AddCaseIdToMaterializedInvoiceRow < ActiveRecord::Migration[5.2]
  def change
    add_column :materialized_invoice_rows, :case_id, :integer
    add_index :materialized_invoice_rows, :case_id
  end
end
