class AddDasNumberToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :das_number, :integer
  end
end
