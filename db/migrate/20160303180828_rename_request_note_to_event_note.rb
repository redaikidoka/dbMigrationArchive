class RenameRequestNoteToEventNote < ActiveRecord::Migration
  def change
    rename_table :request_notes, :event_notes
    add_reference :event_notes, :origin, polymorphic: true
    remove_column :event_notes, :request_id
  end
end
