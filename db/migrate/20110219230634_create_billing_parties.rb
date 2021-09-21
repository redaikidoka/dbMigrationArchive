class CreateBillingParties < ActiveRecord::Migration
  def change
    create_table :billing_parties do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :street
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end

  end
end
