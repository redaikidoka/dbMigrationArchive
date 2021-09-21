class AddIndexesToAccount < ActiveRecord::Migration
  def change
    add_index :accounts, :id
    add_index :accounts, :das_account_name
  end
end
