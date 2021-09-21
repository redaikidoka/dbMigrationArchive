class RenameInvalidFileAtToInValidAtOnRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    rename_column :request_documents, :invalid_file_at, :invalid_at
  end
end
