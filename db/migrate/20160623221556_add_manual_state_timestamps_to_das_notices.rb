class AddManualStateTimestampsToDasNotices < ActiveRecord::Migration
  def change
    add_column :das_notices, :manual_pending_at, :datetime
    add_column :das_notices, :manual_submitted_at, :datetime
  end
end
