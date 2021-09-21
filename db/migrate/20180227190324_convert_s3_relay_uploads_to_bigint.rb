class ConvertS3RelayUploadsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :s3_relay_uploads, :id, :bigint
    change_column :s3_relay_uploads, :user_id, :bigint
    change_column :s3_relay_uploads, :parent_id, :bigint
  end
end
