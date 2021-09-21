class ConvertPreorderAttachmentsToBigint < ActiveRecord::Migration[5.1]
  def up
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # change_column :preorder_attachments, :preorder_id, :bigint
    # change_column :preorder_attachments, :user_id, :bigint
    # change_column :preorder_attachments, :upload_id, :bigint
  end
end
