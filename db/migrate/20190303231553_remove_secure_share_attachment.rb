class RemoveSecureShareAttachment < ActiveRecord::Migration[5.2]
  def change
    rename_table :secure_share_attachments, :dead_secure_share_attachments
  end
end
