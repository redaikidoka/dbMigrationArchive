class AddAccountManagers < ActiveRecord::Migration
  def up
    add_column :accounts, :secondary_territory_manager_id, :integer
    add_column :accounts, :secondary_account_manager_id, :integer
  end

  def down
    remove_column :accounts, :secondary_territory_manager_id
    remove_column :accounts, :secondary_account_manager_id
  end
end
