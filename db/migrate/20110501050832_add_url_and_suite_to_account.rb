class AddUrlAndSuiteToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :url, :string
    add_column :accounts, :suite, :string
  end
end
