class RenameEntitySelectionRequestId < ActiveRecord::Migration
  def change
    remove_index :entity_selections, :request_id
    rename_column :entity_selections, :request_id, :associable_id
    add_column :entity_selections, :associable_type, :string, after: "id"
    add_index :entity_selections, [:associable_type, :associable_id]
  end
end
