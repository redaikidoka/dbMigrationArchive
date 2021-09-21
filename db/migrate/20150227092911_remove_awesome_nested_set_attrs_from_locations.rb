class RemoveAwesomeNestedSetAttrsFromLocations < ActiveRecord::Migration
  def up
    remove_column :locations, :lft
    remove_column :locations, :rgt
    remove_column :locations, :depth
  end

  def down
    add_column :locations, :lft, :integer
    add_column :locations, :rgt, :integer
    add_column :locations, :depth, :integer
  end
end
