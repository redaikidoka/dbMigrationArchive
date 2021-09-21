class AddSbrReasonArchive < ActiveRecord::Migration
  def change
    add_column :sbr_reasons, :archived_at, :datetime
  end
end
