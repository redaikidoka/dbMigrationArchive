class AddCaseDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :applicant_alias, :string
    add_column :cases, :encrypted_applicant_ssn, :string
    add_column :cases, :applicant_dob, :date
    add_column :cases, :applicant_doi_from, :date
    add_column :cases, :applicant_doi_to, :date
    add_column :cases, :application_filed_on, :date
    add_column :cases, :claim_number, :string
    add_column :cases, :defendant, :string
    add_column :cases, :subpoena_issued_by, :string
    add_column :cases, :venue_id, :integer
  end
end
