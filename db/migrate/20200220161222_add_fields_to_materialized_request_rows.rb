class AddFieldsToMaterializedRequestRows < ActiveRecord::Migration[5.2]
  def change
    add_column :materialized_request_rows, :encrypted_applicant_ssn, :string
    add_column :materialized_request_rows, :applicant_dob, :date

    add_index :materialized_request_rows, :encrypted_applicant_ssn
    add_index :materialized_request_rows, :applicant_dob
  end
end
