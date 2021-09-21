class AddAdditionalNoticeImportStates < ActiveRecord::Migration
  def up
    rename_column :das_notice_imports, :completed_at, :imported_at
    # Das::NoticeImport.where(state: "completed").update_all(state: "submitted")
    add_column :das_notice_imports, :submitted_at, :datetime
    add_column :das_notice_imports, :verified_at, :datetime
  end

  def down
    rename_column :das_notice_imports, :imported_at, :completed_at
    # Das::NoticeImport.where(state: "submitted").update_all(state: "completed")
    remove_column :das_notice_imports, :submitted_at
    remove_column :das_notice_imports, :verified_at
  end
end
