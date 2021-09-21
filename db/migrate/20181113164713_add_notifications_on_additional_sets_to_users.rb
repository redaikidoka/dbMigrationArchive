class AddNotificationsOnAdditionalSetsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :notifications_on_additional_sets, :boolean, null: false, default: false
  end
end
