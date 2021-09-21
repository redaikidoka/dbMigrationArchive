class RemoveCommentAttachments < ActiveRecord::Migration[5.2]
  def change
    rename_table :comment_attachments, :dead_comment_attachments
  end
end
