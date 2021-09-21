class ConvertAnswersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :answers, :id, :bigint
    change_column :answers, :account_id, :bigint
    change_column :answers, :question_id, :bigint
    change_column :answers, :user_id, :bigint
  end
end
