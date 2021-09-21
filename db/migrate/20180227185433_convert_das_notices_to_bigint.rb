class ConvertDasNoticesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :das_notices, :id, :bigint
    change_column :das_notices, :das_notice_import_id, :bigint
    change_column :das_notices, :das_address_id, :bigint
    change_column :das_notices, :das_client_profile_id, :bigint
  end
end
