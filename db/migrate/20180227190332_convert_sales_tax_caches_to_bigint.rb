class ConvertSalesTaxCachesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :sales_tax_caches, :id, :bigint
  end
end
