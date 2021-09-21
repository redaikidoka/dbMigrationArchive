class RemoveImrCasesNoaBarcodeSheet < ActiveRecord::Migration[5.2]
  def change
    remove_column :imr_cases, :noa_barcode_sheet
  end
end
