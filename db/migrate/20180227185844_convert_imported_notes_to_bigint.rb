class ConvertImportedNotesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :imported_notes, :id, :bigint
    change_column :imported_notes, :imported_order_id, :bigint
  end
end
