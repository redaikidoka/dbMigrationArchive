class AddDateServedToMaterializedInvoiceRow < ActiveRecord::Migration[5.2]
  def change
    add_column :materialized_invoice_rows, :date_served, :date
    add_index :materialized_invoice_rows, :date_served
  end
end
