class RemoveEventAttachments < ActiveRecord::Migration[5.2]
  def change
    rename_table :event_attachments, :dead_event_attachments
  end
end
