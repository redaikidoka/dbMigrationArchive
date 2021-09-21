class AddOrderSource < ActiveRecord::Migration
  def up
    add_column :orders, :source, :string, after: "venue_id"
  end

  def down
    remove_column :orders, :source
  end
end
