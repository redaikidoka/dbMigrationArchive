class ConvertAttachmentTypesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :attachment_types, :id, :bigint
  end
end
