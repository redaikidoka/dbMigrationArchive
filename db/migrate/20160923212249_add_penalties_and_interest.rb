class AddPenaltiesAndInterest < ActiveRecord::Migration
  def change
    add_column :invoices, :penalties_and_interest_cents, :integer, default: 0
    add_column :invoice_captures, :penalties_and_interest_cents, :integer, default: 0
  end
end
