class AddErrorsToNoticeImports < ActiveRecord::Migration
  def change
    add_column :das_notice_imports, :import_errors, :jsonb
  end
end
