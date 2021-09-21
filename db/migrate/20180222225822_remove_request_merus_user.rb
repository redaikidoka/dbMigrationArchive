class RemoveRequestMerusUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :merus_user, :boolean
  end
end
