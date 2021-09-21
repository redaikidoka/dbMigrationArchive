class CreateExternalFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :external_files do |t|
      t.references :additional_set
      t.text :file
      t.timestamps
    end
  end
end
