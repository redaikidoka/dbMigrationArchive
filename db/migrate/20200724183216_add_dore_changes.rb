class AddDoreChanges < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :transaction_id, :string
    add_column :jet_submissions, :fee_not_required, :boolean
    add_column :jet_submissions, :paid_between_years, :boolean
    add_column :jet_submissions, :confirmation_payment_author, :string
    add_column :jet_submissions, :confirmation_payment_date, :date
  end
end
