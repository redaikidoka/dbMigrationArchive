class CreateDocumentSort < ActiveRecord::Migration[5.2]
  def change
    create_table :document_sorts do |t|
      t.string :parent_type, index: true
      t.bigint :parent_id, index: true
      t.uuid :document_ids, array: true, default: []

      t.timestamps null: false
    end
  end
end
