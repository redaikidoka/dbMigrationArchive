class RemovePreorders < ActiveRecord::Migration[5.1]
  def change
    Event.where(item_type: "Preorder").delete_all

    remove_column :orders, :preorder_applicant_id

    drop_table :preorder_applicants
    drop_table :preorder_attachments
    drop_table :preorders
  end
end
