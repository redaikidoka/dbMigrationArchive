class CreatePersonBaseClassToUser < ActiveRecord::Migration
  def up
    add_column :users, :type, :string
    User.reset_column_information
    User.update_all(:type => 'User')
    
    rename_table :users, :people
    add_index :people, :type
  end

  def down
    remove_index :people, :type
    rename_table :people, :users
    remove_column :users, :type
  end
end
