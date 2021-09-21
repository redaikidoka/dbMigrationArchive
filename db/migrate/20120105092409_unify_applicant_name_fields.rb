class UnifyApplicantNameFields < ActiveRecord::Migration
  def up
    rename_column :edex_requests, :worker_name, :applicant
    rename_column :snaprater_requests, :claimant_name, :applicant
    rename_column :wcirb_requests, :worker_name, :applicant
  end

  def down
    rename_column :edex_requests, :applicant, :worker_name
    rename_column :snaprater_requests, :applicant, :claimant_name
    rename_column :wcirb_requests, :applicant, :worker_name
  end
end
