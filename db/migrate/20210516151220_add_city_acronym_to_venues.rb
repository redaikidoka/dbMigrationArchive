class AddCityAcronymToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :city_acronym, :string
  end
end
