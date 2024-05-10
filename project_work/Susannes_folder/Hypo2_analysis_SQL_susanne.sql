

SELECT COUNT(*)
FROM weather_stacked_groupx AS ws;


 SELECT DISTINCT flight_date,
       origin,
       dep_time,
       MAKE_TIME((dep_time::INT / 100), (dep_time::INT % 100), 0) AS dep_time_f,
       AVG(snow) AS avg_snow
FROM 
GROUP BY flight_date, origin, dep_time
ORDER BY flight_date ASC;

SELECT DISTINCT flight_date, origin  , AVG(snow)
FROM weather_flights_x_sf
GROUP BY origin, flight_date
ORDER BY origin, flight_date;

SELECT count(*)
FROM "weather_V3"; 


SELECT count(*)
FROM weather_stacked_groupx wsg 
LEFT JOIN flights_group_x fgx
       ON fgx.origin = wsg.faa
      AND fgx.dest  = wsg.faa;
     
 
SELECT Count(*)
FROM flights_group_x fgx2 
LEFT JOIN weather_stacked_groupx wsg
ON fgx2.origin = wsg.faa
LEFT JOIN flights_group
      AND fgx2.dest  = wsg.faa;   

SELECT COUNT(*)
FROM weather_stacked_groupx wsg
LEFT JOIN flights_group_x origin
ON wsg.faa = origin.origin
LEFT JOIN flights_group_x dest
ON wsg.faa = dest.dest
WHERE wsg.snow IS NOT NULL;  

# Plotting

plt.figure(figsize=(10, 6))
plt.plot(dep_times, avg_snows, marker='o', linestyle='-')
plt.xlabel('Departure Time')
plt.ylabel('Average Snowfall')
plt.title('Average Snowfall vs. Departure Time')
plt.grid(True)
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()