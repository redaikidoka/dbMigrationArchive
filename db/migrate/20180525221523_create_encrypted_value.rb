class CreateEncryptedValue < ActiveRecord::Migration[5.1]
  def change
    create_table :encrypted_values do |t|
      t.text :encrypted_data
      t.text :encrypted_data_iv
      t.bigint :user_id
      t.timestamps
    end
  end
end
