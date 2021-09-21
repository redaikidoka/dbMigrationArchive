class AddGuardianAdLitemToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :guardian_ad_litem, :string
  end
end
