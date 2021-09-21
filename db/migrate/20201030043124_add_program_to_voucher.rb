class AddProgramToVoucher < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :program, :string
  end
end
