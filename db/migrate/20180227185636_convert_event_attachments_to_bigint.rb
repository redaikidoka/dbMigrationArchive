class ConvertEventAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :event_attachments, :id, :bigint
    change_column :event_attachments, :event_id, :bigint
  end
end
