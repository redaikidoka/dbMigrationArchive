class AddSupNotificationFlagToRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :supplemental_notification_sent, :boolean, default: false
  end
end
