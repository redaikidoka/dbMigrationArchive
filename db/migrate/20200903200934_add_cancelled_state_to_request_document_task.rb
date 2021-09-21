class AddCancelledStateToRequestDocumentTask < ActiveRecord::Migration[5.2]
  def change
    add_column :request_document_tasks, :cancelled_at, :datetime
  end
end
