class AddUseAppFiledForHoldingToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :use_app_filed_for_holding, :boolean, default: false
  end
end
