class CreateJetDefendantsAttorneys < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_defendants_attorneys do |t|
      t.references :jet_submission, index: true, null: false
      
      t.string :attorney_code
      t.string :first_name
      t.string :last_name
      t.string :law_firm_name
      t.string :law_firm_number
      t.string :law_firm_street
      t.string :law_firm_city
      t.string :law_firm_state
      t.string :law_firm_zip

      t.string :defense_attorney_signature
      t.date :dated

      t.timestamps
    end
  end
end
