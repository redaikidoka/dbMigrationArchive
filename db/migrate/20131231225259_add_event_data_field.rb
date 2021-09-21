class AddEventDataField < ActiveRecord::Migration
  def up
    add_column :events, :data, :hstore

    add_index :events, :created_at
    execute "CREATE INDEX events_gin_data ON events USING GIN(data)"
  end

  def down
    remove_index :events, column: :created_at
    execute "DROP INDEX events_gin_data"

    remove_column :events, :data
  end
end
