class RemoveSubpoenaIssuedByFromCase < ActiveRecord::Migration[5.0]
  def change
    remove_column :cases, :subpoena_issued_by, :string
  end
end
