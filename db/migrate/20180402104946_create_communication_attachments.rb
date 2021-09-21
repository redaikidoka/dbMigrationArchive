class CreateCommunicationAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :communication_attachments, id: :uuid, primary_key: :id, default: "uuid_generate_v4()" do |t|
      t.references :communication
      t.string :file
      t.string :filename
      t.text :import_errors
      t.string :state
      t.references :upload
      t.references :user
      t.timestamps
    end
  end
end
