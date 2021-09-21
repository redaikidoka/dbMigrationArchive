class CreateMaterializedCaseRows < ActiveRecord::Migration[5.2]
  def change
    create_table :materialized_case_rows do |t|
      # primary key will use case.id

      t.text :account_name
      t.boolean :account_hivo_tag, default: false
      t.text :billing_entity_name
      t.integer :billing_entity_id
      t.text :requesting_attorney_name
      t.text :user_to_contact_name
      t.date :earliest_needed_by_date
      t.datetime :earliest_created_at
    end
  end
end
