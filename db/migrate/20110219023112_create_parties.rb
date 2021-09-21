class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :order_id
      t.string :type
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.string :fax
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.text :instructions
      t.string :bar_number
      t.string :adjuster
      t.string :insurer
      t.string :claim_number

      t.timestamps
    end

  end
end
