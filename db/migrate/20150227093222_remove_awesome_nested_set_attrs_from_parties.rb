class RemoveAwesomeNestedSetAttrsFromParties < ActiveRecord::Migration
  def up
    remove_column :parties, :lft
    remove_column :parties, :rgt
    remove_column :parties, :depth
  end

  def down
    add_column :parties, :lft, :integer
    add_column :parties, :rgt, :integer
    add_column :parties, :depth, :integer
  end
end
