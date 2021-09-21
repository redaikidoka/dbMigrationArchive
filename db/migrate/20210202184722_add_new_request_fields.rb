class AddNewRequestFields < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :request_type, :string
    add_column :requests, :needed_by, :date
    add_column :requests, :needed_by_reason, :string
  end
end
