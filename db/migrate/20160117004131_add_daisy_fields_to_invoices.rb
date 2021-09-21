class AddDaisyFieldsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :daisy_patient_id, :integer
    add_column :invoices, :daisy_claims_administrator_id, :integer
    add_column :invoices, :daisy_injury_id, :integer
    add_column :invoices, :daisy_bill_id, :integer
    add_column :invoices, :daisy_bill_submission_id, :integer
    add_column :invoices, :daisy_attachment_id, :integer
  end
end
