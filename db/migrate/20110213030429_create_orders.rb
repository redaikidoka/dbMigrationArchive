class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.integer :user_id
      t.integer :court_id
      t.string :case_number
      t.string :order_type
      t.string :plaintiff
      t.string :defendant
      t.date :due_on
      t.date :hearing_date
      t.string :request_attorney
      t.string :request_bar
      t.string :request_email
      t.string :subject_name
      t.string :subject_alias
      t.date :subject_dob
      t.string :subject_ssn
      t.string :subject_doi
      t.boolean :cd
      t.boolean :paper

      t.timestamps
    end

  end
end
