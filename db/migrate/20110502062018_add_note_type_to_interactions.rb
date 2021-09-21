class AddNoteTypeToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :note_type, :string
  end
end
