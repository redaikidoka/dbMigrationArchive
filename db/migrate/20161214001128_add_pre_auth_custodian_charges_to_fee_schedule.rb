class AddPreAuthCustodianChargesToFeeSchedule < ActiveRecord::Migration[5.0]
  def up
    fee_schedule = PriceList.fee_schedule

    fee_schedule.items.create!(
      code: "CC100",
      identifier: "FS-CC100-custodian-charges",
      description: "Pre-authorized Custodian Charges - At Cost",
      summary: "Pre-authorized Custodian Charges - At Cost",
      price_cents: 0,
      taxable: false,
      discountable: false,
      rate_editable: true
    )
  end

  def down
    fee_schedule = PriceList.fee_schedule
    item = fee_schedule.items.find_by(code: "CC100")
    item.destroy
  end
end
