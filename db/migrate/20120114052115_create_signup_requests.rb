class CreateSignupRequests < ActiveRecord::Migration
  def change
    create_table :signup_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :firm_name
      t.string :eams_number
      t.string :email
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.timestamps
    end
  end
end
