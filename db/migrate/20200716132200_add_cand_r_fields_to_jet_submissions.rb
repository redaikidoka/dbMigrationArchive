class AddCandRFieldsToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :temporary_disability_indemnity_rate, :string
    add_column :jet_submissions, :permanent_disability_indemnity_end, :date
    add_column :jet_submissions, :total_medical_bills_paid, :string
    add_column :jet_submissions, :total_unpaid_medical_bills_by, :string
    add_column :jet_submissions, :settlement_amount, :string
    add_column :jet_submissions, :requested_app_attornery_fee, :string
    add_column :jet_submissions, :permanent_disability_advances_through, :date
    add_column :jet_submissions, :permanent_disability_advances_amount, :string
    add_column :jet_submissions, :temp_indemnity_over_payment_amount, :string
    add_column :jet_submissions, :leaving_balance_of, :string
    add_column :jet_submissions, :liens_not_mentioned, :text
    add_column :jet_submissions, :payable_amount_1, :string
    add_column :jet_submissions, :payable_to_1, :string
    add_column :jet_submissions, :payable_amount_2, :string
    add_column :jet_submissions, :payable_to_2, :string
    add_column :jet_submissions, :payable_amount_3, :string
    add_column :jet_submissions, :payable_to_3, :string
    add_column :jet_submissions, :payable_amount_4, :string
    add_column :jet_submissions, :payable_to_4, :string

    add_column :jet_submissions, :applicant_earnings, :boolean, default: false
    add_column :jet_submissions, :applicant_temporary_disability, :boolean, default: false
    add_column :jet_submissions, :applicant_jurisdiction, :boolean, default: false
    add_column :jet_submissions, :applicant_apportionment, :boolean, default: false
    add_column :jet_submissions, :applicant_employment, :boolean, default: false
    add_column :jet_submissions, :applicant_injuryaoe_ceo, :boolean, default: false
    add_column :jet_submissions, :applicant_serious_willful_misconduct, :boolean, default: false
    add_column :jet_submissions, :applicant_discrimination, :boolean, default: false
    add_column :jet_submissions, :applicant_statue_limitations, :boolean, default: false
    add_column :jet_submissions, :applicant_future_med_treatment, :boolean, default: false
    add_column :jet_submissions, :applicant_other, :boolean, default: false
    add_column :jet_submissions, :applicant_permanent_disablilty, :boolean, default: false
    add_column :jet_submissions, :applicant_self_treatment, :boolean, default: false
    add_column :jet_submissions, :applicant_vocational_benefits, :boolean, default: false
    add_column :jet_submissions, :defendant_earnings, :boolean, default: false
    add_column :jet_submissions, :defendant_temporary_disability, :boolean, default: false
    add_column :jet_submissions, :defendant_jurisdiction, :boolean, default: false
    add_column :jet_submissions, :defendant_apportionment, :boolean, default: false
    add_column :jet_submissions, :defendant_employment, :boolean, default: false
    add_column :jet_submissions, :defendant_injuryaoe_ceo, :boolean, default: false
    add_column :jet_submissions, :defendant_serious_willful_misconduct, :boolean, default: false
    add_column :jet_submissions, :defendant_discrimination, :boolean, default: false
    add_column :jet_submissions, :defendant_statue_limitations, :boolean, default: false
    add_column :jet_submissions, :defendant_future_med_treatment, :boolean, default: false
    add_column :jet_submissions, :defendant_other, :boolean, default: false
    add_column :jet_submissions, :defendant_permanent_disablilty, :boolean, default: false
    add_column :jet_submissions, :defendant_self_treatment, :boolean, default: false
    add_column :jet_submissions, :defendant_vocational_benefits, :boolean, default: false
    
    add_column :jet_submissions, :defendant_applicant_other_desc, :string
    add_column :jet_submissions, :defendant_applicant_disablilty_desc, :string
    add_column :jet_submissions, :accrued_claims_comments, :string
  end
end
