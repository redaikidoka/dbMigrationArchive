class AddCaseIndexes < ActiveRecord::Migration[5.2]
  def change
    add_index :cases, :status
    add_index :cases, :last_request_at
  end
end
