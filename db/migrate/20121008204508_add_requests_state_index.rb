class AddRequestsStateIndex < ActiveRecord::Migration
  def up
    add_index :requests, :state
  end

  def down
    remove_index :requests, :state
  end
end
