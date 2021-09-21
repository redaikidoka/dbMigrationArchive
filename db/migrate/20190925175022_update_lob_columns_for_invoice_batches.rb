class UpdateLobColumnsForInvoiceBatches < ActiveRecord::Migration[5.2]
  def change
    rename_column :invoice_batches, :lob_pending_at, :pending_at
    rename_column :invoice_batches, :lob_submitted_at, :submitted_at
  end
end
