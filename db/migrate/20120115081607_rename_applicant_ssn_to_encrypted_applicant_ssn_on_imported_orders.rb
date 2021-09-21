class RenameApplicantSsnToEncryptedApplicantSsnOnImportedOrders < ActiveRecord::Migration
  def change
    rename_column :imported_orders, :applicant_ssn, :encrypted_applicant_ssn
  end
end
