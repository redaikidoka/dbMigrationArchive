class AddSortingToRequestDocumentTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :request_document_tasks, :hivo_start, :date
    add_column :request_document_tasks, :needed_on, :date
    remove_column :request_document_tasks, :ready_to_finalize_at
  end
end
