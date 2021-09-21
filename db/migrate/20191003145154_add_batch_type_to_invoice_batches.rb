class AddBatchTypeToInvoiceBatches < ActiveRecord::Migration[5.2]
  def change
    add_column :invoice_batches, :batch_type, :string
  end
end
