class UpdateCompletedForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:jetfile_update_completed_dor"].invoke
  end
end
