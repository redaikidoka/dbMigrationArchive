class AddRegionToTerritories < ActiveRecord::Migration
  def self.up
    add_column :territories, :region, :string

    Territory.find(144).update(region: "northern_california")
    Territory.find(145).update(region: "northern_california")
    Territory.find(146).update(region: "northern_california")
    Territory.find(147).update(region: "northern_california")
    Territory.find(148).update(region: "northern_california")
    Territory.find(155).update(region: "northern_california")
    Territory.find(156).update(region: "northern_california")
    Territory.find(157).update(region: "northern_california")
    Territory.find(158).update(region: "northern_california")
    Territory.find(160).update(region: "northern_california")
    Territory.find(161).update(region: "northern_california")
    Territory.find(162).update(region: "northern_california")

    Territory.find(150).update(region: "southern_california")
    Territory.find(151).update(region: "southern_california")
    Territory.find(152).update(region: "southern_california")
    Territory.find(153).update(region: "southern_california")
    Territory.find(154).update(region: "southern_california")

    change_column :territories, :region, :string, null: false
  end

  def self.down
    remove_column :territories, :region
  end
end
