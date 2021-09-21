class AddDescriptionToDaisyClaimsAdministrators < ActiveRecord::Migration
  def change
    add_column :daisy_claims_administrators, :description, :text
  end
end
