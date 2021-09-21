class CreateSbrSubmissions < ActiveRecord::Migration
  def change
    create_table :sbr_submissions do |t|
      t.references :sbr_reason, index: true, foreign_key: true
      t.references :invoice, index: true, foreign_key: true
      t.string :service_in_dispute
      t.text :sbr_reason_description

      t.timestamps null: false
    end
  end
end
