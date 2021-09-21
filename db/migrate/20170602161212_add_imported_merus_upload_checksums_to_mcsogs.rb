class AddImportedMerusUploadChecksumsToMcsogs < ActiveRecord::Migration[5.0]
  def change
    add_column :merus_copy_service_order_groups, :imported_merus_upload_checksums, :text, array: true, default: []
    remove_column :merus_copy_service_order_groups, :imported_merus_upload_ids
  end
end
