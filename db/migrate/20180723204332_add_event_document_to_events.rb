class AddEventDocumentToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference(:events, :event_document, null: true, index: true, type: :uuid)
  end
end
