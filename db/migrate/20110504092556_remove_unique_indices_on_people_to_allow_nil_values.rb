class RemoveUniqueIndicesOnPeopleToAllowNilValues < ActiveRecord::Migration
  def up
    remove_index :people, :name => "index_users_on_email"
    add_index :people, :email
    
    remove_index :people, :name => "index_users_on_reset_password_token"
    add_index :people, :reset_password_token
  end

  def down
    remove_index :people, :email
    add_index :people, :email, :unique => true, :name => "index_users_on_email"
    
    remove_index :people, :reset_password_token
    add_index :people, :reset_password_token, :unique => true, :name => "index_users_on_reset_password_token"
  end
end
