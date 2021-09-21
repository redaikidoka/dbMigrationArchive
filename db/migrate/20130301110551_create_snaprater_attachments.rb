class CreateSnapraterAttachments < ActiveRecord::Migration
  def change
    create_table :snaprater_attachments do |t|
      t.integer :snaprater_request_id
      t.integer :uploaded_by_id
      t.string :file

      t.timestamps
    end

    add_index :snaprater_attachments, :snaprater_request_id
    add_index :snaprater_attachments, :uploaded_by_id
  end
end
