class AddEamsFieldsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :account_id, :integer
    add_column :cases, :case_type, :string
    add_column :cases, :service_type, :string
    add_column :cases, :case_location, :string
    add_column :cases, :attorney_subbed_out, :boolean, default: false
    add_column :cases, :eams_opposing_parties, :jsonb, default: "{}"
    add_column :cases, :eams_claims_administrators, :jsonb, default: "{}"
    add_column :cases, :eams_employers, :jsonb, default: "{}"
    add_column :cases, :eams_locked_fields, :text, array: true, default: []
    add_column :cases, :eams_import, :boolean, default: false
  end
end
