class AddThresholdFieldsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :counts_caution, :integer
    add_column :accounts, :counts_warn, :integer
    add_column :accounts, :averages_caution, :integer
    add_column :accounts, :averages_warn, :integer
  end
end
