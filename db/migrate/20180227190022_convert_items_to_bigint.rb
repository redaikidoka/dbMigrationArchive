class ConvertItemsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :items, :id, :bigint
    change_column :items, :price_list_id, :bigint
  end
end
