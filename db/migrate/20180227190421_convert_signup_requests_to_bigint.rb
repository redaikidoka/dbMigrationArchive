class ConvertSignupRequestsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :signup_requests, :id, :bigint
  end
end
