-- Script to rank country origins of bands by number of fans
-- The result includes the country of origin and the sum of fans
-- The result is ordered by the number of fans in descending order

SELECT origin, SUM(nb_fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
