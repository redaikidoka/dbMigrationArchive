class AddParentToAdditionalSet < ActiveRecord::Migration
  def change
    add_column :additional_sets, :parent_id, :integer
  end
end
