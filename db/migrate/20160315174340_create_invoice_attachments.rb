class CreateInvoiceAttachments < ActiveRecord::Migration
  def change
    create_table :invoice_attachments, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.references :invoice,         index: true, null: false
      t.references :user,            index: true, null: false
      t.references :upload,          index: true
      t.references :attachment_type, index: true
      t.references :objection_type,  index: true
      t.string :state
      t.string :import_errors
      t.string :file
      t.string :filename

      t.timestamps null: false
    end
  end
end
