class BackfillDeliveryPartyStreet < ActiveRecord::Migration[5.2]
  def change
    # for delivery parties without an email address a street address is now
    # required, there are ~112 DeliveryParties that will fail this validation
    # so backfill with Not Provided to ensure validity
    DeliveryParty
      .where("street IS NULL or street = ''")
      .where("email IS NULL or email = ''")
      .update_all("street = 'Not Provided'") # rubocop:disable SkipsModelValidations
  end
end
