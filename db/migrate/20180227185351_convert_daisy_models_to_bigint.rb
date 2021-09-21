class ConvertDaisyModelsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :daisy_attachments, :id, :bigint
    change_column :daisy_attachments, :daisy_id, :bigint

    change_column :daisy_bill_submissions, :id, :bigint
    change_column :daisy_bill_submissions, :daisy_id, :bigint

    change_column :daisy_bills, :id, :bigint
    change_column :daisy_bills, :claims_administrator_id, :bigint
    change_column :daisy_bills, :daisy_id, :bigint
    change_column :daisy_bills, :practice_bill_id, :bigint

    change_column :daisy_claims_administrators, :id, :bigint
    change_column :daisy_claims_administrators, :daisy_id, :bigint

    change_column :daisy_injuries, :id, :bigint
    change_column :daisy_injuries, :daisy_id, :bigint

    change_column :daisy_patients, :id, :bigint
    change_column :daisy_patients, :daisy_id, :bigint

    change_column :daisy_payers, :id, :bigint
    change_column :daisy_payers, :daisy_id, :bigint
    change_column :daisy_payers, :daisy_claims_administrator_id, :bigint
  end
end
