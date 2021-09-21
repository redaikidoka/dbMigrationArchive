class AddCommunicationAmendedWatermarkFlag < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :amended_watermark, :boolean, null: false, default: false
  end
end
