class ConvertStatisticsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :statistics, :id, :bigint
    change_column :statistics, :account_id, :bigint
  end
end
