class AddLocationNestedSetFields < ActiveRecord::Migration
  def up
    add_column :locations, :parent_id, :integer, :after => :id
    add_column :locations, :lft, :integer, :after => :parent_id
    add_column :locations, :rgt, :integer, :after => :lft
    add_column :locations, :depth, :integer, :after => :rgt
    
    Location.rebuild!
  end

  def down
    remove_column :locations, :parent_id
    remove_column :locations, :lft
    remove_column :locations, :rgt
    remove_column :locations, :depth
  end
end
