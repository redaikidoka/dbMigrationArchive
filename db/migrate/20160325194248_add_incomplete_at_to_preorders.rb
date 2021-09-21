class AddIncompleteAtToPreorders < ActiveRecord::Migration
  def change
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # add_column :preorders, :incomplete_at, :datetime
  end
end
