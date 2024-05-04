-- SEQUENCE: public.role__role_id_seq

-- DROP SEQUENCE IF EXISTS public.role__role_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.role__role_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.role__role_id_seq
    OWNER TO postgres;

-- SEQUENCE: public.project__project_id_seq

-- DROP SEQUENCE IF EXISTS public.project__project_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.project__project_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.project__project_id_seq
    OWNER TO postgres;

-- SEQUENCE: public.participants_project__project_id_seq

-- DROP SEQUENCE IF EXISTS public.participants_project__project_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.participants_project__participants_project_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.participants_project__participants_project_id_seq
    OWNER TO postgres;

-- SEQUENCE: public.task__task_id_seq

-- DROP SEQUENCE IF EXISTS public.task__task_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.task__task_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.task__task_id_seq
    OWNER TO postgres;