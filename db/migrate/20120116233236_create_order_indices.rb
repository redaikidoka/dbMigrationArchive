class CreateOrderIndices < ActiveRecord::Migration
  def change
    create_table :order_indices do |t|
      t.string  :applicant
      t.date    :date_received
      t.integer :indexable_id
      t.string  :indexable_type
      t.timestamps
    end
  end
end
