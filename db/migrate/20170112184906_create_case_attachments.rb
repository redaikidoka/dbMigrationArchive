class CreateCaseAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :case_attachments, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.references :case,         index: true, null: false
      t.references :user,            index: true, null: false
      t.references :upload,          index: true
      t.references :attachment_type, index: true
      t.string :state
      t.string :import_errors
      t.string :file
      t.string :filename

      t.timestamps null: false
    end
  end
end
