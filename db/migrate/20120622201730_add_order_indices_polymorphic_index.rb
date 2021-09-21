class AddOrderIndicesPolymorphicIndex < ActiveRecord::Migration
  def up
    add_index :order_indices, [:indexable_type, :indexable_id], name: "order_indices_polymorphic"
  end

  def down
    remove_index :order_indices, name: "order_indices_polymorphic"
  end
end
