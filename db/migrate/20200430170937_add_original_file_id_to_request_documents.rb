class AddOriginalFileIdToRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :original_file_id, :uuid
    add_index :request_documents, :original_file_id
  end
end
