class AddLobSubmittedAtToDasNotices < ActiveRecord::Migration
  def change
    add_column :das_notices, :lob_submitted_at, :datetime
  end
end
