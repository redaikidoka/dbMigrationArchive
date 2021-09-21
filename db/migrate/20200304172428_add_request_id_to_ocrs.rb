class AddRequestIdToOcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ocrs, :request_id, :integer
    add_index :ocrs, :request_id
  end
end
