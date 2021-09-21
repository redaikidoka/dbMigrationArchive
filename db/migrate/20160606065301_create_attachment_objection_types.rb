class CreateAttachmentObjectionTypes < ActiveRecord::Migration
  def up
    create_table :attachment_objection_types do |t|
      t.uuid :invoice_attachment_id, null: false, index: true
      t.references :objection_type, null: false, index: true
      t.timestamps null: false
    end

    InvoiceAttachment.where.not(objection_type_id: nil).find_each do |attachment|
      objection_type = ObjectionType.find(attachment.objection_type_id)
      attachment.objection_types << objection_type
    end
  end

  def down
    drop_table :attachment_objection_types
  end
end
