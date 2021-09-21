class ChangeThresholdsToReceivedOnAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :averages_caution
    remove_column :accounts, :averages_warn
  end

  def down
    add_column :accounts, :averages_caution, :integer
    add_column :accounts, :averages_warn, :integer
  end
end
