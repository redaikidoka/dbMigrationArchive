class AddOrderAttachmentsS3RelayFields < ActiveRecord::Migration[5.0]
  def change
    # change primary key from int to uuid while maintaining legacy_id
    add_column :order_attachments, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    add_column :order_attachments, :legacy_id, :integer
    execute "UPDATE order_attachments SET legacy_id = id"
    remove_column :order_attachments, :id
    rename_column :order_attachments, :uuid, :id
    execute "ALTER TABLE order_attachments ADD PRIMARY KEY (id)"

    add_reference :order_attachments, :upload, index: true
    add_column :order_attachments, :state, :text
    add_column :order_attachments, :import_errors, :text
    add_column :order_attachments, :filename, :text
    rename_column :order_attachments, :uploaded_by_id, :user_id
  end
end
