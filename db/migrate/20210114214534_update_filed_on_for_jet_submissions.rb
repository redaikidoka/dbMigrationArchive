class UpdateFiledOnForJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    change_column :jet_submissions, :filed_on, :datetime
  end
end
