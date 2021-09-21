class RemoveRequestMerusPerformanceFee < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :merus_performance_fee_cents, :integer
  end
end
