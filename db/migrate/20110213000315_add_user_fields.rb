class AddUserFields < ActiveRecord::Migration
  def up
    add_column :users, :title, :string
    add_column :users, :phone, :string
    add_column :users, :time_zone, :string, :default => 'Pacific Time (US & Canada)'
  end

  def down
    remove_column :users, :time_zone
    remove_column :users, :phone
    remove_column :users, :title
  end
end