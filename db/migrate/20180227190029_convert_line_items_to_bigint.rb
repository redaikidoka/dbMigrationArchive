class ConvertLineItemsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :line_items, :id, :bigint
    change_column :line_items, :invoice_id, :bigint
    change_column :line_items, :item_id, :bigint
  end
end
