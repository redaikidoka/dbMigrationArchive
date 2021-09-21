class AddOrderAttachmentTitle < ActiveRecord::Migration
  def up
    add_column :order_attachments, :title, :string, after: "order_id"
  end

  def down
    remove_column :order_attachments, :title
  end
end
