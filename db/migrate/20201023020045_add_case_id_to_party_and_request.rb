class AddCaseIdToPartyAndRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :parties, :case_id, :integer
    add_index :parties, :case_id
    add_column :requests, :case_id, :integer
    add_index :requests, :case_id
  end
end
