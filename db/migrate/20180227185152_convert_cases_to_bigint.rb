class ConvertCasesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :cases, :id, :bigint
    change_column :cases, :ar_clerk_id, :bigint
    change_column :cases, :venue_id, :bigint
    change_column :cases, :processed_by_id, :bigint
  end
end
