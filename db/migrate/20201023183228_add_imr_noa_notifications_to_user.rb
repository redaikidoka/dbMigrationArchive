class AddImrNoaNotificationsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :due_imr_noa_notifications, :boolean
  end
end
