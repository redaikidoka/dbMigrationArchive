class AddExternallySubmittedAtToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :externally_submitted_at, :timestamp
  end
end
