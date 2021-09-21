class CreateSbrReasons < ActiveRecord::Migration
  def change
    create_table :sbr_reasons do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
