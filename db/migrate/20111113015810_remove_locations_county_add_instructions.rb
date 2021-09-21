class RemoveLocationsCountyAddInstructions < ActiveRecord::Migration
  def up
    remove_column :locations, :county
    add_column :locations, :instructions, :text, :after => "fax"
  end

  def down
    remove_column :locations, :instructions
    add_column :locations, :county, :string, :after => "city"
  end
end
