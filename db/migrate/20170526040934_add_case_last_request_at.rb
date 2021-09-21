class AddCaseLastRequestAt < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :last_request_at, :datetime, index: true
  end
end
