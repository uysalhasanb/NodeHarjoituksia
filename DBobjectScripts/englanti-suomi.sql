-- View: public.englanti-suomi

-- DROP VIEW public."englanti-suomi";

CREATE OR REPLACE VIEW public."englanti-suomi"
 AS
 SELECT term_fi.term_us AS englanti,
    term_fi.termi AS suomi,
    term_fi.kuvaus
   FROM term_fi
  ORDER BY term_fi.term_us;

ALTER TABLE public."englanti-suomi"
    OWNER TO postgres;