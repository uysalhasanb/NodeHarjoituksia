
CREATE TABLE public.terminology (
                term_us VARCHAR(50) NOT NULL,
                description_us TEXT NOT NULL,
                link VARCHAR(255),
                CONSTRAINT terminology_pk PRIMARY KEY (term_us)
);
COMMENT ON TABLE public.terminology IS 'This table contains IT-terms in English short description of the term.';
COMMENT ON COLUMN public.terminology.description_us IS 'Meaning of the term';


CREATE TABLE public.term_se (
                term VARCHAR(50) NOT NULL,
                beskrivning TEXT NOT NULL,
                hyperlinkki VARCHAR(255),
                term_us VARCHAR(50) NOT NULL,
                CONSTRAINT term_se_pk PRIMARY KEY (term)
);


CREATE TABLE public.term_fi (
                termi VARCHAR(50) NOT NULL,
                kuvaus TEXT NOT NULL,
                hyperlinkki VARCHAR(255),
                term_us VARCHAR(50) NOT NULL,
                CONSTRAINT term_fi_pk PRIMARY KEY (termi)
);


ALTER TABLE public.term_fi ADD CONSTRAINT terminology_term_fi_fk
FOREIGN KEY (term_us)
REFERENCES public.terminology (term_us)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.term_se ADD CONSTRAINT terminology_term_se_fk
FOREIGN KEY (term_us)
REFERENCES public.terminology (term_us)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;