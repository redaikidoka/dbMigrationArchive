class AddNotificationOptionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :notifications_on_create, :boolean, null: false, default: true
    add_column :users, :notifications_on_milestones, :boolean, null: false, default: false
    add_column :users, :notifications_on_delivery, :boolean, null: false, default: true
  end
end
