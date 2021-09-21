class ConvertObjectionResponsesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :objection_responses, :id, :bigint
  end
end
