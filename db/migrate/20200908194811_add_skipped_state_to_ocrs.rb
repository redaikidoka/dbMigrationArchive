class AddSkippedStateToOcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ocrs, :skipped_at, :datetime
  end
end
