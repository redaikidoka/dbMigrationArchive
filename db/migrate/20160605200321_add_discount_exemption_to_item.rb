class AddDiscountExemptionToItem < ActiveRecord::Migration
  def change
    add_column :items, :discountable, :boolean, default: true
  end
end
