class AddUserToContactJetfile < ActiveRecord::Migration[5.2]
  def change
    add_reference :jet_submissions, :user_to_contact, references: :user
    add_reference :jet_submissions, :attorney_to_contact, references: :user

    add_column :users, :notifications_on_jet_submission, :boolean, default: true
    add_column :users, :notifications_on_jet_completion, :boolean, default: true
  end
end
