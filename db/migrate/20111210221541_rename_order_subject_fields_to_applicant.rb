class RenameOrderSubjectFieldsToApplicant < ActiveRecord::Migration
  def up
    rename_column :orders, :subject_name, :applicant_name
    rename_column :orders, :subject_alias, :applicant_alias
    rename_column :orders, :subject_dob, :applicant_dob
    rename_column :orders, :subject_ssn, :applicant_ssn
    rename_column :orders, :subject_doi, :applicant_doi
  end

  def down
    rename_column :orders, :applicant_name, :subject_name
    rename_column :orders, :applicant_alias, :subject_alias
    rename_column :orders, :applicant_dob, :subject_dob
    rename_column :orders, :applicant_ssn, :subject_ssn
    rename_column :orders, :applicant_doi, :subject_doi
  end
end
