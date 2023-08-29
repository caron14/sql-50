select
  query_name,
  round(AVG(rating / position), 2) as quality,
  round(COUNT(
    case
      when
        rating <  3
      then 1
    end
  ) / COUNT(*) * 100, 2)
  as poor_query_percentage
from
  Queries
group by
  query_name