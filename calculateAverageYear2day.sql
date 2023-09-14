-- Extract year, month and day for grouping average prices

SELECT EXTRACT(YEAR from timeslot) AS vuosi,
EXTRACT(MONTH from timeslot) AS kuukausi,
EXTRACT(DAY from timeslot) AS päivä,
AVG(price) AS keskihinta
	FROM public.hourly_price 
	GROUP BY vuosi,kuukausi,päivä;