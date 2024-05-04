-- Table: public.task

-- DROP TABLE IF EXISTS public.task;

CREATE TABLE IF NOT EXISTS public.task
(
    task_id bigint NOT NULL DEFAULT nextval('task__task_id_seq'::regclass),
    name text COLLATE pg_catalog."default" NOT NULL,
    project_id bigint NOT NULL,
    status text COLLATE pg_catalog."default" NOT NULL,
    data_creation timestamp without time zone NOT NULL,
    date_deadline time without time zone NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    user_author_id uuid NOT NULL,
    user_executor_id uuid NOT NULL,
    user_tester_id uuid NOT NULL,
    CONSTRAINT task_pkey PRIMARY KEY (task_id),
    CONSTRAINT fkey_project FOREIGN KEY (project_id)
        REFERENCES public.role (role_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fkey_user_author FOREIGN KEY (user_author_id)
        REFERENCES public.user_app (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fkey_user_executor FOREIGN KEY (user_executor_id)
        REFERENCES public.user_app (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fkey_user_tester FOREIGN KEY (user_tester_id)
        REFERENCES public.user_app (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.task
    OWNER to postgres;