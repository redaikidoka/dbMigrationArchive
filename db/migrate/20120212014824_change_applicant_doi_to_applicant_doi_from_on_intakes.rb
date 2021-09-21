class ChangeApplicantDoiToApplicantDoiFromOnIntakes < ActiveRecord::Migration
  def change
    rename_column :intakes, :applicant_doi, :applicant_doi_from
  end
end
