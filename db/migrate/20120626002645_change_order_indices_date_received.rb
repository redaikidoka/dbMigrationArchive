class ChangeOrderIndicesDateReceived < ActiveRecord::Migration
  def up
    change_column :order_indices, :date_received, :datetime
  end

  def down
    change_column :order_indices, :date_received, :date
  end
end
