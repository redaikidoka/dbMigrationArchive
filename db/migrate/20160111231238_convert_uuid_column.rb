class ConvertUuidColumn < ActiveRecord::Migration
  def change
    enable_extension "uuid-ossp"

    tables_to_migrate = [
      :invoices,
      :items,
      :line_items,
      :parties,
      :price_lists,
      :requests,
      :work_orders
    ]

    tables_to_migrate.each do |tbl_name|
      rename_column tbl_name, :uuid, :uuid_old
      add_column    tbl_name, :uuid, :uuid, default: 'uuid_generate_v4()'
      tbl_name.to_s.classify.constantize.find_each do |row|
        row.update_column(:uuid, row.uuid_old)
      end
      remove_column tbl_name, :uuid_old
    end

    rename_column :s3_relay_uploads, :uuid, :uuid_old
    add_column :s3_relay_uploads, :uuid, :uuid, default: 'uuid_generate_v4()'
    S3Relay::Upload.find_each do |row|
      row.update_column(:uuid, row.uuid_old)
    end
    remove_column :s3_relay_uploads, :uuid_old

  end
end
