class ConvertImportOrderDasNumberToInt < ActiveRecord::Migration
  def up
    change_column :imported_orders, :das_number, :integer
  end

  def down
    change_column :imported_orders, :das_number, :string
  end
end
