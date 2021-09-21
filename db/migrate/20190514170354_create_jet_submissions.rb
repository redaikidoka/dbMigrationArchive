class CreateJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_submissions do |t|
      t.string :aasm_state
      t.string :state_machine_timestamps
      t.references :user, index: true, null: false
      t.string :form_type
      t.date :filed_on
      t.string :jet_resubmit_number
      t.string :jet_response_message, array: true, default: []

      # Doctors
      t.string :doctor_names
      t.date :doctor_report_on

      # Declarant
      t.text :declarant_efforts
      t.string :declarant_name
      t.string :declarant_phone
      t.string :declarant_role
      t.string :declarant_street
      t.string :declarant_signature
      t.date :declarant_signed
      t.string :hearing_type

      # Actual Earnings
      t.string :applicant_earnings_rate
      t.string :applicant_earnings_frequency
      t.string :applicant_earnings_alt_rate
      t.string :applicant_earnings_alt_frequency
      t.string :applicant_work_hours_per_week

      # Applicant Attorney
      t.string :applicant_attorney_code
      t.string :applicant_attorney_law_firm_name
      t.string :applicant_attorney_law_firm_number
      t.string :applicant_attorney_law_firm_street
      t.string :applicant_attorney_law_firm_city
      t.string :applicant_attorney_law_firm_state
      t.string :applicant_attorney_law_firm_zip
      t.string :applicant_attorney_first_name
      t.string :applicant_attorney_last_name
      t.string :applicant_attorney_middle_initial

      # Body Part
      t.string :injury_body_part_1
      t.string :injury_body_part_2
      t.string :injury_body_part_3
      t.string :injury_body_part_4
      t.string :injury_body_part_other

      # Case Number
      t.string :case_number
      t.string :alt_case_number_1
      t.string :alt_case_number_2
      t.string :alt_case_number_3
      t.string :alt_case_number_4

      # Claims Administrator
      t.string :claims_administrator_name
      t.string :claims_administrator_street
      t.string :claims_administrator_city
      t.string :claims_administrator_state
      t.string :claims_administrator_zip

      # Compensation
      t.boolean :injury_compensation_paid, default: false
      t.string :injury_compensation_total_payment_amount
      t.string :injury_compensation_weekly_payment_amount
      t.date :injury_last_payment_on
      t.boolean :injury_unemployment_or_disability_benefits, default: false

      # Employer
      t.string :employer_street
      t.string :employer_insurance_status
      t.string :employer_city
      t.string :employer_name
      t.string :employer_state
      t.string :employer_zip

      # Injury Caused Disability
      t.date :injury_last_day_off_work_on
      t.date :injury_first_period_of_disability_start_on
      t.date :injury_first_period_of_disability_end_on
      t.date :injury_second_period_of_disability_start_on
      t.date :injury_second_period_of_disability_end_on

      # Injured Worker
      t.string :employee_address1
      t.string :employee_address2
      t.string :employee_city
      t.string :applicant_first_name
      t.string :applicant_last_name
      t.string :applicant_middle_initial
      t.string :employee_state
      t.string :employee_zip

      # Insurance Carrier
      t.string :insurance_carrier_name
      t.string :insurance_carrier_address
      t.string :insurance_carrier_city
      t.string :insurance_carrier_state
      t.string :insurance_carrier_zip

      # It Is Claimed That
      t.date :applicant_doi_end_on
      t.date :applicant_doi_start_on
      t.date :applicant_dob
      t.string :applicant_occupation
      t.string :injury_street
      t.string :injury_city
      t.string :injury_state
      t.string :injury_type_code
      t.string :injury_zip

      # Liability Disagreement
      t.boolean :liability_disagreement_temporary_disability_indemnity, default: false
      t.boolean :liability_disagreement_reimbursement_for_medical_expens, default: false
      t.boolean :liability_disagreement_medical_treatment, default: false
      t.boolean :liability_disagreement_compensation_at_proper_rate, default: false
      t.boolean :liability_disagreement_permanent_disability_indemnity, default: false
      t.boolean :liability_disagreement_rehabilitation, default: false
      t.boolean :liability_disagreement_supplemental_job_displacement, default: false
      t.boolean :liability_disagreement_other, default: false
      t.string :liability_disagreement_other_text
      t.boolean :liability_disagreement_compesation_due, default: false

      # Medical Treatment
      t.boolean :injury_medical_all_furnished_by_insurance_or_employer, default: false
      t.boolean :injury_medical_cal_medi_paid, default: false
      t.date :injury_medical_last_treatment_on
      t.string :injury_medical_other_treatment_provided_by_name
      t.boolean :injury_medical_treament_received, default: false
      t.string :injury_medical_unpaid_treatment_provider_name_1
      t.string :injury_medical_unpaid_treatment_provider_name_2

      # Other Applicant
      t.string :other_app_name
      t.string :other_app_address1
      t.string :other_app_address2
      t.string :other_app_city
      t.string :other_app_state
      t.string :other_app_zip
      t.string :other_app_claim_type

      # Principal Issues
      t.boolean :issue_compensation_rate, default: false
      t.boolean :issue_permanent_disability, default: false
      t.boolean :issue_employment, default: false
      t.boolean :issue_rehabilitation_sjdb, default: false
      t.boolean :issue_future_medical_treatment, default: false
      t.boolean :issue_temporary_disability, default: false
      t.boolean :issue_aoe_coe, default: false
      t.boolean :issue_self_procured_medical_treatment, default: false
      t.boolean :issue_discovery, default: false
      t.boolean :issue_other, default: false
      t.string :issue_other_comment_text

      # Signing
      t.string :applicant_attorney_signature
      t.string :applicant_signature
      t.string :signed_city
      t.date :signed_on

      # Various
      t.boolean :applicant_represented, default: false
      t.string :encrypted_applicant_ssn
      t.text :injury_occurred_description

      # Venue
      t.string :venue_location_code
      t.string :venue_office_code

      # Lien
      t.string :lien_reservation_number

      t.timestamps
    end
  end
end
