class ConvertCaseAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :case_attachments, :case_id, :bigint
    change_column :case_attachments, :user_id, :bigint
    change_column :case_attachments, :upload_id, :bigint
    change_column :case_attachments, :attachment_type_id, :bigint
  end
end
