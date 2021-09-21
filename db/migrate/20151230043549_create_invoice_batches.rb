class CreateInvoiceBatches < ActiveRecord::Migration
  def change
    create_table :invoice_batches do |t|
      t.integer :primary_invoice_id
      t.timestamps
    end

    add_column :invoices, :invoice_batch_id, :integer
  end
end
