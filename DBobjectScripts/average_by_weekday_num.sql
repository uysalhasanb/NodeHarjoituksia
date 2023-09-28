-- Calculates average electricity price for weekdays

SELECT extract(ISODOW from timeslot) as vpnumero, avg(price)
	FROM public.hourly_price
	GROUP BY vpnumero
	ORDER BY vpnumero