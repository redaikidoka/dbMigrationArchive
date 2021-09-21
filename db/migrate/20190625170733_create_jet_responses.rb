class CreateJetResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :jet_responses do |t|
      t.references :jet_submission
      t.references :jet_packet

      t.text :response_filename

      t.integer :level

      t.boolean :success, default: false

      t.text :adj
      t.text :resubmit_id
      t.text :message

      t.date :filed_date

      t.string :aasm_state

      t.datetime :imported_at
      t.datetime :processing_at
      t.datetime :processed_at
      t.datetime :applying_at
      t.datetime :applied_at
      t.datetime :fault_at

      t.timestamps
    end
  end
end

