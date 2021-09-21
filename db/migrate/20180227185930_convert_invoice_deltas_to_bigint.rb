class ConvertInvoiceDeltasToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoice_deltas, :id, :bigint
    change_column :invoice_deltas, :invoice_id, :bigint
  end
end
