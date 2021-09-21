class AddDemandLetterToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :demand_letter, :string
  end
end
