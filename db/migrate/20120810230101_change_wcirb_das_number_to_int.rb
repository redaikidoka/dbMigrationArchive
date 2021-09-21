class ChangeWcirbDasNumberToInt < ActiveRecord::Migration
  def up
    change_column :wcirb_requests, :das_number, :integer
  end

  def down
    # change_column :wcirb_requests, :das_number, :string
  end
end
