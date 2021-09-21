class ConvertNoteTemplatesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :note_templates, :id, :bigint
  end
end
