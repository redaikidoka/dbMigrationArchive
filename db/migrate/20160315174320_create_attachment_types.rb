class CreateAttachmentTypes < ActiveRecord::Migration
  def change
    create_table :attachment_types do |t|
      t.text :name
      t.boolean :requires_objection_type, null: false, default: false
      t.timestamps null: false
    end
  end
end
