class PopulateVoucherAttachments < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:populate_voucher_attachment_types"].invoke
  end
end
