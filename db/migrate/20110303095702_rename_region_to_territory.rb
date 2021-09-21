class RenameRegionToTerritory < ActiveRecord::Migration
  def up
    rename_table :regions, :territories
    rename_column :accounts, :region_id, :territory_id
  end

  def down
    rename_table :territories, :regions
    rename_column :accounts, :territory_id, :region_id 
  end
end
