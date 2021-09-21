class ConvertSecureShareAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :secure_share_attachments, :secure_share_id, :bigint
    change_column :secure_share_attachments, :upload_id, :bigint
    change_column :secure_share_attachments, :user_id, :bigint
  end
end
