class ChangeBucketKeyToFolderName < ActiveRecord::Migration
  def change
    remove_column :das_notice_imports, :bucket_key
    add_column :das_notice_imports, :folder_name, :string
  end
end
