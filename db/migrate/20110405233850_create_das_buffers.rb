class CreateDasBuffers < ActiveRecord::Migration
  def change
    create_table :das_buffers do |t|
      t.integer :trackingnumber
      t.string :billeddate
      t.string :cdrequired
      t.string :firmname
      t.string :delivertoname
      t.string :recordslocation
      t.string :shipto
      t.string :clientname
      t.string :casenumber
      t.string :recordtypes
      t.string :caseinformation
      t.string :workordernumber

      t.timestamps
    end

  end
end
