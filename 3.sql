-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | name        | varchar |
-- | continent   | varchar |
-- | area        | int     |
-- | population  | int     |
-- | gdp         | bigint  |
-- +-------------+---------+
-- In SQL, name is the primary key column for this table.
-- Each row of this table gives information about the name of a country, 
-- the continent to which it belongs, its area, the population, and its GDP value.

SELECT
  name,
  population,
  area,
FROM
  World
WHERE
  area >= 3000000
  OR population >= 25000000
;