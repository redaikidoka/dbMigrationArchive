class AddIndexesToDasBuffers < ActiveRecord::Migration
  def change
    add_index :das_buffers, :id
    add_index :das_buffers, :firmname
    add_index :das_buffers, :activestatus
    add_index :das_buffers, :workordernumber
    add_index :das_buffers, :trackingnumber
    add_index :das_buffers, :completed
  end
end
