-- View: public.suomi-englanti

-- DROP VIEW public."suomi-englanti";

CREATE OR REPLACE VIEW public."suomi-englanti"
 AS
 SELECT termi AS suomi,
    term_fi.term_us AS englanti,
    terminology.description_us AS kuvaus
   FROM public.term_fi
     JOIN public.terminology ON term_fi.term_us::text = terminology.term_us::text
  ORDER BY term_fi.termi;

ALTER TABLE public."suomi-englanti"
    OWNER TO postgres;

