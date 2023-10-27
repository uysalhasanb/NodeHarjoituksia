-- View: public.previous_month_average

-- and normal price limits

CREATE VIEW public.previous_month_average2  AS
select keskihinta,
yläraja,
alaraja
from average_by_year_and_month
where vuosi = extract(year from now()) AND
kuukausi = extract(month from now())-1