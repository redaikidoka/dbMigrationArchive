class AddMerusCaseApiPartner < ActiveRecord::Migration[5.0]
  def up
    Partner.create!(name: "meruscase_api")
  end

  def down
    Partner.find_by_name("meruscase_api").delete
  end
end
