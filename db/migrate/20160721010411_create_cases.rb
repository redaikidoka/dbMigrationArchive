class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :number, null: false
      t.integer :ar_clerk_id
      t.string :applicant_name

      t.timestamps
    end

    add_index :cases, :number, unique: true
  end
end
