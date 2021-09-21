class CreateDocumentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :documents, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.references :parent,   null: false, polymorphic: true, index: true, type: :bigint
      t.references :attachment_type
      t.references :objection_type
      t.references :user, index: true, null: false
      t.jsonb  :metadata

      t.timestamps
    end
  end
end
