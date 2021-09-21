class CreateDasAccounts < ActiveRecord::Migration
  def change
    create_table :das_accounts do |t|
      t.string :city
      t.string :address
      t.string :name
      t.string :zip
      t.string :eyed
      t.text :note
      t.string :phone
      t.string :fax
      t.string :state
      t.timestamps
    end

  end
end