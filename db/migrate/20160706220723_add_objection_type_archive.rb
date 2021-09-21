class AddObjectionTypeArchive < ActiveRecord::Migration
  def up
    add_column :objection_types, :archived, :boolean, default: false
    add_index :objection_types, :archived
    ObjectionType.update_all(archived: false)
    change_column_null :objection_types, :archived, false
  end

  def down
    remove_index :objection_types, :archived
    remove_column :objection_types, :archived
  end
end
