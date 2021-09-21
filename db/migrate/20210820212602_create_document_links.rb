class CreateDocumentLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :document_links do |t|
      t.string :parent_type, index: true
      t.integer :parent_id, index: true

      t.timestamps
    end
  end
end
