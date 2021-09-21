class CreateDasOrderStatuses < ActiveRecord::Migration
  def change
    create_table :das_order_statuses do |t|
      t.text :expeditor_notes
      t.string :person_served
      t.string :date_delivered
      t.string :date_billed
      t.string :ref_lister
      t.string :location_of_records
      t.string :invoice_number
      t.string :date_served
      t.string :date_copied_picked_up
      
      

      t.timestamps
    end

  end
end
