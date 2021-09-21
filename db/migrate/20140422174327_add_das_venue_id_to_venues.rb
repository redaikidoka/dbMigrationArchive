class AddDasVenueIdToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :das_venue_id, :integer
  end
end
