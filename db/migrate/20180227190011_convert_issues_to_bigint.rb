class ConvertIssuesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :issues, :id, :bigint
    change_column :issues, :order_id, :bigint
    change_column :issues, :request_id, :bigint
    change_column :issues, :user_id, :bigint
    change_column :issues, :commented_by_id, :bigint
  end
end
