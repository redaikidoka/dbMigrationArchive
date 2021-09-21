class AddNewIncompleteStateToRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :incomplete_at, :date
  end
end
