class AddDocumentData < ActiveRecord::Migration[5.2]
  def change
    change_column_default :documents, :metadata, {}
    Document.where(metadata: nil).update_all(metadata: {})
    change_column_null :documents, :metadata, false
  end
end
