class CreateCommunication < ActiveRecord::Migration[5.0]
  def change
    create_table :communications do |t|
      t.references :communication_template
      t.references :entity_address
      t.references :entity_contact
      t.references :user
      t.text :body
      t.jsonb :attachments, null: false, default: []

      t.timestamps null: false
    end
  end
end
