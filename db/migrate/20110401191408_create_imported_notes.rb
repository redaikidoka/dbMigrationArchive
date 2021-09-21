class CreateImportedNotes < ActiveRecord::Migration
  def change
    create_table :imported_notes do |t|
      t.integer :imported_order_id
      t.datetime :noted_at
      t.text :description
      t.string :name

      t.timestamps
    end

  end
end
