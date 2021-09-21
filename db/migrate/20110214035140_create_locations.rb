class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax

      t.timestamps
    end

  end
end
