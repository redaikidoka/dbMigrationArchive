class AddApiTokenToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :api_token, :string
  end
end
