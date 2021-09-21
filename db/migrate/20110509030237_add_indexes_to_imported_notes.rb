class AddIndexesToImportedNotes < ActiveRecord::Migration
  def change
    add_index :imported_notes, :id
    add_index :imported_notes, :imported_order_id
    add_index :imported_notes, :noted_at
  end
end
