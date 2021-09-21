class AddCaseStatusAndClosedDate < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :status, :string
    add_column :cases, :closed_on, :date
  end
end
