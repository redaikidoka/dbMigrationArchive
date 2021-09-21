class UpdateZipcodeForEamsClaimsAdmins < ActiveRecord::Migration[5.2]
  def change
    change_column :eams_claims_admins, :zipcode, :string, null: false
    change_column :eams_representatives, :zipcode, :string, null: false
  end
end
