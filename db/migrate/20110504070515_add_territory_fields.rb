class AddTerritoryFields < ActiveRecord::Migration
  def up
    add_column :territories, :primary_territory_manager_id, :integer, :after => :id
    add_column :territories, :primary_account_manager_id, :integer, :after => :primary_territory_manager_id
  end

  def down
    remove_column :territories, :primary_account_manager_id
    remove_column :territories, :primary_territory_manager_id  
  end
end
