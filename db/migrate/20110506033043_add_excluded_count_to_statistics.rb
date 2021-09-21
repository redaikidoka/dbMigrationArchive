class AddExcludedCountToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :excluded_count, :integer
  end
end
