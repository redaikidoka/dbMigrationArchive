class DropAccountsUsers < ActiveRecord::Migration
  def up
    drop_table :accounts_users
  end

  def down
    create_table :accounts_users, :id => false do |t|
      t.integer :account_id
      t.integer :user_id
    end
  end
end
