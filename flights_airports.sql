
SELECT COUNT(*)
FROM flights_api
WHERE origin IN ('DCA', 'IAD', 'BWI', 'PHL', 'EWR', 'JFK', 'LGA')
   OR dest IN ('DCA', 'IAD', 'BWI', 'PHL','EWR', 'JFK', 'LGA');

SELECT COUNT(*)
FROM flights_api;

CREATE TABLE flights_group_x AS
(SELECT fa.*, 
	   origin.lat, 
	   origin.lon, 
	   origin.city,
	   origin.tz AS tz_origin,
	   dest.tz AS tz_dest
FROM flights_api AS fa
LEFT JOIN airports AS origin
ON fa.origin = origin.faa
LEFT JOIN airports AS dest
ON fa.dest = dest.faa);

