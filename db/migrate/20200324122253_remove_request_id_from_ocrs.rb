class RemoveRequestIdFromOcrs < ActiveRecord::Migration[5.2]
  def change
    remove_column :ocrs, :request_id
  end
end
