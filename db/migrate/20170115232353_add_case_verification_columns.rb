class AddCaseVerificationColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :verified_at, :datetime
    add_index :cases, :verified_at

    add_column :cases, :processed_by_id, :integer
    add_index :cases, :processed_by_id
  end
end
