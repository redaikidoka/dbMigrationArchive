class BackfillDocumentCreateEvents < ActiveRecord::Migration[5.2]
  def change
    say_with_time "Backfill 'attachment_created' events on Documents" do
      Document.find_each do |document|
        # Skip if events already exist on this document
        next if document.events.any?

        Event.create(
          created_at: document.created_at,
          updated_at: document.updated_at,
          event_document: document,
          event_type: "#{document.parent.model_name.to_s.underscore}.attachment_created",
          item: document.parent,
          state: "archived",
          user: document.user,
          data: {
            note: document.filename,
          }
        )
      end
    end
  end
end
