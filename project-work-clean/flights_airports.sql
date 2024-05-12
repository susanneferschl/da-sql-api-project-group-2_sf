
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

/*Merging 2010 flights with airports*/
SELECT COUNT(*)
FROM flights_api_rr
WHERE origin IN ('DCA', 'IAD', 'BWI', 'PHL', 'EWR', 'JFK', 'LGA')
   OR dest IN ('DCA', 'IAD', 'BWI', 'PHL','EWR', 'JFK', 'LGA');

SELECT COUNT(*)
FROM flights_api_rr;

CREATE TABLE flights_group_x_rr AS
(SELECT fa.*, 
	   origin.lat, 
	   origin.lon, 
	   origin.city,
	   origin.tz AS tz_origin,
	   dest.tz AS tz_dest
FROM flights_api_rr AS fa
LEFT JOIN airports AS origin
ON fa.origin = origin.faa
LEFT JOIN airports AS dest
ON fa.dest = dest.faa);

/*End of Merging*/

SELECT *
FROM flights_2010_to_2017 ft;

SELECT DATE_PART('year', flight_date) AS year,
       AVG(cancelled::int) AS cancellation_rate
FROM flights_2010_to_2017
GROUP BY DATE_PART('year', flight_date)
ORDER BY year;

/*Get the cancellation rate as % for each year.
 * Cancellation rate = count of flights cancelled / count of flights */

SELECT DATE_PART('year', flight_date) AS year,
       COUNT(*) AS flight_count,
       SUM(cancelled::int) AS cancelled_flights,
       ROUND(AVG(cancelled::int) * 100, 2) || '%' AS cancellation_rate
FROM flights_2010_to_2017
GROUP BY DATE_PART('year', flight_date)
ORDER BY year;


