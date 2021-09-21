class AddCaseNormFieldsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :medical_record_number, :string
    add_column :requests, :date_of_injury, :string
    add_column :requests, :edd_customer_account_number, :string
    add_column :requests, :edd_claim_ID, :string
    add_column :requests, :county_of_death, :string
    add_column :requests, :state_of_death, :string
    add_column :requests, :date_of_death, :string
    add_column :requests, :county_of_birth, :string
    add_column :requests, :state_of_birth, :string
    add_column :requests, :employee_number, :string
    add_column :requests, :bank_account_number, :string
    add_column :requests, :ssa_file_type, :string
    add_column :requests, :incident_name, :string
    add_column :requests, :incident_street, :string
    add_column :requests, :incident_city, :string
    add_column :requests, :incident_state, :string
    add_column :requests, :incident_zip, :string
    add_column :requests, :incident_number, :string
    add_column :requests, :incident_date, :string
    add_column :requests, :records_subject_enabled, :boolean, default: false
  end
end
