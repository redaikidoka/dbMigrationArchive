class AddEamsNameToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :eams_name, :string
    add_index :accounts, :eams_name, :unique => true
  end
end
