class ConvertOrderAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :order_attachments, :order_id, :bigint
    change_column :order_attachments, :user_id, :bigint
    change_column :order_attachments, :legacy_id, :bigint
    change_column :order_attachments, :upload_id, :bigint
  end
end
