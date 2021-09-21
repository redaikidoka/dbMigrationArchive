class ConvertQuestionsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :questions, :id, :bigint
  end
end
