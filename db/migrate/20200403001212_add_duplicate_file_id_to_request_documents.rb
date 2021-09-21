class AddDuplicateFileIdToRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :duplicate_document_id, :integer
    add_index :request_documents, :duplicate_document_id
  end
end
