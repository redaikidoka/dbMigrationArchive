class CreateSecureShareAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :secure_share_attachments, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.references :secure_share, foreign_key: true
      t.references :upload,   index: true
      t.references :user,     index: true, null: false
      t.string :state
      t.string :import_errors
      t.string :file
      t.string :filename

      t.timestamps null: false
    end
  end
end
