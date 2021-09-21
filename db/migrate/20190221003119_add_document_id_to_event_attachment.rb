class AddDocumentIdToEventAttachment < ActiveRecord::Migration[5.2]
  def change
    add_column :event_attachments, :document_id, :uuid
  end
end
