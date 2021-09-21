class AddPriceListAndAccountToEntities < ActiveRecord::Migration
  def change
    add_reference :entities, :price_list, index: true, foreign_key: true
    add_reference :entities, :account, index: true, foreign_key: true
  end
end
