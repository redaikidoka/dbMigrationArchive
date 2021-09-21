class CreateCarrierDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :carrier_details do |t|
      t.references :case, index: true

      t.string :street
      t.string :city
      t.string :name
      t.string :state
      t.string :zip

      t.string :claim_number
      t.string :adjuster
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps
    end
  end
end
