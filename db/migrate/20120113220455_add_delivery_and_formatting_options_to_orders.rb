class AddDeliveryAndFormattingOptionsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :fax, :boolean, null: false, default: false, after: "paper"
    add_column :orders, :page_numbering, :boolean, null: false, default: false, after: "paper"
    add_column :orders, :indexing, :boolean, null: false, default: false, after: "paper"
  end
end
