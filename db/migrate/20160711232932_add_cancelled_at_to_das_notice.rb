class AddCancelledAtToDasNotice < ActiveRecord::Migration
  def change
    add_column :das_notices, :cancelled_at, :datetime
  end
end
