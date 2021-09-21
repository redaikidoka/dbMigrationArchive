SELECT
  invoices.id                  AS id,
  LOWER(COALESCE(cases.applicant_name, orders.applicant_name)) AS applicant_name,
  LOWER(COALESCE(NULLIF(cases.claim_number, ''), parties.claim_number)) AS claim_number,
  LOWER(COALESCE(cases.number, orders.case_number)) AS case_number,
  work_orders.number           AS work_order_number,
  orders.order_type            AS order_type,
  entities.id                  AS entity_id,
  LOWER(entities.name)         AS entity_name,
  LOWER(accounts.display_name) AS display_name,
  accounts.id                  AS account_id,
  accounts.territory_id        AS territory_id,
  daisy_bills.daisy_id         AS daisy_id
FROM invoices
LEFT OUTER JOIN work_orders ON work_orders.id = invoices.work_order_id
LEFT OUTER JOIN orders      ON orders.id = work_orders.order_id
LEFT OUTER JOIN accounts    ON accounts.id = orders.account_id
LEFT OUTER JOIN entities    ON entities.id = invoices.entity_id
LEFT OUTER JOIN daisy_bills ON daisy_bills.id = invoices.daisy_bill_id
LEFT OUTER JOIN parties     ON parties.order_id = orders.id AND parties.type = 'BillingParty'
LEFT OUTER JOIN case_orders ON case_orders.order_id = orders.id AND case_orders."id" = ( SELECT min("id") FROM case_orders c1 WHERE case_orders.order_id = c1.id )
LEFT OUTER JOIN cases       ON cases.id = case_orders.case_id
