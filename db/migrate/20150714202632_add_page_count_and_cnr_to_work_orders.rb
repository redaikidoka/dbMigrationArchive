class AddPageCountAndCnrToWorkOrders < ActiveRecord::Migration
  def change
    add_column :work_orders, :page_count, :integer
    add_column :work_orders, :cnr, :boolean
  end
end
