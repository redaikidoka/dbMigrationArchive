class AddSkippedToRequestDocumentTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :request_document_tasks, :skipped_at, :datetime
  end
end
