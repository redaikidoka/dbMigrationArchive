class RemoveAccountStatus < ActiveRecord::Migration
  def up
    remove_column :accounts, :status
  end

  def down
    add_column :accounts, :status, :string
  end
end
