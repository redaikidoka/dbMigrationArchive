class AddApplicantDoiToOnIntakes < ActiveRecord::Migration
  def change
    add_column :intakes, :applicant_doi_to, :date, after: "applicant_doi_from"
  end
end
