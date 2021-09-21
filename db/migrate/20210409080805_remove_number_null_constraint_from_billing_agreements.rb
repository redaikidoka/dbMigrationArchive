class RemoveNumberNullConstraintFromBillingAgreements < ActiveRecord::Migration[5.2]
  def change
    change_column_null :billing_agreements, :agreements, true
  end
end
