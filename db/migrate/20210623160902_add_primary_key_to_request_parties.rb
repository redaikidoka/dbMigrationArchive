class AddPrimaryKeyToRequestParties < ActiveRecord::Migration[5.2]
  def change
    add_column :request_parties, :id, :primary_key
  end
end
