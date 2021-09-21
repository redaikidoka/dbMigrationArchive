class AddSubpeonaFieldsToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :policy_number, :string
    add_column :requests, :doi, :date
    add_column :requests, :claim_number, :string
  end
end
