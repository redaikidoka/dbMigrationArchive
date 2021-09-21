class CreateExpediters < ActiveRecord::Migration
  def up
    create_table :expediters do |t|
      t.integer :master_id
      t.hstore  :data

      t.timestamps
    end

    add_index :expediters, :master_id
    execute "CREATE INDEX expediters_gin_data ON expediters USING GIN(data)"
  end

  def down
    remove_index :expediters, column: :master_id
    execute "DROP INDEX expediters_gin_data"
    drop_table :expediters
  end

end
