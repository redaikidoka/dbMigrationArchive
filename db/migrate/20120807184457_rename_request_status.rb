class RenameRequestStatus < ActiveRecord::Migration
  def up
    rename_column :requests, :status, :state
  end

  def down
    rename_column :requests, :state, :status
  end
end
