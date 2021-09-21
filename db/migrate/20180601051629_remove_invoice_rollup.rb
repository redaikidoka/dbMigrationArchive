class RemoveInvoiceRollup < ActiveRecord::Migration[5.1]
  def change
    drop_table :invoice_rollups
  end
end
