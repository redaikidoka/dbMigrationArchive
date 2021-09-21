class AddApplicantHasNoSsnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :applicant_has_no_ssn, :boolean, default: false
  end
end
