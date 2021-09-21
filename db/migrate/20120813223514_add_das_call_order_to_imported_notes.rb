class AddDasCallOrderToImportedNotes < ActiveRecord::Migration
  def change
    add_column :imported_notes, :das_call_order, :integer, after: "imported_order_id"
    add_index  :imported_notes, :das_call_order
  end
end
