class EncryptIntakeSsn < ActiveRecord::Migration
  def up
    rename_column :intakes, :applicant_ssn, :old_applicant_ssn
    add_column :intakes, :encrypted_applicant_ssn, :string, after: "applicant_aka"
    Intake.all.each { |i| i.update_attributes(applicant_ssn: i.old_applicant_ssn) }
    remove_column :intakes, :old_applicant_ssn
  end

  def down
    add_column :intakes, :old_applicant_ssn, :string, after: "applicant_aka"
    Intake.all.each { |i| i.update_attributes(old_applicant_ssn: i.applicant_ssn) }
    remove_column :intakes, :encrypted_applicant_ssn
    rename_column :intakes, :old_applicant_ssn, :applicant_ssn
  end
end
