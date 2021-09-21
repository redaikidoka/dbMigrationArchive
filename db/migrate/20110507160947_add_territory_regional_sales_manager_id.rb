class AddTerritoryRegionalSalesManagerId < ActiveRecord::Migration
  def up
    add_column :territories, :regional_sales_manager_id, :integer, :after => :primary_account_manager_id
  end

  def down
    remove_column :territories, :regional_sales_manager_id
  end
end
