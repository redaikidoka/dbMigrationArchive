class RemoveAttachmentObjectionType < ActiveRecord::Migration[5.2]
  def change
    rename_table :attachment_objection_types, :dead_attachment_objection_types
  end
end
