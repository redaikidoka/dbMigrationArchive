class AddAccountTypeToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :account_type, :string, :default => 'client'

    add_column :accounts, :eams_reference_num, :integer
    add_index :accounts, :eams_reference_num, :unique => true
  end
end
