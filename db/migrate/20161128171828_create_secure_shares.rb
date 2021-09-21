class CreateSecureShares < ActiveRecord::Migration[5.0]
  def change
    create_table :secure_shares do |t|
      t.references :user, foreign_key: true
      t.references :entity_contact, foreign_key: true
      t.string :email
      t.string :code
      t.uuid :token
      t.datetime :expires_at

      t.timestamps
    end
  end
end
