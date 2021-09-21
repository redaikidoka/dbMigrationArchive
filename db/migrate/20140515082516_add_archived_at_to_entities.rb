class AddArchivedAtToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :archived_at, :datetime
  end
end
