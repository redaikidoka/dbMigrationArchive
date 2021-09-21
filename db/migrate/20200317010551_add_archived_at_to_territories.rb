class AddArchivedAtToTerritories < ActiveRecord::Migration[5.2]
  def change
    add_column :territories, :archived_at, :datetime
  end
end
