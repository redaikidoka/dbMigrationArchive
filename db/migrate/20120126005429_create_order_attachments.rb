class CreateOrderAttachments < ActiveRecord::Migration
  def change
    create_table :order_attachments do |t|
      t.integer :order_id
      t.string :file

      t.timestamps
    end
  end
end
