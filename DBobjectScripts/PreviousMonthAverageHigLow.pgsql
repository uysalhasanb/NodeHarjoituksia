-- Create a view to show previous month average price
--and normal price limits
CREATE View public.previous_month_average AS
SELECT keskihinta
FROM average_by_year_and_month
WHERE vuosi =  EXTRACT(year from now()) AND
    kuukausi = EXTRACT(month from now())-1