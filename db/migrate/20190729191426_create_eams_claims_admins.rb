class CreateEamsClaimsAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :eams_claims_admins do |t|
      t.integer :eams_ref, null: false
      t.string :name, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zipcode, null: false
      t.string :phone
      t.string :dwc_service_method
      t.datetime :eams_updated_at
      t.boolean :archived, default: false
      
      t.timestamps
    end
  end
end
