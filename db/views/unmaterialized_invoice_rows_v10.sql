SELECT
  inv1.id                  AS id,
  LOWER(COALESCE(cases.applicant_name, orders.applicant_name)) AS applicant_name,
  LOWER(COALESCE(NULLIF(cases.claim_number, ''), parties.claim_number)) AS claim_number,
  LOWER(cases.number)          AS case_number,
  work_orders.number           AS work_order_number,
  orders.order_type            AS order_type,
  entities.id                  AS entity_id,
  LOWER(entities.name)         AS entity_name,
  LOWER(accounts.display_name) AS display_name,
  accounts.id                  AS account_id,
  accounts.territory_id        AS territory_id,
  daisy_bills.daisy_id         AS daisy_id,
  regexp_replace(cases.number, '[[:alpha:]]', '', 'g') AS case_number_without_prefix,
  COALESCE((
    SELECT array_agg(DISTINCT labels.id)::text[]
    FROM labeled_objects
    LEFT OUTER JOIN labels ON labels.id = labeled_objects.label_id
    WHERE labeled_objects.labelable_type = 'Invoice' AND labeled_objects.labelable_id = inv1.id
    GROUP BY labeled_objects.labelable_id), '{}'::text[]
  ) AS label_ids,
  cases.ar_clerk_id            AS ar_clerk_id,
  orders.source                AS order_source,
  COALESCE(
    NULLIF(regexp_replace(cases.encrypted_applicant_ssn, '[\n\r]+', ''), ''),
    regexp_replace(orders.encrypted_applicant_ssn, '[\n\r]+', '')
  ) AS encrypted_applicant_ssn,
  COALESCE(cases.applicant_dob, orders.applicant_dob) AS applicant_dob,
  COALESCE(cases.applicant_doi_from, orders.applicant_doi_from) AS applicant_doi_from,
  COALESCE(cases.applicant_doi_to, orders.applicant_doi_to) AS applicant_doi_to,
  LOWER(COALESCE(NULLIF(cases.defendant, ''), orders.defendant)) AS defendant
FROM invoices inv1
LEFT OUTER JOIN work_orders ON work_orders.id = inv1.parent_id AND inv1.parent_type = 'WorkOrder'
LEFT OUTER JOIN orders      ON orders.id = work_orders.order_id
LEFT OUTER JOIN accounts    ON accounts.id = orders.account_id
LEFT OUTER JOIN entities    ON entities.id = inv1.entity_id
LEFT OUTER JOIN daisy_bills ON daisy_bills.id = inv1.daisy_bill_id
LEFT OUTER JOIN parties     ON parties.order_id = orders.id AND parties.type = 'BillingParty'
LEFT OUTER JOIN cases       ON cases.id = orders.case_id
