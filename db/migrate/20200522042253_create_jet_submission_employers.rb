class CreateJetSubmissionEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_submission_employers do |t|
      t.references :jet_submission, index: true, null: false

      # Employer
      t.string :employer_street
      t.string :employer_insurance_status
      t.string :employer_city
      t.string :employer_name
      t.string :employer_state
      t.string :employer_zip

      # Insurance Carrier
      t.string :insurance_carrier_name
      t.string :insurance_carrier_address
      t.string :insurance_carrier_city
      t.string :insurance_carrier_state
      t.string :insurance_carrier_zip

      # Claims Administrator
      t.string :claims_administrator_name
      t.string :claims_administrator_street
      t.string :claims_administrator_city
      t.string :claims_administrator_state
      t.string :claims_administrator_zip

      t.timestamps
    end
  end
end
