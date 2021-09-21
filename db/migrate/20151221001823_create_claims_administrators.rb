class CreateClaimsAdministrators < ActiveRecord::Migration
  def change
    create_table :claims_administrators do |t|
      t.integer :daisy_id, null: false
      t.string :name
      t.column :cached_attrs, :json

      t.timestamps
    end

    add_index :claims_administrators, :daisy_id, unique: true
  end
end
