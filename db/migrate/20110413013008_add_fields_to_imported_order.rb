class AddFieldsToImportedOrder < ActiveRecord::Migration
  def up
    remove_column :imported_orders, :expeditor_notes
    rename_column :imported_orders, :location_of_records, :records_location_name
    add_column    :imported_orders, :cd_required, :boolean
    add_column    :imported_orders, :deliver_to, :string
    add_column    :imported_orders, :ship_to, :string
    add_column    :imported_orders, :client_name, :string
    add_column    :imported_orders, :record_types, :string
    add_column    :imported_orders, :case_information, :string
    add_column    :imported_orders, :date_received, :date
    add_column    :imported_orders, :date_entered, :date
    add_column    :imported_orders, :date_ready, :date
    add_column    :imported_orders, :applicant_aka, :string
    add_column    :imported_orders, :applicant_dob, :string
    add_column    :imported_orders, :applicant_ssn, :string
    add_column    :imported_orders, :records_location_phone, :string
    add_column    :imported_orders, :records_location_address, :string
    add_column    :imported_orders, :records_location_city_state_zip, :string
    add_column    :imported_orders, :records_location_department, :string
    add_column    :imported_orders, :active, :boolean
  end
  
  def down
    add_column    :imported_orders, :expeditor_notes, :text
    rename_column :imported_orders, :records_location_name, :location_of_records
    remove_column :imported_orders, :cd_required
    remove_column :imported_orders, :deliver_to
    remove_column :imported_orders, :ship_to
    remove_column :imported_orders, :client_name
    remove_column :imported_orders, :record_types
    remove_column :imported_orders, :case_information
    remove_column :imported_orders, :date_received
    remove_column :imported_orders, :date_entered
    remove_column :imported_orders, :date_ready
    remove_column :imported_orders, :applicant_aka
    remove_column :imported_orders, :applicant_dob
    remove_column :imported_orders, :applicant_ssn
    remove_column :imported_orders, :records_location_phone
    remove_column :imported_orders, :records_location_address
    remove_column :imported_orders, :records_location_city_state_zip
    remove_column :imported_orders, :records_location_department
    remove_column :imported_orders, :active
  end

end
