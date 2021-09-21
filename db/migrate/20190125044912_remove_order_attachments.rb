class RemoveOrderAttachments < ActiveRecord::Migration[5.2]
  def change
    rename_table :order_attachments, :dead_order_attachments
  end
end
