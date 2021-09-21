class AddApplicantDoiToOnOrders < ActiveRecord::Migration
  def change
    add_column :orders, :applicant_doi_to, :date, after: "applicant_doi_from"
  end
end
