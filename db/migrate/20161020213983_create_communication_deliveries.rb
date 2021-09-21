class CreateCommunicationDeliveries <  ActiveRecord::Migration[5.0]
  def change
    create_table :communication_deliveries do |t|
      t.references :communication, index: true
      t.string :delivery_type

      t.timestamps null: false
    end

    add_index :communication_deliveries, :delivery_type
  end
end
