class ConvertDasNoticeImportsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :das_notice_imports, :id, :bigint
  end
end
