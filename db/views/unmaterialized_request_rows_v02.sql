SELECT
  requests.id           AS id,
  work_orders.id        AS work_order_id,

  -- explantation for request_masked_state
  -- if cancelled or incomplete - return as is
  -- if the order.issues.order_level.outstanding.any?
  --   return incomplete
  -- else
  --   return the state as is
  CASE WHEN requests.state = 'incomplete' THEN 'incomplete'
       WHEN requests.state = 'cancelled' THEN 'cancelled'
       WHEN EXISTS (
        SELECT 1 FROM issues
          WHERE issues.order_id = requests.order_id AND issues.request_id IS NULL AND (issues.state != 'closed')
       ) THEN 'incomplete'
       ELSE requests.state
  END                   AS request_masked_state,

  orders.applicant_name AS applicant_name,
  orders.defendant      AS defendant,
  orders.rush           AS rush,
  orders.received_on    AS received_on,
  orders.account_id     AS account_id,
  orders.state          AS order_state,
  cases.number          AS case_number,
  cases.status          AS case_status,

  -- Location#address w/ contacts from _requests.html.erb
  locations.physician   AS requested_contact_name,
  locations.name        AS requested_company_name,
  locations.street      AS requested_street,
  locations.city        AS requested_city,
  locations.state       AS requested_state,
  locations.zip         AS requested_zip,

  -- EntityAddress#mailing_address
  --
  -- company name needs to prefer short version
  COALESCE(entities.short_name, entities.name) AS verified_company_name,
  -- street is joined with a comma if both street and street_2 are present
  -- otherwise just use the non null one
  CASE
    WHEN entity_addresses.street IS NOT NULL AND entity_addresses.street_2 IS NOT NULL
      THEN concat(entity_addresses.street, ', ', entity_addresses.street_2)
    ELSE COALESCE(entity_addresses.street, entity_addresses.street_2)
  END                      AS verified_street,

  entity_addresses.name    AS verified_contact_name,
  entity_addresses.city    AS verified_city,
  entity_addresses.state   AS verified_state,
  entity_addresses.zip     AS verified_zip,

  imported_orders.cnr   AS cnr

  -- add_sets are a has_many so doubt there are any rollup opportunities
  -- add_sets.state       AS additional_set_state,
  -- add_sets.doctor_name AS add_set_doctor_name

FROM requests
  LEFT OUTER JOIN orders ON orders.id = requests.order_id
  LEFT OUTER JOIN imported_orders ON imported_orders.id = requests.imported_order_id
  LEFT OUTER JOIN work_orders ON work_orders.origin_id = requests.id AND work_orders.origin_type = 'Request'
  LEFT OUTER JOIN cases ON cases.id = orders.case_id
  LEFT OUTER JOIN locations ON locations.id = requests.location_id
  LEFT OUTER JOIN entity_selections ON entity_selections.associable_id = requests.id AND entity_selections.associable_type = 'Request'
  LEFT OUTER JOIN entity_addresses ON entity_addresses.id = entity_selections.effective_records_stored_address_id
  LEFT OUTER JOIN entities ON entities.id = entity_addresses.entity_id
