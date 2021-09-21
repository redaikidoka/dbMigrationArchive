class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :type
      t.string :sub_type
      t.string :name
      t.string :alias
      t.string :business_contact_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.string :email
      t.string :fax
      t.string :ssn
      t.date :dob
      t.string :primary_language
      t.string :dependent_guardian
      t.timestamps
    end
  end
end
