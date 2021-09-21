class AddDocumentUploadedFlag < ActiveRecord::Migration
  def change
    add_column :imported_orders, :document_uploaded, :boolean
  end
end
