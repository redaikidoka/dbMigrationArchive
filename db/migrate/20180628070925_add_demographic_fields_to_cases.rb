class AddDemographicFieldsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :applicant_email, :string
    add_column :cases, :applicant_street, :string
    add_column :cases, :applicant_city, :string
    add_column :cases, :applicant_state, :string
    add_column :cases, :applicant_zip, :string
    add_column :cases, :applicant_phone_home, :string
    add_column :cases, :applicant_phone_mobile, :string
    add_column :cases, :applicant_primary_language, :string
  end
end
