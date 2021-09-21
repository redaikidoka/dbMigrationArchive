class RemoveAccountMerusDates < ActiveRecord::Migration[5.1]
  def change
    remove_column :accounts, :merus_user_start_on, :date
    remove_column :accounts, :merus_user_end_on, :date
    remove_column :accounts, :merus_user_determination_at, :timestamp
  end
end
