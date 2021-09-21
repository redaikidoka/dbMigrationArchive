class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.date        :start_date
      t.date        :end_date
      t.integer     :average_turn_around_time
      t.integer     :count
      t.string      :statistic_type
      t.integer     :account_id
      t.timestamps
    end

  end
end
