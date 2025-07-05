SELECT
  r.contest_id,
  ROUND(
    COUNT(u.user_id) / (
      SELECT
        COUNT(*)
      FROM
        Users
    ) * 100,
    2
  ) AS percentage
FROM
  Register r
LEFT JOIN
  Users u
ON
  u.user_id = r.user_id
GROUP BY
  r.contest_id
ORDER BY
  percentage DESC,
  r.contest_id
;