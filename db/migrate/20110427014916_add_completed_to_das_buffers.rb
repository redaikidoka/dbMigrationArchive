class AddCompletedToDasBuffers < ActiveRecord::Migration
  def change
    add_column :das_buffers, :completed, :boolean, :default => 0, :null => false
  end
end
