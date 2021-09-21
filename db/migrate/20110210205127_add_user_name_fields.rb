class AddUserNameFields < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, :after => :id
    add_column :users, :last_name, :string, :after => :first_name
  end

  def down
    remove_column :users, :last_name
    remove_column :users, :first_name
  end
end
