class AddSbrSkippedAtToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :sbr_skipped_at, :datetime
  end
end
