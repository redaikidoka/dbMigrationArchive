class UpdateSignatureAttrsForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:fix_signatures_jet_submissions"].invoke
  end
end
