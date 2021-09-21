class RenamePeopleToUsers < ActiveRecord::Migration
  def up
    remove_column :people, :type
    rename_table :people, :users
  end

  def down
    add_column :users, :type, :string
    rename_table :users, :people
  end
end
