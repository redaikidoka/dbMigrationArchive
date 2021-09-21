class AddInternationalAddressToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :employee_address_international, :string
  end
end
