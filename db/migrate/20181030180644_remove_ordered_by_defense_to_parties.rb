class RemoveOrderedByDefenseToParties < ActiveRecord::Migration[5.2]
  def change
    remove_column :parties, :ordered_by_defense, :boolean
  end
end
