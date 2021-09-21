class UpdateSnapraterFields < ActiveRecord::Migration
  def change
    rename_column :snaprater_requests, :applicant_name, :claimant_name
    rename_column :snaprater_requests, :applicant_occupation, :claimant_occupation
    rename_column :snaprater_requests, :applicant_dob, :claimant_dob
    add_column :snaprater_requests, :claimant_doi, :date, after: "claimant_dob"
    rename_column :snaprater_requests, :defendant_name, :claimant_employer
    rename_column :snaprater_requests, :adjuster_name, :claim_examiner_name
    rename_column :snaprater_requests, :adjuster_email, :claim_examiner_email
    rename_column :snaprater_requests, :adjuster_phone, :claim_examiner_phone
    rename_column :snaprater_requests, :adjuster_fax, :claim_examiner_fax
  end
end
