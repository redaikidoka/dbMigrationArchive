class ChangeRequestRecordTypesToText < ActiveRecord::Migration[5.2]
  def up
    change_column :requests, :record_types, :text, array: true
    change_column_default :requests, :record_types, "{}"
    add_index :requests, :record_types, using: :gin
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
