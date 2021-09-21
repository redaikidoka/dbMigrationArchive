class AddOrderAttachmentUploadedById < ActiveRecord::Migration
  def up
    add_column :order_attachments, :uploaded_by_id, :integer, after: "order_id"
  end

  def down
    remove_column :order_attachments, :uploaded_by_id
  end
end
