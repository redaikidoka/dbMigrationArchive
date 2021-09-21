class AddImrCaseIdToAdditionalSet < ActiveRecord::Migration[5.1]
  def change
    add_reference :additional_sets, :imr_case
  end
end
