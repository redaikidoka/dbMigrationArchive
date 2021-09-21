class AddIndicesToNotes < ActiveRecord::Migration
  def change
    add_index :notes, :id
    add_index :notes, :user_id
    add_index :notes, :account_id
    add_index :notes, :competitor_id
    add_index :notes, :person_id
  end
end
