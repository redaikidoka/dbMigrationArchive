class ConvertDelayedJobsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :delayed_jobs, :id, :bigint
  end
end
