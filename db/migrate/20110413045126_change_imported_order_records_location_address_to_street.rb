class ChangeImportedOrderRecordsLocationAddressToStreet < ActiveRecord::Migration
  def up
    rename_column :imported_orders, :records_location_address, :records_location_street
  end

  def down
    rename_column :imported_orders, :records_location_street, :records_location_address
  end
end
