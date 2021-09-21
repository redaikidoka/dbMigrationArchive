class AddStatisticClassToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :statistic_class, :string
  end
end
