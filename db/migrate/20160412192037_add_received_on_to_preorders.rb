class AddReceivedOnToPreorders < ActiveRecord::Migration
  def change
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # add_column :preorders, :received_on, :date

    # Preorder.find_each do |p|
    #   p.update(received_on: p.created_at.pacific.to_date)
    # end
  end
end
