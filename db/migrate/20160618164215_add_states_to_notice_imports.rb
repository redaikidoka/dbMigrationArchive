class AddStatesToNoticeImports < ActiveRecord::Migration
  def change
    add_column :das_notice_imports, :processing_at, :datetime
    add_column :das_notice_imports, :started_at, :datetime
    add_column :das_notice_imports, :cancelled_at, :datetime
  end
end
