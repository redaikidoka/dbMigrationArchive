class AddSentAtToSbrSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :sbr_submissions, :sent_at, :datetime
  end
end
