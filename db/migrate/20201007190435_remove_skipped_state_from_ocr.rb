class RemoveSkippedStateFromOcr < ActiveRecord::Migration[5.2]
  def change
    remove_column :ocrs, :skipped_at
  end
end
