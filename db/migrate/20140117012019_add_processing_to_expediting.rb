class AddProcessingToExpediting < ActiveRecord::Migration
  def up
    add_column :expediting_qs, :processed_by_id, :integer
    add_index :expediting_qs, :processed_by_id
    add_column :expediting_qs, :processed_at, :datetime
  end

  def down
    remove_index :expediting_qs, column: :processed_by_id
    remove_column :expediting_qs, :processed_by_id
    remove_column :expediting_qs, :processed_at
  end
end
