class ConvertAttachmentObjectionTypesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :attachment_objection_types, :id, :bigint
    change_column :attachment_objection_types, :objection_type_id, :bigint
  end
end
