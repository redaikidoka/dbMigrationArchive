class CreateRequestDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :request_documents do |t|
      t.references :user, index: true, null: false
      t.references :request, index: true
      t.references :ocr, index: true

      t.string :file_logs
      t.string :request_logs

      t.string :state, null: false

      t.boolean :declaration, default: false
      t.boolean :physical_delivery, default: false

      t.string :records_billing
      t.string :records_medical
      t.string :records_film_breakdown
      t.string :records_radiology_reports

      t.datetime :pending_at
      t.datetime :processed_at
      t.datetime :reviewed_at
      t.datetime :duplicate_at
      t.datetime :potential_duplicate_at
      t.datetime :supplemental_at
      t.datetime :invalid_at
      t.datetime :amendment_at
      t.datetime :cnrv_at

      t.timestamps
    end
  end
end
