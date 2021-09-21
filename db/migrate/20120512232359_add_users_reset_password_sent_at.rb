class AddUsersResetPasswordSentAt < ActiveRecord::Migration
  def up
    add_column :users, :reset_password_sent_at, :datetime, after: "updated_at"
  end

  def down
    remove_column :users, :reset_password_sent_at
  end
end
