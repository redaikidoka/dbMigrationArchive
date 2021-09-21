class CreateDocumentObjectionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :document_objection_types do |t|
      t.uuid :document_id, null: false, index: true
      t.references :objection_type, null: false, index: true
      t.timestamps null: false
    end
  end
end
