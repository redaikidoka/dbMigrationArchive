class AddParentIdToRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :requests, :parent, index: true, foreign_key: false
  end
end
