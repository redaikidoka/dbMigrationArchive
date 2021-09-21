class RemoveDeprecatedAccountColumns < ActiveRecord::Migration
  def up
    remove_column :accounts, :county
    remove_column :accounts, :external_id
    remove_column :accounts, :practice_type_other
    remove_column :accounts, :url
  end

  def down
    add_column :accounts, :url, :string, after: "eams_name"
    add_column :accounts, :practice_type_other, :string, after: "practice_type"
    add_column :accounts, :external_id, :integer, after: "shipped_averages_warn"
    add_column :accounts, :county, :string, after: "eams_city"
  end
end
