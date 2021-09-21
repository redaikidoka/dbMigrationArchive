class AddReReviewAtToRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :request_documents, :rereviewed_at, :date
  end
end
