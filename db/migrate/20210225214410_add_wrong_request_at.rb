class AddWrongRequestAt < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :wrong_request_at, :timestamp
  end
end
