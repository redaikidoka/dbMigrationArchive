class EncryptApplicantSsnForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:jetfile_encrypt_applicant_ssn"].invoke
  end
end
