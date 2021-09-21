class CreatePriceLists < ActiveRecord::Migration
  def change
    create_table :price_lists do |t|
      t.binary :uuid, limit: 16
      t.string :state
      t.string :name
      t.datetime :draft_at
      t.datetime :active_at
      t.datetime :acrchived_at

      t.timestamps
    end
  end
end
