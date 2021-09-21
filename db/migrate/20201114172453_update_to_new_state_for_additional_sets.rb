class UpdateToNewStateForAdditionalSets < ActiveRecord::Migration[5.2]
  def up
    AdditionalSet.where(state: "shipping").update_all(state: "ready_to_ship")
  end

  def down
    AdditionalSet.where(state: "ready_to_ship").update_all(state: "shipping")
  end
end
