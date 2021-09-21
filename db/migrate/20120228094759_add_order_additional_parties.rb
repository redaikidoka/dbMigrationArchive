class AddOrderAdditionalParties < ActiveRecord::Migration
  def up
    add_column :orders, :additional_parties, :string, after: "applicant_doi_to"
  end

  def down
    remove_column :orders, :additional_parties
  end
end
