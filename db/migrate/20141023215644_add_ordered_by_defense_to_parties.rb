class AddOrderedByDefenseToParties < ActiveRecord::Migration
  def change
    add_column :parties, :ordered_by_defense, :boolean, default: false
  end
end
