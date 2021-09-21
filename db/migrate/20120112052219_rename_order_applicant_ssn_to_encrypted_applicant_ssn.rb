class RenameOrderApplicantSsnToEncryptedApplicantSsn < ActiveRecord::Migration
  def change
    rename_column :orders, :applicant_ssn, :encrypted_applicant_ssn
  end
end
