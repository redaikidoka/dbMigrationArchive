class AddRequestAdditionalSet < ActiveRecord::Migration
  def up
    add_column :requests, :additional_set, :boolean, default: false, after: :location_id
  end

  def down
    remove_column :requests, :additional_set
  end
end
