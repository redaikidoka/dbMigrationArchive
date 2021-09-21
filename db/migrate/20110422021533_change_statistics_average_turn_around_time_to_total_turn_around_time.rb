class ChangeStatisticsAverageTurnAroundTimeToTotalTurnAroundTime < ActiveRecord::Migration
  def up
    rename_column :statistics, :average_turn_around_time, :total_turn_around_time
  end

  def down
    rename_column :statistics, :total_turn_around_time, :average_turn_around_time
  end
end
