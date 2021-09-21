class RemoveEamsSuiteFromAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :eams_suite
  end
end
