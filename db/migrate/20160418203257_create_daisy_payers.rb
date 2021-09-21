class CreateDaisyPayers < ActiveRecord::Migration
  def change
    create_table :daisy_payers do |t|
      t.integer :daisy_id, null: false
      t.references :daisy_claims_administrator, index: true, foreign_key: true
      t.text :name
      t.text :description
      t.boolean :main
      t.jsonb :cached_attrs
      t.timestamps null: false
    end
    add_index :daisy_payers, :daisy_id, unique: true
  end
end
