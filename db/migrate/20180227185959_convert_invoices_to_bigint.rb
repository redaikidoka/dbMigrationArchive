class ConvertInvoicesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoices, :id, :bigint
    change_column :invoices, :work_order_id, :bigint
    change_column :invoices, :entity_id, :bigint
    change_column :invoices, :address_id, :bigint
    change_column :invoices, :contact_id, :bigint
    change_column :invoices, :price_list_id, :bigint
    change_column :invoices, :billing_selection_id, :bigint
    change_column :invoices, :finalized_by_id, :bigint
    change_column :invoices, :daisy_patient_id, :bigint
    change_column :invoices, :daisy_claims_administrator_id, :bigint
    change_column :invoices, :daisy_injury_id, :bigint
    change_column :invoices, :daisy_bill_id, :bigint
    change_column :invoices, :daisy_bill_submission_id, :bigint
    change_column :invoices, :daisy_attachment_id, :bigint
    change_column :invoices, :daisy_payer_id, :bigint
  end
end
