SELECT
  cases.id AS id,
  accounts.name AS account_name,
  COALESCE(accounts.hivo_tag, false) AS account_hivo_tag,
  entities.name AS billing_entity_name,
  entities.id AS billing_entity_id,
  CONCAT_WS(requesting_attorney.first_name, ' ', requesting_attorney.last_name) AS requesting_attorney_name,
  CONCAT_WS(user_to_contact.first_name, ' ', user_to_contact.last_name) AS user_to_contact_name,
  (
    SELECT
      MIN(needed_by)
    FROM
      requests
    WHERE
      requests.case_id = cases.id
      AND requests.state = 'pending') AS earliest_needed_by_date,
  (
    SELECT
      MIN(created_at)
    FROM
      requests
    WHERE
      requests.case_id = cases.id
      AND requests.state = 'pending') AS earliest_created_at,
  (
    SELECT
      MAX(created_at)
    FROM
      requests
    WHERE
      requests.case_id = cases.id
      AND requests.state = 'pending'
      ) AS latest_created_at
FROM
  cases
  LEFT OUTER JOIN accounts ON accounts.id = cases.account_id
  LEFT OUTER JOIN entity_selections ON entity_selections.associable_id = cases.id
    AND entity_selections.associable_type = 'Case'
  LEFT OUTER JOIN entities ON entities.id = entity_selections.entity_id
  LEFT OUTER JOIN users requesting_attorney ON requesting_attorney.id = cases.requesting_attorney_id
  LEFT OUTER JOIN users user_to_contact ON user_to_contact.id = cases.user_to_contact_id
