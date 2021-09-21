class AddStateToInvoiceBatches < ActiveRecord::Migration
  def change
    add_column :invoice_batches, :state, :string, null: false
    add_column :invoice_batches, :lob_pending_at, :datetime
    add_column :invoice_batches, :lob_submitted_at, :datetime
    add_column :invoice_batches, :fault_at, :datetime
  end
end
