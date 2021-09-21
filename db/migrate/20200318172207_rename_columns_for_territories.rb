class RenameColumnsForTerritories < ActiveRecord::Migration[5.2]
  def change
    rename_column :territories, :primary_account_manager_id, :account_manager_id
    rename_column :territories, :primary_territory_manager_id, :business_development_manager_id
    rename_column :territories, :regional_sales_manager_id, :sales_support_specialist_id
  end
end
