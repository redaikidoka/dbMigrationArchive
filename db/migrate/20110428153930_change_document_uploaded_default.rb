class ChangeDocumentUploadedDefault < ActiveRecord::Migration
  def up
    change_column :imported_orders, :document_uploaded, :boolean, :default => false
  end

  def down
    change_column :imported_orders, :document_uploaded, :boolean
  end
end
