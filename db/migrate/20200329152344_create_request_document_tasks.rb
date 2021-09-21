class CreateRequestDocumentTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :request_document_tasks do |t|
      t.references :request_document, null: false, index: true
      t.references :user, null: true, index: true
      
      t.integer :priority, null: false
      t.string :task_type, null: true
      t.string :state, null: false
      
      t.datetime :pending_at
      t.datetime :started_at
      t.datetime :completed_at
      t.datetime :expired_at

      t.datetime :ready_to_finalize_at
      t.boolean :hivo, default: false
      t.boolean :rush, default: false

      t.timestamps
    end
  end
end
