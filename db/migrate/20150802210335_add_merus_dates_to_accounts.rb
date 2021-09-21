class AddMerusDatesToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :merus_user_determination_at, :timestamp
    add_column :accounts, :merus_user_start_on, :date
    add_column :accounts, :merus_user_end_on, :date
  end
end
