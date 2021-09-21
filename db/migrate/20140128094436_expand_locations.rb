class ExpandLocations < ActiveRecord::Migration
  def up
    add_column :locations, :active, :boolean, default: true, null: false
    add_column :locations, :imported_at, :datetime

    Location.update_all(active: true)

    Location::NAMES_TO_ARCHIVE.each do |term|
      Location.where("name ILIKE '%#{term}%'").find_each(batch_size: 50) do |l|
        l.update_attribute(:active, false)
      end
    end
  end

  def down
    remove_column :locations, :imported_at
    remove_column :locations, :active
  end
end
