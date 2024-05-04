-- Table: public.role

-- DROP TABLE IF EXISTS public.role;

CREATE TABLE IF NOT EXISTS public.role
(
    role_id integer NOT NULL DEFAULT nextval('role__role_id_seq'::regclass),
    name_role text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT role_pkey PRIMARY KEY (role_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.role
    OWNER to postgres;

INSERT INTO public.role (name_role)
    VALUES 
        ('Руководитель проекта'),
        ('Исполнитель'),
        ('Тестировщик');
