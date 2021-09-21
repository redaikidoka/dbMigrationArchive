class AddUserDefaultTerritoryId < ActiveRecord::Migration
  def up
    add_column :users, :default_territory_id, :integer, after: "email"
  end

  def down
    remove_column :users, :default_territory_id
  end
end
