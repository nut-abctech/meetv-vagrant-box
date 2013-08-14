--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.user_device DROP CONSTRAINT user_device_user_id_fkey;
ALTER TABLE ONLY public.user_channel DROP CONSTRAINT user_channel_user_id_fkey;
ALTER TABLE ONLY public.user_channel DROP CONSTRAINT user_channel_channel_text_id_fkey;
ALTER TABLE ONLY public.site DROP CONSTRAINT site_default_bag_id_fkey1;
ALTER TABLE ONLY public.site DROP CONSTRAINT site_default_bag_id_fkey;
ALTER TABLE ONLY public.recommendations DROP CONSTRAINT recommendations_event_id_fkey;
ALTER TABLE ONLY public.provider_site DROP CONSTRAINT provider_site_site_id_fkey;
ALTER TABLE ONLY public.provider_site DROP CONSTRAINT provider_site_provider_id_fkey1;
ALTER TABLE ONLY public.provider_site DROP CONSTRAINT provider_site_provider_id_fkey;
ALTER TABLE ONLY public.gin_index DROP CONSTRAINT gin_index_id_fkey;
ALTER TABLE ONLY public.genre_minor DROP CONSTRAINT genre_minor_genremajor_id_fkey;
ALTER TABLE ONLY public.event DROP CONSTRAINT genre_minor_fk;
ALTER TABLE ONLY public.event_statistics DROP CONSTRAINT event_statistics_event_id_fkey;
ALTER TABLE ONLY public.event_import_changelog_notification_queue DROP CONSTRAINT event_import_changelog_notification_que_event_changelog_id_fkey;
ALTER TABLE ONLY public.event_episode DROP CONSTRAINT event_episode_event_id_fkey;
ALTER TABLE ONLY public.event_entity DROP CONSTRAINT event_entity_event_id_fkey;
ALTER TABLE ONLY public.event_description DROP CONSTRAINT event_description_event_id_fkey;
ALTER TABLE ONLY public.event DROP CONSTRAINT event_channel_id_fkey;
ALTER TABLE ONLY public.confirm_email DROP CONSTRAINT confirm_email_user_id_fkey;
ALTER TABLE ONLY public.channel_description DROP CONSTRAINT channel_description_channel_id_fkey;
ALTER TABLE ONLY public.channel DROP CONSTRAINT channel_channel_group_id_fkey;
ALTER TABLE ONLY public.channel_bag DROP CONSTRAINT channel_bag_channel_id_fkey;
ALTER TABLE ONLY public.channel_bag DROP CONSTRAINT channel_bag_bag_id_fkey;
ALTER TABLE ONLY public.bag_site DROP CONSTRAINT bag_site_site_id_fkey;
ALTER TABLE ONLY public.bag_site DROP CONSTRAINT bag_site_bag_id_fkey;
ALTER TABLE ONLY public.bag DROP CONSTRAINT bag_provider_id_fkey;
DROP INDEX public.user_device_idx_user_id;
DROP INDEX public.user_channel_idx_user_id;
DROP INDEX public.user_channel_idx_channel_text_id;
DROP INDEX public.site_idx_default_bag_id;
DROP INDEX public.recommendations_idx_event_id;
DROP INDEX public.provider_site_idx_site_id;
DROP INDEX public.provider_site_idx_provider_id;
DROP INDEX public.idx_startepoch;
DROP INDEX public.idx_event_id;
DROP INDEX public.gin_index_values;
DROP INDEX public.gin_index_idx_id;
DROP INDEX public.gin_index_ids;
DROP INDEX public.genre_minor_idx_genremajor_id;
DROP INDEX public.event_sync_message_idx_event_id;
DROP INDEX public.event_import_changelog_notification_queue_idx_event_changelog_i;
DROP INDEX public.event_idx_channel_id;
DROP INDEX public.event_episode_idx_event_id;
DROP INDEX public.event_entity_idx_event_id;
DROP INDEX public.event_description_idx_event_id;
DROP INDEX public.confirm_email_idx_user_id;
DROP INDEX public.channel_idx_channel_group_id;
DROP INDEX public.channel_description_idx_channel_id;
DROP INDEX public.channel_bag_idx_channel_id;
DROP INDEX public.channel_bag_idx_bag_id;
DROP INDEX public.bag_site_idx_site_id;
DROP INDEX public.bag_site_idx_bag_id;
DROP INDEX public.bag_idx_provider_id;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_device DROP CONSTRAINT user_device_pkey;
ALTER TABLE ONLY public.user_channel DROP CONSTRAINT user_channel_pkey;
ALTER TABLE ONLY public.universum_import_digest DROP CONSTRAINT universum_import_digest_pkey;
ALTER TABLE ONLY public.user_device DROP CONSTRAINT uc_user_id_device_name;
ALTER TABLE ONLY public.channel DROP CONSTRAINT uc_textid;
ALTER TABLE ONLY public.provider DROP CONSTRAINT uc_name;
ALTER TABLE ONLY public.genre_minor DROP CONSTRAINT uc_major_minor;
ALTER TABLE ONLY public.recommendations DROP CONSTRAINT uc_event_id;
ALTER TABLE ONLY public.users DROP CONSTRAINT uc_email;
ALTER TABLE ONLY public.confirm_email DROP CONSTRAINT uc_code;
ALTER TABLE ONLY public.users DROP CONSTRAINT uc_auth_provider_id;
ALTER TABLE ONLY public.translation DROP CONSTRAINT translation_pkey;
ALTER TABLE ONLY public.sync_status DROP CONSTRAINT sync_status_pkey;
ALTER TABLE ONLY public.sync_message DROP CONSTRAINT sync_message_pkey;
ALTER TABLE ONLY public.site DROP CONSTRAINT site_pkey;
ALTER TABLE ONLY public.server_sync_status DROP CONSTRAINT server_sync_status_pkey;
ALTER TABLE ONLY public.recommendations DROP CONSTRAINT recommendations_pkey;
ALTER TABLE ONLY public.provider_site DROP CONSTRAINT provider_site_pkey;
ALTER TABLE ONLY public.provider DROP CONSTRAINT provider_pkey;
ALTER TABLE ONLY public.log_item DROP CONSTRAINT log_item_pkey;
ALTER TABLE ONLY public.import_digest DROP CONSTRAINT import_digest_pkey;
ALTER TABLE ONLY public.genre_minor DROP CONSTRAINT genre_minor_pkey;
ALTER TABLE ONLY public.genre_major DROP CONSTRAINT genre_major_pkey;
ALTER TABLE ONLY public.event_sync_message DROP CONSTRAINT event_sync_message_pkey;
ALTER TABLE ONLY public.event_statistics DROP CONSTRAINT event_statistics_pkey;
ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
ALTER TABLE ONLY public.event_import_changelog DROP CONSTRAINT event_import_changelog_pkey;
ALTER TABLE ONLY public.event_import_changelog_notification_queue DROP CONSTRAINT event_import_changelog_notification_queue_pkey;
ALTER TABLE ONLY public.event_episode DROP CONSTRAINT event_episode_pkey;
ALTER TABLE ONLY public.event_entity DROP CONSTRAINT event_entity_pkey;
ALTER TABLE ONLY public.event_description DROP CONSTRAINT event_description_pkey;
ALTER TABLE ONLY public.entries DROP CONSTRAINT entries_pkey;
ALTER TABLE ONLY public.dbix_class_schema_versions DROP CONSTRAINT dbix_class_schema_versions_pkey;
ALTER TABLE ONLY public.confirm_email DROP CONSTRAINT confirm_email_pkey;
ALTER TABLE ONLY public.channel DROP CONSTRAINT channel_pkey;
ALTER TABLE ONLY public.channel_group DROP CONSTRAINT channel_group_pkey;
ALTER TABLE ONLY public.channel_description DROP CONSTRAINT channel_description_pkey;
ALTER TABLE ONLY public.channel_bag DROP CONSTRAINT channel_bag_pkey;
ALTER TABLE ONLY public.bag_site DROP CONSTRAINT bag_site_pkey;
ALTER TABLE ONLY public.bag DROP CONSTRAINT bag_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_device ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sync_status ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sync_message ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.server_sync_status ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.recommendations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.provider ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.log_item ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.genre_minor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.event_sync_message ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.event_import_changelog ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.event_description ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.event ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.channel_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.channel_description ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.channel ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bag_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bag ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.user_device_id_seq;
DROP TABLE public.user_device;
DROP TABLE public.user_channel;
DROP TABLE public.universum_import_digest;
DROP TABLE public.translation;
DROP VIEW public.today;
DROP SEQUENCE public.sync_status_id_seq;
DROP TABLE public.sync_status;
DROP SEQUENCE public.sync_message_id_seq;
DROP TABLE public.sync_message;
DROP TABLE public.site;
DROP SEQUENCE public.server_sync_status_id_seq;
DROP TABLE public.server_sync_status;
DROP SEQUENCE public.recommendations_id_seq;
DROP TABLE public.recommendations;
DROP TABLE public.provider_site;
DROP SEQUENCE public.provider_id_seq;
DROP TABLE public.provider;
DROP SEQUENCE public.log_item_id_seq;
DROP TABLE public.log_item;
DROP TABLE public.import_digest;
DROP TABLE public.gin_index;
DROP SEQUENCE public.genre_minor_id_seq;
DROP TABLE public.genre_minor;
DROP TABLE public.genre_major;
DROP SEQUENCE public.event_sync_message_id_seq;
DROP TABLE public.event_sync_message;
DROP TABLE public.event_statistics;
DROP TABLE public.event_import_changelog_notification_queue;
DROP SEQUENCE public.event_import_changelog_id_seq;
DROP TABLE public.event_import_changelog;
DROP SEQUENCE public.event_id_seq;
DROP TABLE public.event_episode;
DROP SEQUENCE public.event_description_id_seq;
DROP TABLE public.entries;
DROP VIEW public.e;
DROP TABLE public.event_entity;
DROP TABLE public.event_description;
DROP TABLE public.event;
DROP TABLE public.dbix_class_schema_versions;
DROP TABLE public.confirm_email;
DROP SEQUENCE public.channel_id_seq;
DROP SEQUENCE public.channel_group_id_seq;
DROP TABLE public.channel_group;
DROP SEQUENCE public.channel_description_id_seq;
DROP TABLE public.channel_description;
DROP TABLE public.channel_bag;
DROP TABLE public.channel;
DROP SEQUENCE public.bag_site_id_seq;
DROP TABLE public.bag_site;
DROP SEQUENCE public.bag_id_seq;
DROP TABLE public.bag;
DROP AGGREGATE public.textcat_all(text);
DROP PROCEDURAL LANGUAGE plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: textcat_all(text); Type: AGGREGATE; Schema: public; Owner: tvguide
--

CREATE AGGREGATE textcat_all(text) (
    SFUNC = textcat,
    STYPE = text,
    INITCOND = ''
);


ALTER AGGREGATE public.textcat_all(text) OWNER TO tvguide;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bag; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE bag (
    id integer NOT NULL,
    internal_name character varying(255) NOT NULL,
    provider_id integer,
    provider_sort integer,
    type character varying
);


ALTER TABLE public.bag OWNER TO tvguide;

--
-- Name: bag_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE bag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bag_id_seq OWNER TO tvguide;

--
-- Name: bag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE bag_id_seq OWNED BY bag.id;


--
-- Name: bag_site; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE bag_site (
    id integer NOT NULL,
    bag_id integer NOT NULL,
    site_id character varying(8) NOT NULL,
    sort integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.bag_site OWNER TO tvguide;

--
-- Name: bag_site_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE bag_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bag_site_id_seq OWNER TO tvguide;

--
-- Name: bag_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE bag_site_id_seq OWNED BY bag_site.id;


--
-- Name: channel; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE channel (
    id integer NOT NULL,
    internal_name character varying(255) NOT NULL,
    textid character varying(255) NOT NULL,
    serviceid integer,
    universum_id integer,
    first_seen timestamp without time zone,
    source text,
    source_config text,
    channel_group_id integer
);


ALTER TABLE public.channel OWNER TO tvguide;

--
-- Name: channel_bag; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE channel_bag (
    channel_id integer NOT NULL,
    bag_id integer NOT NULL,
    sort integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.channel_bag OWNER TO tvguide;

--
-- Name: channel_description; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE channel_description (
    id integer NOT NULL,
    channel_id integer NOT NULL,
    description text,
    locale character varying(15) NOT NULL
);


ALTER TABLE public.channel_description OWNER TO tvguide;

--
-- Name: channel_description_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE channel_description_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channel_description_id_seq OWNER TO tvguide;

--
-- Name: channel_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE channel_description_id_seq OWNED BY channel_description.id;


--
-- Name: channel_group; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE channel_group (
    id integer NOT NULL
);


ALTER TABLE public.channel_group OWNER TO tvguide;

--
-- Name: channel_group_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE channel_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channel_group_id_seq OWNER TO tvguide;

--
-- Name: channel_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE channel_group_id_seq OWNED BY channel_group.id;


--
-- Name: channel_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channel_id_seq OWNER TO tvguide;

--
-- Name: channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE channel_id_seq OWNED BY channel.id;


--
-- Name: confirm_email; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE confirm_email (
    user_id integer NOT NULL,
    email character varying NOT NULL,
    code character varying NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.confirm_email OWNER TO tvguide;

--
-- Name: dbix_class_schema_versions; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE dbix_class_schema_versions (
    version character varying(10) NOT NULL,
    installed character varying(20) NOT NULL
);


ALTER TABLE public.dbix_class_schema_versions OWNER TO tvguide;

--
-- Name: event; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event (
    id integer NOT NULL,
    channel_id integer NOT NULL,
    startepoch bigint NOT NULL,
    finishepoch bigint NOT NULL,
    genremajor_id integer,
    genreminor_id integer,
    canal_digital_id integer,
    ts timestamp(0) without time zone NOT NULL,
    enriched character varying(20) DEFAULT 'no'::character varying NOT NULL,
    manually_edited boolean DEFAULT false NOT NULL,
    universum_id bigint,
    series_code integer,
    original_title text,
    extra_json text
);


ALTER TABLE public.event OWNER TO tvguide;

--
-- Name: event_description; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_description (
    id integer NOT NULL,
    event_id integer NOT NULL,
    title character varying(255) NOT NULL,
    short_desc text,
    description text,
    language character varying(15) NOT NULL,
    episode_title character varying(255)
);


ALTER TABLE public.event_description OWNER TO tvguide;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_entity (
    event_id integer NOT NULL,
    entity_id character varying NOT NULL
);


ALTER TABLE public.event_entity OWNER TO tvguide;

--
-- Name: e; Type: VIEW; Schema: public; Owner: tvguide
--

CREATE VIEW e AS
    SELECT e.id, c.internal_name AS channel, c.id AS channel_id, COALESCE((SELECT d.title FROM event_description d WHERE ((d.event_id = e.id) AND ((d.language)::text = 'nb_NO'::text))), (SELECT d.title FROM event_description d WHERE ((d.event_id = e.id) AND ((d.language)::text = 'en_UK'::text))), (SELECT d.title FROM event_description d WHERE ((d.event_id = e.id) AND ((d.language)::text = 'da_DK'::text))), (SELECT d.title FROM event_description d WHERE ((d.event_id = e.id) AND ((d.language)::text = 'sv_SE'::text))), (SELECT d.title FROM event_description d WHERE ((d.event_id = e.id) AND ((d.language)::text = 'fi_FI'::text)))) AS title, ('1970-01-01 01:00:00+01'::timestamp with time zone + ((e.startepoch)::double precision * '00:00:01'::interval)) AS start, ('1970-01-01 01:00:00+01'::timestamp with time zone + ((e.finishepoch)::double precision * '00:00:01'::interval)) AS finish, ((e.genremajor_id || '.'::text) || e.genreminor_id) AS genre, (SELECT textcat_all(((event_entity.entity_id)::text || ', '::text)) AS textcat_all FROM event_entity WHERE (event_entity.event_id = e.id)) AS entity FROM (event e JOIN channel c ON ((e.channel_id = c.id)));


ALTER TABLE public.e OWNER TO tvguide;

--
-- Name: entries; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE entries (
    id character varying NOT NULL,
    data bytea NOT NULL,
    class character varying,
    root boolean NOT NULL,
    tied character(1)
);


ALTER TABLE public.entries OWNER TO tvguide;

--
-- Name: event_description_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE event_description_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_description_id_seq OWNER TO tvguide;

--
-- Name: event_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE event_description_id_seq OWNED BY event_description.id;


--
-- Name: event_episode; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_episode (
    event_id integer NOT NULL,
    episode_number integer,
    last_episode_number integer,
    season_number integer
);


ALTER TABLE public.event_episode OWNER TO tvguide;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_id_seq OWNER TO tvguide;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE event_id_seq OWNED BY event.id;


--
-- Name: event_import_changelog; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_import_changelog (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    event_dump text NOT NULL
);


ALTER TABLE public.event_import_changelog OWNER TO tvguide;

--
-- Name: event_import_changelog_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE event_import_changelog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_import_changelog_id_seq OWNER TO tvguide;

--
-- Name: event_import_changelog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE event_import_changelog_id_seq OWNED BY event_import_changelog.id;


--
-- Name: event_import_changelog_notification_queue; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_import_changelog_notification_queue (
    event_changelog_id integer NOT NULL,
    sent boolean DEFAULT false NOT NULL
);


ALTER TABLE public.event_import_changelog_notification_queue OWNER TO tvguide;

--
-- Name: event_statistics; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_statistics (
    event_id integer NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.event_statistics OWNER TO tvguide;

--
-- Name: event_sync_message; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE event_sync_message (
    id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.event_sync_message OWNER TO tvguide;

--
-- Name: event_sync_message_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE event_sync_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_sync_message_id_seq OWNER TO tvguide;

--
-- Name: event_sync_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE event_sync_message_id_seq OWNED BY event_sync_message.id;


--
-- Name: genre_major; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE genre_major (
    id integer NOT NULL,
    textid character varying(255) NOT NULL,
    collapse boolean NOT NULL
);


ALTER TABLE public.genre_major OWNER TO tvguide;

--
-- Name: genre_minor; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE genre_minor (
    id integer NOT NULL,
    genremajor_id integer NOT NULL,
    genreminor_id integer NOT NULL,
    textid character varying(255) NOT NULL
);


ALTER TABLE public.genre_minor OWNER TO tvguide;

--
-- Name: genre_minor_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE genre_minor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_minor_id_seq OWNER TO tvguide;

--
-- Name: genre_minor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE genre_minor_id_seq OWNED BY genre_minor.id;


--
-- Name: gin_index; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE gin_index (
    id character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.gin_index OWNER TO tvguide;

--
-- Name: import_digest; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE import_digest (
    source character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    digest character varying(255) NOT NULL,
    create_time timestamp without time zone NOT NULL
);


ALTER TABLE public.import_digest OWNER TO tvguide;

--
-- Name: log_item; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE log_item (
    id integer NOT NULL,
    loglevel character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    message text NOT NULL,
    ts timestamp without time zone NOT NULL
);


ALTER TABLE public.log_item OWNER TO tvguide;

--
-- Name: log_item_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE log_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_item_id_seq OWNER TO tvguide;

--
-- Name: log_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE log_item_id_seq OWNED BY log_item.id;


--
-- Name: provider; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE provider (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    textid character varying(15)
);


ALTER TABLE public.provider OWNER TO tvguide;

--
-- Name: provider_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE provider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provider_id_seq OWNER TO tvguide;

--
-- Name: provider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE provider_id_seq OWNED BY provider.id;


--
-- Name: provider_site; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE provider_site (
    provider_id integer NOT NULL,
    site_id character varying(8) NOT NULL
);


ALTER TABLE public.provider_site OWNER TO tvguide;

--
-- Name: recommendations; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE recommendations (
    id integer NOT NULL,
    event_id integer,
    body text NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.recommendations OWNER TO tvguide;

--
-- Name: recommendations_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE recommendations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recommendations_id_seq OWNER TO tvguide;

--
-- Name: recommendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE recommendations_id_seq OWNED BY recommendations.id;


--
-- Name: server_sync_status; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE server_sync_status (
    id integer NOT NULL,
    server character varying(16) NOT NULL,
    xapian_index character varying(16) NOT NULL,
    at_message_id integer NOT NULL
);


ALTER TABLE public.server_sync_status OWNER TO tvguide;

--
-- Name: server_sync_status_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE server_sync_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.server_sync_status_id_seq OWNER TO tvguide;

--
-- Name: server_sync_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE server_sync_status_id_seq OWNED BY server_sync_status.id;


--
-- Name: site; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE site (
    id character varying(8) NOT NULL,
    name character varying(255) NOT NULL,
    config_json text DEFAULT '{}'::text,
    default_bag_id integer NOT NULL,
    api_key character varying(255) NOT NULL,
    advertisement text,
    notification_text text
);


ALTER TABLE public.site OWNER TO tvguide;

--
-- Name: sync_message; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE sync_message (
    id integer NOT NULL,
    type character varying(16) NOT NULL,
    uid character varying(128) NOT NULL
);


ALTER TABLE public.sync_message OWNER TO tvguide;

--
-- Name: sync_message_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE sync_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sync_message_id_seq OWNER TO tvguide;

--
-- Name: sync_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE sync_message_id_seq OWNED BY sync_message.id;


--
-- Name: sync_status; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE sync_status (
    id integer NOT NULL,
    server character varying(16) NOT NULL,
    xapian_index character varying(16) NOT NULL,
    type character varying(16) NOT NULL,
    at_message_id integer NOT NULL
);


ALTER TABLE public.sync_status OWNER TO tvguide;

--
-- Name: sync_status_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE sync_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sync_status_id_seq OWNER TO tvguide;

--
-- Name: sync_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE sync_status_id_seq OWNED BY sync_status.id;


--
-- Name: today; Type: VIEW; Schema: public; Owner: tvguide
--

CREATE VIEW today AS
    SELECT e.id, e.channel, e.channel_id, e.title, e.start, e.finish, e.genre, e.entity FROM e WHERE ((e.start >= (date_trunc('day'::text, now()) + '06:00:00'::interval)) AND (e.start < ((date_trunc('day'::text, now()) + '1 day'::interval) + '06:00:00'::interval))) ORDER BY e.channel_id, e.start;


ALTER TABLE public.today OWNER TO tvguide;

--
-- Name: translation; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE translation (
    key character varying(255) NOT NULL,
    locale character varying(5) NOT NULL,
    translation character varying(255) NOT NULL,
    comment character varying(255)
);


ALTER TABLE public.translation OWNER TO tvguide;

--
-- Name: universum_import_digest; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE universum_import_digest (
    filename character varying(255) NOT NULL,
    universum_channel_id character varying(255) NOT NULL,
    digest character varying(255) NOT NULL,
    create_time timestamp without time zone NOT NULL
);


ALTER TABLE public.universum_import_digest OWNER TO tvguide;

--
-- Name: user_channel; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE user_channel (
    user_id integer NOT NULL,
    sort integer DEFAULT 1 NOT NULL,
    channel_text_id character varying NOT NULL
);


ALTER TABLE public.user_channel OWNER TO tvguide;

--
-- Name: user_device; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE user_device (
    id integer NOT NULL,
    user_id integer NOT NULL,
    device_name character varying NOT NULL,
    device_type character varying NOT NULL,
    device_token character varying
);


ALTER TABLE public.user_device OWNER TO tvguide;

--
-- Name: user_device_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE user_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_device_id_seq OWNER TO tvguide;

--
-- Name: user_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE user_device_id_seq OWNED BY user_device.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email text NOT NULL,
    nick text NOT NULL,
    password text,
    registered_at timestamp without time zone,
    updated_at timestamp without time zone,
    email_confirmed boolean DEFAULT false NOT NULL,
    auth_provider_id integer,
    agreed_to_terms boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO tvguide;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tvguide
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tvguide;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tvguide
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE bag ALTER COLUMN id SET DEFAULT nextval('bag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE bag_site ALTER COLUMN id SET DEFAULT nextval('bag_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE channel ALTER COLUMN id SET DEFAULT nextval('channel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE channel_description ALTER COLUMN id SET DEFAULT nextval('channel_description_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE channel_group ALTER COLUMN id SET DEFAULT nextval('channel_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE event ALTER COLUMN id SET DEFAULT nextval('event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE event_description ALTER COLUMN id SET DEFAULT nextval('event_description_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE event_import_changelog ALTER COLUMN id SET DEFAULT nextval('event_import_changelog_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE event_sync_message ALTER COLUMN id SET DEFAULT nextval('event_sync_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE genre_minor ALTER COLUMN id SET DEFAULT nextval('genre_minor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE log_item ALTER COLUMN id SET DEFAULT nextval('log_item_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE provider ALTER COLUMN id SET DEFAULT nextval('provider_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE recommendations ALTER COLUMN id SET DEFAULT nextval('recommendations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE server_sync_status ALTER COLUMN id SET DEFAULT nextval('server_sync_status_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE sync_message ALTER COLUMN id SET DEFAULT nextval('sync_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE sync_status ALTER COLUMN id SET DEFAULT nextval('sync_status_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE user_device ALTER COLUMN id SET DEFAULT nextval('user_device_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tvguide
--

ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: bag_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY bag
    ADD CONSTRAINT bag_pkey PRIMARY KEY (id);


--
-- Name: bag_site_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY bag_site
    ADD CONSTRAINT bag_site_pkey PRIMARY KEY (id);


--
-- Name: channel_bag_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY channel_bag
    ADD CONSTRAINT channel_bag_pkey PRIMARY KEY (bag_id, channel_id);


--
-- Name: channel_description_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY channel_description
    ADD CONSTRAINT channel_description_pkey PRIMARY KEY (id);


--
-- Name: channel_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY channel_group
    ADD CONSTRAINT channel_group_pkey PRIMARY KEY (id);


--
-- Name: channel_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY channel
    ADD CONSTRAINT channel_pkey PRIMARY KEY (id);


--
-- Name: confirm_email_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY confirm_email
    ADD CONSTRAINT confirm_email_pkey PRIMARY KEY (user_id, code);


--
-- Name: dbix_class_schema_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY dbix_class_schema_versions
    ADD CONSTRAINT dbix_class_schema_versions_pkey PRIMARY KEY (version);


--
-- Name: entries_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY entries
    ADD CONSTRAINT entries_pkey PRIMARY KEY (id);


--
-- Name: event_description_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_description
    ADD CONSTRAINT event_description_pkey PRIMARY KEY (id);


--
-- Name: event_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_entity
    ADD CONSTRAINT event_entity_pkey PRIMARY KEY (event_id, entity_id);


--
-- Name: event_episode_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_episode
    ADD CONSTRAINT event_episode_pkey PRIMARY KEY (event_id);


--
-- Name: event_import_changelog_notification_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_import_changelog_notification_queue
    ADD CONSTRAINT event_import_changelog_notification_queue_pkey PRIMARY KEY (event_changelog_id);


--
-- Name: event_import_changelog_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_import_changelog
    ADD CONSTRAINT event_import_changelog_pkey PRIMARY KEY (id);


--
-- Name: event_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: event_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_statistics
    ADD CONSTRAINT event_statistics_pkey PRIMARY KEY (event_id);


--
-- Name: event_sync_message_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY event_sync_message
    ADD CONSTRAINT event_sync_message_pkey PRIMARY KEY (id);


--
-- Name: genre_major_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY genre_major
    ADD CONSTRAINT genre_major_pkey PRIMARY KEY (id);


--
-- Name: genre_minor_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY genre_minor
    ADD CONSTRAINT genre_minor_pkey PRIMARY KEY (id);


--
-- Name: import_digest_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY import_digest
    ADD CONSTRAINT import_digest_pkey PRIMARY KEY (source, key);


--
-- Name: log_item_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY log_item
    ADD CONSTRAINT log_item_pkey PRIMARY KEY (id);


--
-- Name: provider_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY provider
    ADD CONSTRAINT provider_pkey PRIMARY KEY (id);


--
-- Name: provider_site_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY provider_site
    ADD CONSTRAINT provider_site_pkey PRIMARY KEY (provider_id, site_id);


--
-- Name: recommendations_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY recommendations
    ADD CONSTRAINT recommendations_pkey PRIMARY KEY (id);


--
-- Name: server_sync_status_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY server_sync_status
    ADD CONSTRAINT server_sync_status_pkey PRIMARY KEY (id);


--
-- Name: site_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- Name: sync_message_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY sync_message
    ADD CONSTRAINT sync_message_pkey PRIMARY KEY (id);


--
-- Name: sync_status_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY sync_status
    ADD CONSTRAINT sync_status_pkey PRIMARY KEY (id);


--
-- Name: translation_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY translation
    ADD CONSTRAINT translation_pkey PRIMARY KEY (key, locale);


--
-- Name: uc_auth_provider_id; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT uc_auth_provider_id UNIQUE (auth_provider_id);


--
-- Name: uc_code; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY confirm_email
    ADD CONSTRAINT uc_code UNIQUE (code);


--
-- Name: uc_email; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT uc_email UNIQUE (email);


--
-- Name: uc_event_id; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY recommendations
    ADD CONSTRAINT uc_event_id UNIQUE (event_id);


--
-- Name: uc_major_minor; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY genre_minor
    ADD CONSTRAINT uc_major_minor UNIQUE (genremajor_id, genreminor_id);


--
-- Name: uc_name; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY provider
    ADD CONSTRAINT uc_name UNIQUE (name);


--
-- Name: uc_textid; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY channel
    ADD CONSTRAINT uc_textid UNIQUE (textid);


--
-- Name: uc_user_id_device_name; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY user_device
    ADD CONSTRAINT uc_user_id_device_name UNIQUE (user_id, device_name);


--
-- Name: universum_import_digest_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY universum_import_digest
    ADD CONSTRAINT universum_import_digest_pkey PRIMARY KEY (filename, universum_channel_id);


--
-- Name: user_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY user_channel
    ADD CONSTRAINT user_channel_pkey PRIMARY KEY (user_id, channel_text_id);


--
-- Name: user_device_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY user_device
    ADD CONSTRAINT user_device_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: tvguide; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: bag_idx_provider_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX bag_idx_provider_id ON bag USING btree (provider_id);


--
-- Name: bag_site_idx_bag_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX bag_site_idx_bag_id ON bag_site USING btree (bag_id);


--
-- Name: bag_site_idx_site_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX bag_site_idx_site_id ON bag_site USING btree (site_id);


--
-- Name: channel_bag_idx_bag_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX channel_bag_idx_bag_id ON channel_bag USING btree (bag_id);


--
-- Name: channel_bag_idx_channel_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX channel_bag_idx_channel_id ON channel_bag USING btree (channel_id);


--
-- Name: channel_description_idx_channel_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX channel_description_idx_channel_id ON channel_description USING btree (channel_id);


--
-- Name: channel_idx_channel_group_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX channel_idx_channel_group_id ON channel USING btree (channel_group_id);


--
-- Name: confirm_email_idx_user_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX confirm_email_idx_user_id ON confirm_email USING btree (user_id);


--
-- Name: event_description_idx_event_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX event_description_idx_event_id ON event_description USING btree (event_id);


--
-- Name: event_entity_idx_event_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX event_entity_idx_event_id ON event_entity USING btree (event_id);


--
-- Name: event_episode_idx_event_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX event_episode_idx_event_id ON event_episode USING btree (event_id);


--
-- Name: event_idx_channel_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX event_idx_channel_id ON event USING btree (channel_id);


--
-- Name: event_import_changelog_notification_queue_idx_event_changelog_i; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX event_import_changelog_notification_queue_idx_event_changelog_i ON event_import_changelog_notification_queue USING btree (event_changelog_id);


--
-- Name: event_sync_message_idx_event_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX event_sync_message_idx_event_id ON event_sync_message USING btree (event_id);


--
-- Name: genre_minor_idx_genremajor_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX genre_minor_idx_genremajor_id ON genre_minor USING btree (genremajor_id);


--
-- Name: gin_index_ids; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX gin_index_ids ON gin_index USING btree (id);


--
-- Name: gin_index_idx_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX gin_index_idx_id ON gin_index USING btree (id);


--
-- Name: gin_index_values; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX gin_index_values ON gin_index USING btree (value);


--
-- Name: idx_event_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX idx_event_id ON event USING btree (canal_digital_id);


--
-- Name: idx_startepoch; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX idx_startepoch ON event USING btree (startepoch);


--
-- Name: provider_site_idx_provider_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX provider_site_idx_provider_id ON provider_site USING btree (provider_id);


--
-- Name: provider_site_idx_site_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX provider_site_idx_site_id ON provider_site USING btree (site_id);


--
-- Name: recommendations_idx_event_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX recommendations_idx_event_id ON recommendations USING btree (event_id);


--
-- Name: site_idx_default_bag_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX site_idx_default_bag_id ON site USING btree (default_bag_id);


--
-- Name: user_channel_idx_channel_text_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX user_channel_idx_channel_text_id ON user_channel USING btree (channel_text_id);


--
-- Name: user_channel_idx_user_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX user_channel_idx_user_id ON user_channel USING btree (user_id);


--
-- Name: user_device_idx_user_id; Type: INDEX; Schema: public; Owner: tvguide; Tablespace: 
--

CREATE INDEX user_device_idx_user_id ON user_device USING btree (user_id);


--
-- Name: bag_provider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY bag
    ADD CONSTRAINT bag_provider_id_fkey FOREIGN KEY (provider_id) REFERENCES provider(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: bag_site_bag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY bag_site
    ADD CONSTRAINT bag_site_bag_id_fkey FOREIGN KEY (bag_id) REFERENCES bag(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: bag_site_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY bag_site
    ADD CONSTRAINT bag_site_site_id_fkey FOREIGN KEY (site_id) REFERENCES site(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: channel_bag_bag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY channel_bag
    ADD CONSTRAINT channel_bag_bag_id_fkey FOREIGN KEY (bag_id) REFERENCES bag(id) ON UPDATE CASCADE DEFERRABLE;


--
-- Name: channel_bag_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY channel_bag
    ADD CONSTRAINT channel_bag_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES channel(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: channel_channel_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY channel
    ADD CONSTRAINT channel_channel_group_id_fkey FOREIGN KEY (channel_group_id) REFERENCES channel_group(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: channel_description_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY channel_description
    ADD CONSTRAINT channel_description_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES channel(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: confirm_email_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY confirm_email
    ADD CONSTRAINT confirm_email_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: event_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES channel(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: event_description_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event_description
    ADD CONSTRAINT event_description_event_id_fkey FOREIGN KEY (event_id) REFERENCES event(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: event_entity_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event_entity
    ADD CONSTRAINT event_entity_event_id_fkey FOREIGN KEY (event_id) REFERENCES event(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: event_episode_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event_episode
    ADD CONSTRAINT event_episode_event_id_fkey FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE DEFERRABLE;


--
-- Name: event_import_changelog_notification_que_event_changelog_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event_import_changelog_notification_queue
    ADD CONSTRAINT event_import_changelog_notification_que_event_changelog_id_fkey FOREIGN KEY (event_changelog_id) REFERENCES event_import_changelog(id) DEFERRABLE;


--
-- Name: event_statistics_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event_statistics
    ADD CONSTRAINT event_statistics_event_id_fkey FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE DEFERRABLE;


--
-- Name: genre_minor_fk; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY event
    ADD CONSTRAINT genre_minor_fk FOREIGN KEY (genremajor_id, genreminor_id) REFERENCES genre_minor(genremajor_id, genreminor_id);


--
-- Name: genre_minor_genremajor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY genre_minor
    ADD CONSTRAINT genre_minor_genremajor_id_fkey FOREIGN KEY (genremajor_id) REFERENCES genre_major(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: gin_index_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY gin_index
    ADD CONSTRAINT gin_index_id_fkey FOREIGN KEY (id) REFERENCES entries(id) DEFERRABLE;


--
-- Name: provider_site_provider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY provider_site
    ADD CONSTRAINT provider_site_provider_id_fkey FOREIGN KEY (provider_id) REFERENCES provider(id) DEFERRABLE;


--
-- Name: provider_site_provider_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY provider_site
    ADD CONSTRAINT provider_site_provider_id_fkey1 FOREIGN KEY (provider_id) REFERENCES provider(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: provider_site_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY provider_site
    ADD CONSTRAINT provider_site_site_id_fkey FOREIGN KEY (site_id) REFERENCES site(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: recommendations_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY recommendations
    ADD CONSTRAINT recommendations_event_id_fkey FOREIGN KEY (event_id) REFERENCES event(id) DEFERRABLE;


--
-- Name: site_default_bag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_default_bag_id_fkey FOREIGN KEY (default_bag_id) REFERENCES bag(id) DEFERRABLE;


--
-- Name: site_default_bag_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_default_bag_id_fkey1 FOREIGN KEY (default_bag_id) REFERENCES bag(id) ON DELETE CASCADE DEFERRABLE;


--
-- Name: user_channel_channel_text_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY user_channel
    ADD CONSTRAINT user_channel_channel_text_id_fkey FOREIGN KEY (channel_text_id) REFERENCES channel(textid) DEFERRABLE;


--
-- Name: user_channel_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY user_channel
    ADD CONSTRAINT user_channel_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: user_device_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tvguide
--

ALTER TABLE ONLY user_device
    ADD CONSTRAINT user_device_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

