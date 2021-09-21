class RemoveOrderCounty < ActiveRecord::Migration
  def up
    remove_column :orders, :county
  end

  def down
    add_column :orders, :county, :string
  end
end
