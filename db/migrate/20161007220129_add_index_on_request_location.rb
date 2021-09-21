class AddIndexOnRequestLocation < ActiveRecord::Migration
  def change
    add_index :requests, :location_id
  end
end
