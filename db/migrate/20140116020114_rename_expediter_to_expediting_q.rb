class RenameExpediterToExpeditingQ < ActiveRecord::Migration
  def up
    remove_index :expediters, column: :master_id
    execute "DROP INDEX expediters_gin_data"

    rename_table :expediters, :expediting_qs

    add_index :expediting_qs, :master_id
    execute "CREATE INDEX expediting_qs_gin_data ON expediting_qs USING GIN(data)"
  end

  def down
    remove_index :expediting_qs, column: :master_id
    execute "DROP INDEX expediting_qs_gin_data"

    rename_table :expediting_qs, :expediters

    add_index :expediters, :master_id
    execute "CREATE INDEX expediters_gin_data ON expediters USING GIN(data)"
  end
end
