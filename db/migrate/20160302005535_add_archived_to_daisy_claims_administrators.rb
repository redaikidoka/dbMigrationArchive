class AddArchivedToDaisyClaimsAdministrators < ActiveRecord::Migration
  def change
    add_column :daisy_claims_administrators, :archived, :boolean, default: false
  end
end
