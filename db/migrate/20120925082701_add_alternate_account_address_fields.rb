class AddAlternateAccountAddressFields < ActiveRecord::Migration
  def up
    rename_column :accounts, :street, :eams_street
    rename_column :accounts, :suite, :eams_suite
    change_column :accounts, :eams_suite, :string, after: "eams_street"
    rename_column :accounts, :city, :eams_city
    rename_column :accounts, :state, :eams_state
    rename_column :accounts, :zip, :eams_zip
    rename_column :accounts, :phone, :eams_phone
    rename_column :accounts, :fax, :alternate_fax
    add_column :accounts, :eams_updated_at, :datetime, after: "eams_phone"
    add_column :accounts, :alternate_street, :string, after: "eams_updated_at"
    add_column :accounts, :alternate_city, :string, after: "alternate_street"
    add_column :accounts, :alternate_state, :string, after: "alternate_city"
    add_column :accounts, :alternate_zip, :string, after: "alternate_state"
    add_column :accounts, :alternate_phone, :string, after: "alternate_zip"
    change_column :accounts, :alternate_fax, :string, after: "alternate_phone"
    add_column :accounts, :alternate_updated_at, :datetime, after: "alternate_fax"
    add_column :accounts, :alternate_updated_by_id, :integer, after: "alternate_updated_at"
  end

  def down
    remove_column :accounts, :alternate_updated_by_id
    remove_column :accounts, :alternate_updated_at
    remove_column :accounts, :alternate_phone
    remove_column :accounts, :alternate_zip
    remove_column :accounts, :alternate_state
    remove_column :accounts, :alternate_city
    remove_column :accounts, :alternate_street
    remove_column :accounts, :eams_updated_at
    rename_column :accounts, :alternate_fax, :fax
    rename_column :accounts, :eams_phone, :phone
    rename_column :accounts, :eams_zip, :zip
    rename_column :accounts, :eams_state, :state
    rename_column :accounts, :eams_city, :city
    rename_column :accounts, :eams_suite, :suite
    rename_column :accounts, :eams_street, :street

  end
end
