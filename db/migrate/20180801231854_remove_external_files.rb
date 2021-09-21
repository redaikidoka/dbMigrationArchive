class RemoveExternalFiles < ActiveRecord::Migration[5.2]
  def change
    drop_table :external_files
  end
end
