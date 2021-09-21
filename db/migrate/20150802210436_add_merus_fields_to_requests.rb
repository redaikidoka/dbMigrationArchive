class AddMerusFieldsToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :merus_user, :boolean, default: false
    add_column :requests, :merus_performance_fee_cents, :integer, default: 0
  end
end
