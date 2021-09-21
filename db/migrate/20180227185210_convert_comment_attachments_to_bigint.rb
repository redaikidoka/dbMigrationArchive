class ConvertCommentAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :comment_attachments, :comment_id, :bigint
    change_column :comment_attachments, :upload_id, :bigint
    change_column :comment_attachments, :user_id, :bigint
  end
end
