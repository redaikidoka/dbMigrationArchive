class AddStripsFieldsToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :applicant_group, :string
    add_column :jet_submissions, :interpreter_name, :string
    add_column :jet_submissions, :interpreter_license_number, :string
    add_column :jet_submissions, :injury_body_part_free_text, :text

    add_column :jet_submissions, :temporary_disability_indemnity_paid, :string
    add_column :jet_submissions, :temporary_disability_paid_start, :date
    add_column :jet_submissions, :temporary_disability_paid_end, :date

    add_column :jet_submissions, :additional_temporary_disability_start, :date
    add_column :jet_submissions, :additional_temporary_disability_end, :date
    add_column :jet_submissions, :additional_temporary_disability_rate, :string
    add_column :jet_submissions, :additional_temporary_disability_paid, :string

    add_column :jet_submissions, :permanent_disability_indemnity_percent, :string
    add_column :jet_submissions, :permanent_disability_indemnity_rate, :string
    add_column :jet_submissions, :permanent_disability_indemnity_start, :date
    add_column :jet_submissions, :permanent_disability_indemnity_paid, :string
    add_column :jet_submissions, :life_pension, :boolean, default: false
    add_column :jet_submissions, :life_pension_amount, :string
    
    add_column :jet_submissions, :labor_adjustment_increase, :boolean, default: false
    add_column :jet_submissions, :labor_adjustment_increase_rate, :string
    add_column :jet_submissions, :labor_adjustment_increase_start, :date
    
    add_column :jet_submissions, :labor_adjustment_decrease, :boolean, default: false
    add_column :jet_submissions, :labor_adjustment_decrease_rate, :string
    add_column :jet_submissions, :labor_adjustment_decrease_start, :date

    add_column :jet_submissions, :labor_adjustment_not_applicable, :boolean

    add_column :jet_submissions, :informal_rating_case_number, :string

    add_column :jet_submissions, :need_for_medical_treatment, :boolean, default: false

    add_column :jet_submissions, :medical_legal_expenses_defendant, :text
    
    add_column :jet_submissions, :applicant_attorney_requires_fee, :string
    add_column :jet_submissions, :applicant_attorney_requires_fee_desc, :string
    
    add_column :jet_submissions, :liens_against_compensation, :boolean, default: false
    add_column :jet_submissions, :liens_against_compensation_desc, :text

    add_column :jet_submissions, :other_stipulation_description, :text

    add_column :jet_submissions, :applicant_signature_date, :date

    add_column :jet_submissions, :stips_for_award_document_author, :string
    add_column :jet_submissions, :stips_for_award_document_date, :date
  end
end
