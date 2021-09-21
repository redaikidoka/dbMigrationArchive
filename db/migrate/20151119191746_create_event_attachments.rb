class CreateEventAttachments < ActiveRecord::Migration
  def change
    create_table :event_attachments do |t|
      t.references :event, null: false
      t.string     :file
      t.timestamps
    end
  end
end
