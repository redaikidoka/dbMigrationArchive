class AddTotalFullTurnAroundTimeToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :total_full_turn_around_time, :integer
  end
end
