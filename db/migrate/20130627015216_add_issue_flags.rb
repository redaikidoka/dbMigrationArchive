class AddIssueFlags < ActiveRecord::Migration
  def change
    add_column :issues, :client_read, :boolean, after: "state", default: true
    add_column :issues, :staff_read, :boolean, after: "client_read", default: true
  end
end
