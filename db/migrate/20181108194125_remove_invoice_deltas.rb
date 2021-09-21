class RemoveInvoiceDeltas < ActiveRecord::Migration[5.2]
  def change
    drop_table :invoice_deltas
  end
end
