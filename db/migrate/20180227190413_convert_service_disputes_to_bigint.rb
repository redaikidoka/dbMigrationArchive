class ConvertServiceDisputesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :service_disputes, :id, :bigint
    change_column :service_disputes, :sbr_submission_id, :bigint
    change_column :service_disputes, :sbr_reason_id, :bigint
  end
end
