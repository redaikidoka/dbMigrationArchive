class AddOrderDraftAt < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :draft_at, :datetime
  end
end
