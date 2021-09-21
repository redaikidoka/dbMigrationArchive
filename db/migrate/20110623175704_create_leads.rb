class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.text :comments

      t.timestamps
    end

  end
end
