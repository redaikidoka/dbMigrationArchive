class RenameApplicantDoiApplicantDoiFromOnOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :applicant_doi, :applicant_doi_from
  end
end
