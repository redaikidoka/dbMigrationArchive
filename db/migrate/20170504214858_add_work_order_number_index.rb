class AddWorkOrderNumberIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :work_orders, :number
  end
end
