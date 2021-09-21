class AddLastVisitedOnToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :last_visited_on, :date, after: "territory_id"
  end
end
