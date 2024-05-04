-- Table: public.participants_project

-- DROP TABLE IF EXISTS public.participants_project;

CREATE TABLE IF NOT EXISTS public.participants_project
(
    participants_project_id bigint NOT NULL DEFAULT nextval('participants_project__participants_project_id_seq'::regclass),
    user_id uuid NOT NULL,
    project_id bigint NOT NULL,
    role_id integer NOT NULL,
    is_admin_project boolean NOT NULL,
    CONSTRAINT participants_project_pkey PRIMARY KEY (participants_project_id),
    CONSTRAINT fkey_role FOREIGN KEY (role_id)
        REFERENCES public.role (role_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fkey_user FOREIGN KEY (user_id)
        REFERENCES public.user_app (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.participants_project
    OWNER to postgres;