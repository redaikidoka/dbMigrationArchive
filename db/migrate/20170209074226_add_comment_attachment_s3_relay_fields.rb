class AddCommentAttachmentS3RelayFields < ActiveRecord::Migration[5.0]
  def change
    # change primary key from int to uuid
    add_column :comment_attachments, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    remove_column :comment_attachments, :id
    rename_column :comment_attachments, :uuid, :id
    execute "ALTER TABLE comment_attachments ADD PRIMARY KEY (id)"

    add_reference :comment_attachments, :upload, index: true
    add_reference :comment_attachments, :user, index: true
    add_column :comment_attachments, :state, :text
    add_column :comment_attachments, :import_errors, :text
    add_column :comment_attachments, :filename, :text
  end
end
