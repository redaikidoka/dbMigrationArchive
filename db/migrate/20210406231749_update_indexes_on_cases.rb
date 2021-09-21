class UpdateIndexesOnCases < ActiveRecord::Migration[5.2]
  def change
    remove_index :cases, :number
    add_index :cases, [:account_id, :number]
  end
end
