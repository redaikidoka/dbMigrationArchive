SELECT
  requests.id           AS id,

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
          WHERE issues.case_id = requests.case_id AND issues.request_id IS NULL AND (issues.state != 'closed')
       ) THEN 'incomplete'
       ELSE requests.state
  END                   AS request_masked_state,

  orders.applicant_name AS applicant_name,
  orders.defendant      AS defendant,
  orders.rush           AS rush,
  cases.account_id      AS account_id,
  orders.state          AS order_state,
  cases.number          AS case_number,
  cases.status          AS case_status,

  -- Location#address w/ contacts from _requests.html.erb
  contacts.business_contact_name   AS requested_contact_name,
  contacts.name        AS requested_company_name,
  contacts.street      AS requested_street,
  contacts.city        AS requested_city,
  contacts.state       AS requested_state,
  contacts.zip         AS requested_zip,

  -- EntityAddress#mailing_address
  --
  entity_addresses.name    AS verified_contact_name,
  -- company name needs to prefer short version
  COALESCE(entities.short_name, entities.name) AS verified_company_name,
  -- street is joined with a comma if both street and street_2 are present
  -- otherwise just use the non null one
  CASE
    WHEN entity_addresses.street IS NOT NULL AND entity_addresses.street_2 IS NOT NULL
      THEN concat(entity_addresses.street, ', ', entity_addresses.street_2)
    ELSE COALESCE(entity_addresses.street, entity_addresses.street_2)
  END                      AS verified_street,
  entity_addresses.city    AS verified_city,
  entity_addresses.state   AS verified_state,
  entity_addresses.zip     AS verified_zip,

  imported_orders.cnr   AS cnr,
  regexp_replace(cases.number, '[[:alpha:]]', '', 'g') AS case_number_without_prefix,
  LOWER(cases.number)   AS lower_case_number,

  COALESCE(
    NULLIF(regexp_replace(cases.encrypted_applicant_ssn, '[\n\r]+', ''), ''),
    regexp_replace(orders.encrypted_applicant_ssn, '[\n\r]+', '')
  ) AS encrypted_applicant_ssn,
  COALESCE(cases.applicant_dob, orders.applicant_dob) AS applicant_dob,
  entities_two.name        AS verified_entity_name,
  entity_addresses.phone   AS verified_phone,
  contacts.phone_number    AS requested_phone

FROM requests
  LEFT OUTER JOIN orders ON orders.id = requests.order_id
  LEFT OUTER JOIN imported_orders ON imported_orders.id = requests.imported_order_id
  LEFT OUTER JOIN cases ON cases.id = requests.case_id
  LEFT OUTER JOIN contact_selections ON contact_selections.associable_id = requests.id
  LEFT OUTER JOIN contacts ON contacts.id = contact_selections.contact_id
  LEFT OUTER JOIN entity_selections ON entity_selections.associable_id = requests.id AND entity_selections.associable_type = 'Request'
  LEFT OUTER JOIN entity_addresses ON entity_addresses.id = entity_selections.effective_records_stored_address_id
  LEFT OUTER JOIN entities ON entities.id = entity_addresses.entity_id
  LEFT OUTER JOIN entities entities_two ON entities_two.id = entity_selections.entity_id
