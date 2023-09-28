-- Query all fields (columns) and order results
-- According to the timestamp field to descending order
SELECT *
	FROM public.hourly_price
	ORDER BY timeslot DESC;