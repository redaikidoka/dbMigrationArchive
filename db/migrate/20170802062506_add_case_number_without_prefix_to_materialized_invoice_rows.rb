class AddCaseNumberWithoutPrefixToMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    add_column :materialized_invoice_rows, :case_number_without_prefix, :text
    add_index :materialized_invoice_rows, :case_number_without_prefix
  end
end
