class AddWcirbRequestCoverageYears < ActiveRecord::Migration
  def up
    add_column :wcirb_requests, :coverage_years, :string, after: "employer_zip"
  end

  def down
    remove_column :wcirb_requests, :coverage_years
  end
end
