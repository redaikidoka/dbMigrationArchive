class AddRequestIdToRequestDocumentTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :request_document_tasks, :request_id, :integer
    add_index :request_document_tasks, :request_id
  end
end
