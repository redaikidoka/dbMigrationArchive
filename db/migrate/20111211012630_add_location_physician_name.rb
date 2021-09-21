class AddLocationPhysicianName < ActiveRecord::Migration
  def up
    add_column :locations, :physician, :string, after: "name"
  end

  def down
    remove_column :locations, :physician, :string
  end
end
