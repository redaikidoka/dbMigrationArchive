class RenameInvalidForRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    rename_column :request_documents, :invalid_at, :invalid_file_at
  end
end
