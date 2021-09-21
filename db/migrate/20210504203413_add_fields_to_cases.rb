class AddFieldsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :injury_type, :string
    add_column :cases, :date_of_injury_to, :date
    add_column :cases, :date_of_injury_from, :date
    add_column :cases, :date_of_incident, :date
    add_column :cases, :requesting_attorney_id, :integer
    add_column :cases, :user_to_contact_id, :integer
    add_column :cases, :letter_of_representation_date, :date
    add_column :cases, :title, :string
    add_column :cases, :representing, :string
    add_column :cases, :guardian_ad_litem, :string

    add_index :cases, :requesting_attorney_id
    add_index :cases, :user_to_contact_id
  end
end
