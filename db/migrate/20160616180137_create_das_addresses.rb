class CreateDasAddresses < ActiveRecord::Migration
  def change
    create_table :das_addresses do |t|

      t.string :state, null: false
      t.string :das_street_1, null: false
      t.string :das_street_2
      t.string :das_city, null: false
      t.string :das_state, null: false
      t.string :das_zip, null: false
      t.string :das_address_hash, null: false
      t.string :verified_street_1
      t.string :verified_street_2
      t.string :verified_city
      t.string :verified_state
      t.string :verified_zip
      t.string :verified_address_hash

      t.timestamps null: false
      t.datetime :pending_at, null: false
      t.datetime :verified_at
      t.datetime :unverified_at
      t.datetime :fault_at
    end

    add_reference :das_notices, :das_address, index: true, foreign_key: true

    remove_column :das_notices, :das_street_1
    remove_column :das_notices, :das_street_2
    remove_column :das_notices, :das_city
    remove_column :das_notices, :das_state
    remove_column :das_notices, :das_zip
    remove_column :das_notices, :das_address_hash
    remove_column :das_notices, :verified_street_1
    remove_column :das_notices, :verified_street_2
    remove_column :das_notices, :verified_city
    remove_column :das_notices, :verified_state
    remove_column :das_notices, :verified_zip
    remove_column :das_notices, :verified_address_hash
  end
end
