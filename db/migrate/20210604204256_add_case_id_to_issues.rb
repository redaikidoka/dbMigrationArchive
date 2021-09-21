class AddCaseIdToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :case_id, :integer, index: true
  end
end
