class UpdateAdditionalSetsStateMachineTimestamps < ActiveRecord::Migration[5.1]
  def change
  	add_column :additional_sets, :requested_at, :datetime
    add_column :additional_sets, :declined_at, :datetime
    add_column :additional_sets, :processing_at, :datetime

    add_column :additional_sets, :cancellation_reason, :text

    remove_column :additional_sets, :unshipped_at
    remove_column :additional_sets, :inactive_at
  end
end
