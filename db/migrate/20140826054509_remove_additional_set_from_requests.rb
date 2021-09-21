class RemoveAdditionalSetFromRequests < ActiveRecord::Migration
  def up
    remove_column :requests, :additional_set
  end

  def down
    add_column :requests, :additional_set, :boolean, default: false
  end
end
