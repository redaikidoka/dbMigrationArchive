class AddCnFieldsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :any_and_all, :boolean, default: false
    add_column :requests, :wcab_office_id, :integer
    
    add_index :requests, :wcab_office_id
  end
end
