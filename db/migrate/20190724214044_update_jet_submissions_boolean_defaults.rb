class UpdateJetSubmissionsBooleanDefaults < ActiveRecord::Migration[5.2]
  def change
    change_column_default :jet_submissions, :injury_compensation_paid, nil
    change_column_default :jet_submissions, :injury_unemployment_or_disability_benefits, nil

    change_column_default :jet_submissions, :injury_medical_all_furnished_by_insurance_or_employer, nil
    change_column_default :jet_submissions, :injury_medical_cal_medi_paid, nil
    change_column_default :jet_submissions, :injury_medical_treament_received, nil

    change_column_default :jet_submissions, :applicant_represented, nil
  end
end
