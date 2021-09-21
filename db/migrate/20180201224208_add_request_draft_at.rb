class AddRequestDraftAt < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :draft_at, :datetime
  end
end
