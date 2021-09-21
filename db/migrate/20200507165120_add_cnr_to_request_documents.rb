class AddCnrToRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :cnr_at, :datetime
  end
end
