-- Table: public.project

-- DROP TABLE IF EXISTS public.project;

CREATE TABLE IF NOT EXISTS public.project
(
    project_id bigint NOT NULL DEFAULT nextval('project__project_id_seq'::regclass),
    name_project text COLLATE pg_catalog."default" NOT NULL,
    data_creation date NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT project_pkey PRIMARY KEY (project_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.project
    OWNER to postgres;