class CreateCaseClients < ActiveRecord::Migration[5.2]
  def change
    create_table :case_clients do |t|
      t.references :case, index: true

      t.string :name
      t.string :alias
      t.date :dob
      t.string :ssn
      t.string :primary_language
      t.string :dependent_guardian

      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
