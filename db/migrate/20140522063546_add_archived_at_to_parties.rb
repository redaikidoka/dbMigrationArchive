class AddArchivedAtToParties < ActiveRecord::Migration
  def change
    add_column :parties, :archived_at, :datetime
  end
end
