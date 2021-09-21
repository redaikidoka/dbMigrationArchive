class ConvertDasBuffersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :das_buffers, :id, :bigint
    # change_column :das_buffers, :trackingnumber, :bigint
    # change_column :das_buffers, :workordernumber, :bigint
  end
end
