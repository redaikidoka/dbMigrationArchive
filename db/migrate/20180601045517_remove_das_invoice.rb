class RemoveDasInvoice < ActiveRecord::Migration[5.1]
  def change
    drop_table :das_invoices
  end
end
