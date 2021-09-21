class ConvertNotesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :notes, :id, :bigint
    change_column :notes, :user_id, :bigint
    change_column :notes, :account_id, :bigint
    change_column :notes, :competitor_id, :bigint
    change_column :notes, :person_id, :bigint
  end
end
