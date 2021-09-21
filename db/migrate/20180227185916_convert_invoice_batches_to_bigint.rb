class ConvertInvoiceBatchesToBigint < ActiveRecord::Migration[5.1]
  def change
    change_column :invoice_batches, :id, :bigint
  end
end
