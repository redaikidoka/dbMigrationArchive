class RemoveCommunicationAttachments < ActiveRecord::Migration[5.2]
  def change
    rename_table :communication_attachments, :dead_communication_attachments
  end
end
