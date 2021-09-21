class ConvertPriceListsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :price_lists, :id, :bigint
  end
end
