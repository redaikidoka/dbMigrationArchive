class AddSignatureToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :presiding_judge_signature, :string
    add_column :venues, :signature_validation_date, :date
  end
end
