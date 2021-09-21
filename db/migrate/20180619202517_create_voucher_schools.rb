class CreateVoucherSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :voucher_schools do |t|
      t.text :name
      t.text :street
      t.text :city
      t.text :state
      t.text :zip
      t.text :phone
      t.text :fax

      t.timestamps
    end
  end
end
