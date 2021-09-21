class ClearExistingOcrRecords < ActiveRecord::Migration[5.2]
  def up
    say_with_time "Destroying existing OCR records..." do
      Ocr.destroy_all
    end
  end

  def down
    # no-op
  end
end
