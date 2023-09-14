-- Calculates average electricity price  of all data 

SELECT round(AVG(price)::numeric,3) AS keskihinta
	FROM public.hourly_price