class AddInsuranceCarrierToCase < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_carriers do |t|
      t.references :case, index: true

      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.timestamps
    end
  end
end
