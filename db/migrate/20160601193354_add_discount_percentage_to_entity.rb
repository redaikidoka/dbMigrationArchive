class AddDiscountPercentageToEntity < ActiveRecord::Migration
  def change
    add_column :entities, :discount_percentage, :integer, default: 0, null: false
  end
end
