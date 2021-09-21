class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.date :due_on
      t.text :comments
      t.string :case_type
      t.string :case_number
      t.string :case_plaintiff
      t.string :case_defendant
      t.string :venue_name
      t.string :venue_street
      t.string :venue_city
      t.string :venue_state
      t.string :venue_zip
      t.string :applicant_name
      t.string :applicant_aka
      t.string :applicant_ssn
      t.string :applicant_dob
      t.string :applicant_doi
      t.string :firm_represents
      t.string :firm_name
      t.string :firm_attorney
      t.string :firm_bar
      t.string :firm_phone
      t.string :firm_fax
      t.string :firm_contact
      t.string :firm_email
      t.integer :firm_sets
      t.string :opposing_firm
      t.string :opposing_attorney
      t.string :opposing_bar
      t.string :opposing_phone
      t.string :opposing_fax
      t.integer :opposing_sets
      t.string :location_records
      t.string :location_name
      t.string :location_street
      t.string :location_city
      t.string :location_state
      t.string :location_zip
      t.text :location_instructions
      t.string :delivery_name
      t.string :delivery_street
      t.string :delivery_city
      t.string :delivery_state
      t.string :delivery_zip
      t.integer :delivery_sets
      t.string :billing_company
      t.string :billing_contact
      t.string :billing_street
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.string :billing_phone
      t.string :billing_fax
      t.string :billing_claim_number
      t.string :billing_insured

      t.timestamps
    end

  end
end
