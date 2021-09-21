class AddArchivedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :archived, :boolean, default: false
    User.where(account_id: nil, can_login: false).update_all(archived: true)
  end
end
