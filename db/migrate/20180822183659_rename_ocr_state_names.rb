class RenameOcrStateNames < ActiveRecord::Migration[5.2]
  def up
    rename_column :ocrs, :import_started_at, :processing_at
    rename_column :ocrs, :imported_at, :completed_at
    rename_column :ocrs, :failed_import_at, :failed_at
  end

  def down
    rename_column :ocrs, :processing_at, :import_started_at
    rename_column :ocrs, :completed_at, :imported_at
    rename_column :ocrs, :failed_at, :failed_import_at
  end
end
