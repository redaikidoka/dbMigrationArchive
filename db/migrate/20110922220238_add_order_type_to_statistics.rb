class AddOrderTypeToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :order_type, :string
  end
end
