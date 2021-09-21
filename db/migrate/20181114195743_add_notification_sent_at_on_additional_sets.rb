class AddNotificationSentAtOnAdditionalSets < ActiveRecord::Migration[5.2]
  def change
    add_column :additional_sets, :notifications_sent_at, :datetime
  end
end
