class CreateJetCompanionCases < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_companion_cases do |t|
      t.references :jet_submission, index: true, null: false

      t.string :case_number
      t.date :injury_start_date
      t.date :injury_end_date
      t.string :injury_type_code
      t.string :injury_body_part_1
      t.string :injury_body_part_2
      t.string :injury_body_part_3
      t.string :injury_body_part_4
      t.string :injury_body_part_other

      t.timestamps
    end
  end
end
