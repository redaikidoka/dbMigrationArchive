class CreateImportedOrders < ActiveRecord::Migration
  def change
    create_table :imported_orders do |t|
      t.integer :account_id
      t.string :applicant
      t.string :das_number
      t.string :case_number
      t.text :expeditor_notes
      t.string :person_served
      t.date :date_served
      t.date :date_billed
      t.date :date_delivered
      t.date :date_copied_retrieved
      t.string :location_of_records

      t.timestamps
    end

  end
end
