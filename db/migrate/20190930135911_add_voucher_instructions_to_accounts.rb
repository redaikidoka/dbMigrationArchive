class AddVoucherInstructionsToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :voucher_instructions, :text
  end
end
