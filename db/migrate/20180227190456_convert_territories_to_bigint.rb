class ConvertTerritoriesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :territories, :id, :bigint
    change_column :territories, :primary_territory_manager_id, :bigint
    change_column :territories, :primary_account_manager_id, :bigint
    change_column :territories, :regional_sales_manager_id, :bigint
  end
end
