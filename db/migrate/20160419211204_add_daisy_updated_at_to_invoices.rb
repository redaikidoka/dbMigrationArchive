class AddDaisyUpdatedAtToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :daisy_updated_at, :datetime, after: "daisy_submitted_at"
  end
end
