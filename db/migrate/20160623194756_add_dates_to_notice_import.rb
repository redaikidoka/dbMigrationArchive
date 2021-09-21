class AddDatesToNoticeImport < ActiveRecord::Migration
  def change
    add_column :das_notice_imports, :dates, :jsonb
  end
end
