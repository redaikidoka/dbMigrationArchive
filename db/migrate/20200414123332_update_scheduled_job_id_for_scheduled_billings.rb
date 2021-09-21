class UpdateScheduledJobIdForScheduledBillings < ActiveRecord::Migration[5.2]
  def up
    change_column :scheduled_billings, :scheduled_job_id, :string
    add_column :scheduled_billings, :last_job_error, :string
  end

  def down
    change_column :scheduled_billings, :scheduled_job_id, "integer USING CAST(scheduled_job_id AS integer)"
    remove_column :scheduled_billings, :last_job_error, :string
  end
end
