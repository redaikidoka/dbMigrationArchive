class RemoveDuplicateSnapraterApplicantField < ActiveRecord::Migration
  def up
    remove_column :snaprater_requests, :applicant_name
  end

  def down
    add_column :snaprater_requests, :applicant_name, after: "adjuster_phone"
  end
end
