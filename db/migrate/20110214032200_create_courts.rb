class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :district
      t.string :county
      t.string :phone
      t.string :fax
      t.text :web

      t.timestamps
    end

  end
end
