class ConvertPartiesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :parties, :id, :bigint
    change_column :parties, :parent_id, :bigint
    change_column :parties, :order_id, :bigint
  end
end
