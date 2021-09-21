class CreateCommunicationDeliveryGroup < ActiveRecord::Migration[5.1]
  def change
    create_table :communication_delivery_groups do |t|
      t.references :communication, foreign_key: true, null: false
      t.string :name

      t.timestamps null: false
    end
  end
end
