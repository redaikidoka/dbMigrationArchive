class AddFoundByColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :info_found_by, :string

    Order.where(source: 'Party Notice').find_each do |order|
      order.update(source: 'GenieDocs', info_found_by: 'Party Notice')
    end
  end
end
