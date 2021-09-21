class AddUserCanLogin < ActiveRecord::Migration
  
  SEEDED_USERS = User.where("email LIKE ? OR email LIKE ? OR email = ?", 
                            '%newleaders.com', '%geminiduplication.com', 'merus@fuery.com')
  
  def up
    add_column :users, :can_login, :boolean, :default => false, :after => :id
    User.reset_column_information
    SEEDED_USERS.map(&:activate!)
  end

  def down
    remove_column :users, :can_login
    SEEDED_USERS.map(&:deactivate!)
  end
end
