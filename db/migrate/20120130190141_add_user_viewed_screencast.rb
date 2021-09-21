class AddUserViewedScreencast < ActiveRecord::Migration
  def up
    add_column :users, :viewed_screencast, :boolean, default: false, after: "email"
  end

  def down
    remove_column :users, :viewed_screencast
  end
end
