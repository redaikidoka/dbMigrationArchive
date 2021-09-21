class AddPracticeTypeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :practice_type, :string
    add_column :accounts, :practice_type_other, :string
  end
end
