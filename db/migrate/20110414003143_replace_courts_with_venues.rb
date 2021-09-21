class ReplaceCourtsWithVenues < ActiveRecord::Migration
  def up
    drop_table :courts
    
    create_table :venues do |t|
      t.string :venue_type
      t.string :name
      t.string :building
      t.string :street
      t.string :city
      t.string :county
      t.string :state
      t.string :zip

      t.timestamps
    end
    
    rename_column :orders, :court_id, :venue_id
  end

  def down
    drop_table :venues
    
    create_table :courts do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :county
      t.string :phone
      t.string :fax
      t.text :web

      t.timestamps
    end
    
    rename_column :orders, :venue_id, :court_id
  end
end
