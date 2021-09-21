class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :category
      t.integer :position
      t.text :file

      t.timestamps
    end
  end
end
