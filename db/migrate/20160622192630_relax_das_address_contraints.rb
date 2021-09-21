class RelaxDasAddressContraints < ActiveRecord::Migration
  def change
    change_column :das_addresses, :das_street_1, :string, null: true
    change_column :das_addresses, :das_city, :string, null: true
    change_column :das_addresses, :das_state, :string, null: true
    change_column :das_addresses, :das_zip, :string, null: true
  end
end
