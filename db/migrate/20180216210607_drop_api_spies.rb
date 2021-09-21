class DropApiSpies < ActiveRecord::Migration[5.1]
  def change
    drop_table :api_spies
  end
end
