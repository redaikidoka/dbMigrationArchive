class AddMissingIndexes2 < ActiveRecord::Migration[5.2]
  def change
    add_index :accesses, :user_id
    add_index :accesses, %i[accessible_id accessible_type]
    add_index :accounts, :alternate_updated_by_id
    add_index :accounts, :secondary_account_manager_id
    add_index :accounts, :secondary_territory_manager_id
    add_index :accounts, :territory_id
    add_index :additional_sets, :delivery_party_id
    add_index :additional_sets, :parent_id
    add_index :additional_sets, :processed_by_id
    add_index :additional_sets, :request_id
    add_index :additional_sets, :submitted_by_id
    add_index :answers, :account_id
    add_index :answers, :question_id
    add_index :answers, :user_id
    add_index :cases, :venue_id
    add_index :comment_attachments, :comment_id
    add_index :encrypted_values, :user_id
    add_index :event_attachments, :event_id
    add_index :event_codes, :event_category_id
    add_index :event_notes, :user_id
    add_index :event_notes, %i[origin_id origin_type]
    add_index :events, :entity_contact_id
    add_index :events, :event_code_id
    add_index :expenses, :account_id
    add_index :expenses, :user_id
    add_index :invoice_entries, :user_id
    add_index :invoices, :billing_selection_id
    add_index :invoices, :daisy_attachment_id
    add_index :invoices, :daisy_bill_id
    add_index :invoices, :daisy_bill_submission_id
    add_index :invoices, :daisy_claims_administrator_id
    add_index :invoices, :daisy_injury_id
    add_index :invoices, :daisy_patient_id
    add_index :invoices, :finalized_by_id
    add_index :invoices, %i[daisy_bill_id daisy_injury_id]
    add_index :locations, :parent_id
    add_index :order_attachments, :order_id
    add_index :order_attachments, :user_id
    add_index :orders, :created_by_id
    add_index :orders, :holding_request_id
    add_index :orders, :parent_id
    add_index :orders, :processed_by_id
    add_index :orders, :user_id
    add_index :orders, :venue_id
    add_index :requests, :cancelled_by_id
    add_index :requests, :processed_by_id
    add_index :requests, :subpoena_phrase_template_id
    add_index :scheduled_billings, :scheduled_job_id
    add_index :territories, :primary_account_manager_id
    add_index :territories, :primary_territory_manager_id
    add_index :territories, :regional_sales_manager_id
    add_index :users, :occupation_id
    add_index :users, :partner_id
    add_index :users, %i[invited_by_id invited_by_type]
  end
end
