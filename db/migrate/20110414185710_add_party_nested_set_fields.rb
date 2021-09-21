class AddPartyNestedSetFields < ActiveRecord::Migration
  def up
    add_column :parties, :parent_id, :integer, :after => :id
    add_column :parties, :lft, :integer, :after => :parent_id
    add_column :parties, :rgt, :integer, :after => :lft
    add_column :parties, :depth, :integer, :after => :rgt
    
    Party.rebuild!
  end

  def down
    remove_column :parties, :parent_id
    remove_column :parties, :lft
    remove_column :parties, :rgt
    remove_column :parties, :depth
  end
end