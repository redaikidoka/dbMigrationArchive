class CreateImrCases < ActiveRecord::Migration[5.1]
  def change
    create_table :imr_cases do |t|
      t.uuid :uuid, default: "uuid_generate_v4()", null: false
      t.references :account
      t.text :number
      t.text :noa_barcode_sheet
      t.timestamps
    end
  end
end
