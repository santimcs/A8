--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.standings DROP CONSTRAINT fk_rails_e9d6ea91b3;
ALTER TABLE ONLY public.fixtures DROP CONSTRAINT fk_rails_e99c2e4db6;
ALTER TABLE ONLY public.fixtures DROP CONSTRAINT fk_rails_9af4cca3ac;
ALTER TABLE ONLY public.fixtures DROP CONSTRAINT fk_rails_45a97a2b64;
ALTER TABLE ONLY public.results DROP CONSTRAINT fk_rails_24208fad15;
ALTER TABLE ONLY public.fixtures DROP CONSTRAINT fk_rails_0c45715fb6;
DROP INDEX public.index_teams_on_name;
DROP INDEX public.index_standings_on_team_id;
DROP INDEX public.index_sessions_on_sequence;
DROP INDEX public.index_rounds_on_sequence;
DROP INDEX public.index_results_on_fixture_id;
DROP INDEX public.index_fixtures_on_session_id;
DROP INDEX public.index_fixtures_on_round_id;
DROP INDEX public.index_fixtures_on_criterium_id;
DROP INDEX public.index_fixtures_on_channel_id;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
ALTER TABLE ONLY public.standings DROP CONSTRAINT standings_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.rounds DROP CONSTRAINT rounds_pkey;
ALTER TABLE ONLY public.results DROP CONSTRAINT results_pkey;
ALTER TABLE ONLY public.fixtures DROP CONSTRAINT fixtures_pkey;
ALTER TABLE ONLY public.criteria DROP CONSTRAINT criteria_pkey;
ALTER TABLE ONLY public.channels DROP CONSTRAINT channels_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE public.teams ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.standings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.rounds ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.results ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fixtures ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.criteria ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.channels ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.teams_id_seq;
DROP TABLE public.teams;
DROP SEQUENCE public.standings_id_seq;
DROP TABLE public.standings;
DROP SEQUENCE public.sessions_id_seq;
DROP TABLE public.sessions;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.rounds_id_seq;
DROP TABLE public.rounds;
DROP SEQUENCE public.results_id_seq;
DROP TABLE public.results;
DROP SEQUENCE public.fixtures_id_seq;
DROP TABLE public.fixtures;
DROP SEQUENCE public.criteria_id_seq;
DROP TABLE public.criteria;
DROP SEQUENCE public.channels_id_seq;
DROP TABLE public.channels;
DROP TABLE public.ar_internal_metadata;
DROP EXTENSION plpgsql;
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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- Name: channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE channels (
    id bigint NOT NULL,
    number integer,
    name character varying,
    logo character varying,
    url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE channels OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE channels_id_seq OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE channels_id_seq OWNED BY channels.id;


--
-- Name: criteria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE criteria (
    id bigint NOT NULL,
    show_date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE criteria OWNER TO postgres;

--
-- Name: criteria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE criteria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE criteria_id_seq OWNER TO postgres;

--
-- Name: criteria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE criteria_id_seq OWNED BY criteria.id;


--
-- Name: fixtures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fixtures (
    id bigint NOT NULL,
    round_id bigint,
    date date,
    session_id bigint,
    home_id integer,
    away_id integer,
    channel_id bigint,
    criterium_id bigint DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE fixtures OWNER TO postgres;

--
-- Name: fixtures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fixtures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fixtures_id_seq OWNER TO postgres;

--
-- Name: fixtures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fixtures_id_seq OWNED BY fixtures.id;


--
-- Name: results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE results (
    id bigint NOT NULL,
    fixture_id bigint,
    home_goals integer,
    away_goals integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE results OWNER TO postgres;

--
-- Name: results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE results_id_seq OWNER TO postgres;

--
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE results_id_seq OWNED BY results.id;


--
-- Name: rounds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rounds (
    id bigint NOT NULL,
    sequence integer,
    name character varying
);


ALTER TABLE rounds OWNER TO postgres;

--
-- Name: rounds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rounds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rounds_id_seq OWNER TO postgres;

--
-- Name: rounds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rounds_id_seq OWNED BY rounds.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sessions (
    id bigint NOT NULL,
    sequence integer,
    "time" time without time zone
);


ALTER TABLE sessions OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sessions_id_seq OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sessions_id_seq OWNED BY sessions.id;


--
-- Name: standings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE standings (
    id bigint NOT NULL,
    team_id bigint,
    wins integer,
    draws integer,
    losses integer,
    goals_for integer,
    goals_against integer,
    points integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE standings OWNER TO postgres;

--
-- Name: standings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE standings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE standings_id_seq OWNER TO postgres;

--
-- Name: standings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE standings_id_seq OWNED BY standings.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE teams (
    id bigint NOT NULL,
    name character varying,
    "group" character varying,
    ranking integer,
    flag character varying
);


ALTER TABLE teams OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE teams_id_seq OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE teams_id_seq OWNED BY teams.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY channels ALTER COLUMN id SET DEFAULT nextval('channels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY criteria ALTER COLUMN id SET DEFAULT nextval('criteria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fixtures ALTER COLUMN id SET DEFAULT nextval('fixtures_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results ALTER COLUMN id SET DEFAULT nextval('results_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rounds ALTER COLUMN id SET DEFAULT nextval('rounds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessions ALTER COLUMN id SET DEFAULT nextval('sessions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY standings ALTER COLUMN id SET DEFAULT nextval('standings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY teams ALTER COLUMN id SET DEFAULT nextval('teams_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-06-10 04:21:05.596706	2018-06-10 04:21:05.596706
\.


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY channels (id, number, name, logo, url, created_at, updated_at) FROM stdin;
3	24	True4U	true4you2.jpg	tv.trueid.net/live/true4U	2018-06-10 16:27:49.544774	2018-06-10 16:27:49.544774
1	5	CH5	CH 5.png	app.tv5.co.th/	2018-06-10 16:13:14.611403	2018-06-10 16:23:59.578644
2	34	Amarin	AMARIN.png	www.amarintv.com/live-tv/	2018-06-10 16:27:21.124476	2018-06-10 16:34:05.182991
\.


--
-- Name: channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('channels_id_seq', 3, true);


--
-- Data for Name: criteria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY criteria (id, show_date, created_at, updated_at) FROM stdin;
1	2018-07-06	2018-06-10 13:12:31.131722	2018-07-06 14:07:10.725888
\.


--
-- Name: criteria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('criteria_id_seq', 1, true);


--
-- Data for Name: fixtures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fixtures (id, round_id, date, session_id, home_id, away_id, channel_id, criterium_id, created_at, updated_at) FROM stdin;
1	1	2018-06-14	5	1	2	1	1	2018-06-11 15:37:28.870214	2018-06-11 15:37:28.870214
3	1	2018-06-15	5	7	8	1	1	2018-06-11 16:07:06.787889	2018-06-11 16:07:06.787889
5	1	2018-06-16	1	9	10	1	1	2018-06-11 16:08:12.549946	2018-06-11 16:08:12.549946
10	1	2018-06-17	5	21	22	1	1	2018-06-11 16:10:52.782723	2018-06-11 16:10:52.782723
12	1	2018-06-18	2	23	24	1	1	2018-06-11 16:12:27.800254	2018-06-11 16:12:27.800254
14	1	2018-06-19	7	27	28	1	1	2018-06-11 16:14:19.445655	2018-06-11 16:14:19.445655
2	1	2018-06-15	2	3	4	2	1	2018-06-11 16:06:32.305698	2018-06-11 16:25:29.525393
6	1	2018-06-16	3	13	14	3	1	2018-06-11 16:08:40.730056	2018-06-11 16:26:44.035917
7	1	2018-06-16	6	11	12	2	1	2018-06-11 16:09:15.079477	2018-06-11 16:27:22.350405
4	1	2018-06-16	7	5	6	3	1	2018-06-11 16:07:48.138629	2018-06-11 16:28:03.454104
8	1	2018-06-17	8	15	16	3	1	2018-06-11 16:09:48.265632	2018-06-11 16:32:34.712035
9	1	2018-06-17	2	19	20	2	1	2018-06-11 16:10:19.658416	2018-06-11 16:33:26.790709
11	1	2018-06-18	7	17	18	2	1	2018-06-11 16:11:33.208575	2018-06-11 16:34:10.771395
13	1	2018-06-18	5	25	26	3	1	2018-06-11 16:13:07.536596	2018-06-11 16:34:44.037399
15	1	2018-06-19	2	31	32	3	1	2018-06-11 16:14:48.955294	2018-06-11 16:35:22.437455
16	1	2018-06-19	5	29	30	2	1	2018-06-11 16:15:24.566282	2018-06-11 16:36:07.519519
17	1	2018-06-20	7	1	3	3	1	2018-06-18 02:21:01.296312	2018-06-18 02:21:01.296312
18	1	2018-06-20	2	5	7	2	1	2018-06-18 02:21:43.953192	2018-06-18 02:21:43.953192
19	1	2018-06-20	5	4	2	1	1	2018-06-18 02:22:25.467199	2018-06-18 02:22:25.467199
20	1	2018-06-21	7	8	6	2	1	2018-06-18 02:23:19.449615	2018-06-18 02:23:19.449615
21	1	2018-06-21	2	12	10	1	1	2018-06-18 02:23:59.145153	2018-06-18 02:23:59.145153
22	1	2018-06-21	5	9	11	3	1	2018-06-18 02:24:36.595313	2018-06-18 02:24:36.595313
23	1	2018-06-22	7	13	15	1	1	2018-06-18 02:25:18.050004	2018-06-18 02:25:18.050004
24	1	2018-06-22	2	17	19	3	1	2018-06-18 02:25:47.772188	2018-06-18 02:25:47.772188
25	1	2018-06-22	5	16	14	2	1	2018-06-18 02:26:39.863561	2018-06-18 02:26:39.863561
26	1	2018-06-23	7	20	18	3	1	2018-06-18 02:27:25.293309	2018-06-18 02:27:25.293309
27	1	2018-06-23	2	25	27	2	1	2018-06-18 02:27:59.708787	2018-06-18 02:27:59.708787
28	1	2018-06-23	5	24	22	1	1	2018-06-18 02:28:25.088954	2018-06-18 02:28:25.088954
29	1	2018-06-24	7	21	23	2	1	2018-06-18 02:29:06.734511	2018-06-18 02:29:06.734511
30	1	2018-06-24	2	28	26	1	1	2018-06-18 02:29:31.739345	2018-06-18 02:29:31.739345
31	1	2018-06-24	5	32	30	3	1	2018-06-18 02:29:59.522109	2018-06-18 02:29:59.522109
32	1	2018-06-25	7	29	31	1	1	2018-06-18 02:30:54.23898	2018-06-18 02:30:54.23898
33	1	2018-06-25	4	4	1	3	1	2018-06-24 13:38:23.114871	2018-06-24 13:38:23.114871
34	1	2018-06-25	4	2	3	2	1	2018-06-24 13:38:55.435496	2018-06-24 13:38:55.435496
35	1	2018-06-26	7	8	5	3	1	2018-06-24 13:39:52.346737	2018-06-24 13:39:52.346737
36	1	2018-06-26	7	6	7	2	1	2018-06-24 13:40:15.204503	2018-06-24 13:40:15.204503
37	1	2018-06-26	4	12	9	1	1	2018-06-24 13:40:53.215539	2018-06-24 13:40:53.215539
38	1	2018-06-26	4	10	11	2	1	2018-06-24 13:41:15.91876	2018-06-24 13:41:15.91876
39	1	2018-06-27	7	16	13	1	1	2018-06-24 13:42:04.623961	2018-06-24 13:42:04.623961
40	1	2018-06-27	7	14	15	3	1	2018-06-24 13:42:26.704634	2018-06-24 13:42:26.704634
41	1	2018-06-27	4	22	23	1	1	2018-06-24 13:42:59.117567	2018-06-24 13:42:59.117567
42	1	2018-06-27	4	24	21	3	1	2018-06-24 13:43:22.07237	2018-06-24 13:43:22.07237
43	1	2018-06-28	7	20	17	2	1	2018-06-24 13:44:00.809635	2018-06-24 13:44:00.809635
44	1	2018-06-28	7	18	19	3	1	2018-06-24 13:44:22.212592	2018-06-24 13:44:22.212592
45	1	2018-06-28	4	32	29	2	1	2018-06-24 13:44:57.012148	2018-06-24 13:44:57.012148
46	1	2018-06-28	4	30	31	1	1	2018-06-24 13:45:23.133379	2018-06-24 13:45:23.133379
47	1	2018-06-29	7	26	27	2	1	2018-06-24 13:46:03.476364	2018-06-24 13:46:03.476364
48	1	2018-06-29	7	28	25	1	1	2018-06-24 13:46:34.404734	2018-06-24 13:46:34.404734
64	6	2018-07-15	5	9	15	3	1	2018-07-12 08:33:25.474678	2018-07-12 08:33:25.474678
51	2	2018-07-01	4	6	1	1	1	2018-06-26 19:56:06.262215	2018-06-26 20:05:15.62069
49	2	2018-06-30	4	9	13	3	1	2018-06-26 19:54:28.685912	2018-06-30 12:19:05.627771
50	2	2018-07-01	7	4	5	2	1	2018-06-26 19:55:38.543351	2018-06-30 12:19:38.214542
52	2	2018-07-02	7	15	12	3	1	2018-06-26 19:56:33.003914	2018-06-30 12:21:18.692551
57	3	2018-07-06	4	4	9	1	1	2018-07-03 15:43:58.430299	2018-07-03 15:43:58.430299
58	3	2018-07-07	7	17	25	3	1	2018-07-03 15:44:31.875862	2018-07-03 15:44:31.875862
56	2	2018-07-04	7	31	28	2	1	2018-06-29 02:42:31.185612	2018-07-03 20:56:31.288509
55	2	2018-07-03	4	23	18	3	1	2018-06-29 02:41:55.834292	2018-07-03 20:56:58.028073
54	2	2018-07-03	7	25	32	1	1	2018-06-29 02:41:20.222522	2018-07-03 20:57:17.066678
53	2	2018-07-02	4	17	22	2	1	2018-06-29 02:40:56.431262	2018-07-03 20:58:29.440921
59	3	2018-07-07	4	23	28	2	1	2018-07-06 14:09:13.73972	2018-07-06 14:09:24.600788
60	3	2018-07-08	7	1	15	1	1	2018-07-06 14:10:41.146933	2018-07-06 14:10:41.146933
61	4	2018-07-11	7	9	25	1	1	2018-07-07 15:56:14.365284	2018-07-07 15:56:14.365284
62	4	2018-07-12	7	15	28	3	1	2018-07-09 16:04:26.550026	2018-07-09 16:04:26.550026
63	5	2018-07-14	4	25	28	3	1	2018-07-12 08:32:51.089036	2018-07-12 08:32:51.089036
\.


--
-- Name: fixtures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fixtures_id_seq', 64, true);


--
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY results (id, fixture_id, home_goals, away_goals, created_at, updated_at) FROM stdin;
3	1	5	0	2018-06-14 17:11:46.165082	2018-06-14 17:11:46.165082
4	2	0	1	2018-06-15 13:48:25.845498	2018-06-15 13:48:25.845498
5	3	0	1	2018-06-15 16:55:56.725079	2018-06-15 16:55:56.725079
6	4	3	3	2018-06-15 19:52:39.210631	2018-06-15 19:52:39.210631
7	5	2	1	2018-06-16 11:52:30.780923	2018-06-16 11:52:30.780923
8	6	1	1	2018-06-16 14:54:21.940704	2018-06-16 14:54:21.940704
9	7	0	1	2018-06-16 17:54:21.157594	2018-06-16 17:54:21.157594
10	8	2	0	2018-06-17 00:19:38.142483	2018-06-17 00:19:38.142483
11	9	0	1	2018-06-17 13:55:03.850144	2018-06-17 13:55:03.850144
12	10	0	1	2018-06-17 16:50:39.852501	2018-06-17 16:50:39.852501
13	11	1	1	2018-06-18 00:33:49.243899	2018-06-18 00:33:49.243899
14	12	1	0	2018-06-18 13:52:03.881209	2018-06-18 13:52:03.881209
15	13	3	0	2018-06-18 16:53:41.420355	2018-06-18 16:53:41.420355
16	14	1	2	2018-06-18 19:53:30.108618	2018-06-18 19:53:30.108618
17	15	1	2	2018-06-19 13:52:53.863013	2018-06-19 13:52:53.863013
18	16	1	2	2018-06-19 16:54:48.259072	2018-06-19 16:54:48.259072
19	17	3	1	2018-06-20 00:20:56.670585	2018-06-20 00:20:56.670585
20	18	1	0	2018-06-20 13:53:49.176765	2018-06-20 13:53:49.176765
21	19	1	0	2018-06-20 16:52:07.789498	2018-06-20 16:52:07.789498
22	20	0	1	2018-06-21 01:37:33.588381	2018-06-21 01:37:33.588381
23	21	1	1	2018-06-21 13:50:27.230408	2018-06-21 13:50:27.230408
24	22	1	0	2018-06-21 16:53:08.080062	2018-06-21 16:53:08.080062
25	23	0	3	2018-06-22 02:18:58.113991	2018-06-22 02:18:58.113991
26	24	2	0	2018-06-22 13:53:39.173467	2018-06-22 13:53:39.173467
27	25	2	0	2018-06-22 16:55:42.82287	2018-06-22 16:55:42.82287
28	26	1	2	2018-06-23 02:21:55.930511	2018-06-23 02:21:55.930511
29	27	5	2	2018-06-23 14:09:44.300747	2018-06-23 14:09:44.300747
30	28	1	2	2018-06-23 16:53:13.230681	2018-06-23 16:53:13.230681
31	29	2	1	2018-06-23 19:53:04.157621	2018-06-23 19:53:04.157621
32	30	6	1	2018-06-24 13:53:02.913893	2018-06-24 13:53:02.913893
33	31	2	2	2018-06-24 16:53:02.612981	2018-06-24 16:53:02.612981
34	32	0	3	2018-06-25 03:53:41.619497	2018-06-25 03:53:41.619497
35	33	3	0	2018-06-25 15:54:04.490187	2018-06-25 15:54:04.490187
36	34	2	1	2018-06-25 15:58:23.989291	2018-06-25 15:58:23.989291
37	35	1	1	2018-06-26 13:37:14.386706	2018-06-26 13:37:14.386706
38	36	2	2	2018-06-26 13:37:42.799351	2018-06-26 13:37:42.799351
39	37	0	0	2018-06-26 15:51:01.729802	2018-06-26 15:51:01.729802
40	38	0	2	2018-06-26 15:53:14.573254	2018-06-26 15:53:14.573254
41	39	1	2	2018-06-26 19:53:21.984273	2018-06-26 19:53:21.984273
42	40	1	2	2018-06-26 19:53:32.364437	2018-06-26 19:53:32.364437
43	41	0	3	2018-06-27 15:53:57.368049	2018-06-27 15:53:57.368049
44	42	2	0	2018-06-27 15:55:41.339122	2018-06-27 15:55:41.339122
45	43	0	2	2018-06-28 02:30:22.50669	2018-06-28 02:30:22.50669
46	44	2	2	2018-06-28 02:30:46.158923	2018-06-28 02:30:46.158923
47	45	0	1	2018-06-28 15:52:18.306588	2018-06-28 15:52:18.306588
48	46	0	1	2018-06-28 15:53:17.011079	2018-06-28 15:53:17.011079
49	47	1	2	2018-06-29 02:39:21.570378	2018-06-29 02:39:21.570378
50	48	0	1	2018-06-29 02:39:43.613709	2018-06-29 02:39:43.613709
51	49	4	3	2018-06-30 15:53:26.109166	2018-06-30 15:53:26.109166
52	50	2	1	2018-06-30 19:55:18.229333	2018-06-30 19:55:18.229333
53	51	3	4	2018-07-01 16:44:08.853982	2018-07-01 16:44:08.853982
54	52	3	2	2018-07-02 02:12:58.18302	2018-07-02 02:12:58.18302
55	53	2	0	2018-07-02 19:31:47.632922	2018-07-02 19:31:47.632922
56	54	3	2	2018-07-02 19:53:14.898439	2018-07-02 19:53:14.898439
57	55	1	0	2018-07-03 15:53:33.357912	2018-07-03 15:53:33.357912
58	56	3	4	2018-07-03 20:52:21.924445	2018-07-03 20:52:21.924445
59	57	0	2	2018-07-06 15:52:39.048683	2018-07-06 15:52:39.048683
60	58	1	2	2018-07-06 19:53:20.395778	2018-07-06 19:53:20.395778
61	59	0	2	2018-07-07 15:51:52.638176	2018-07-07 15:51:52.638176
62	60	3	4	2018-07-07 20:50:41.123813	2018-07-07 20:50:41.123813
63	61	1	0	2018-07-10 19:53:59.804621	2018-07-10 19:53:59.804621
64	62	2	1	2018-07-12 08:33:47.278553	2018-07-12 08:33:47.278553
65	63	2	0	2018-07-14 15:51:47.622384	2018-07-14 15:51:47.622384
66	64	4	2	2018-07-15 16:54:07.662979	2018-07-15 16:54:07.662979
\.


--
-- Name: results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('results_id_seq', 66, true);


--
-- Data for Name: rounds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rounds (id, sequence, name) FROM stdin;
1	1	RD1
2	2	RD2
3	3	QF
4	4	SF
5	5	3RD
6	6	FIN
\.


--
-- Name: rounds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rounds_id_seq', 6, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20180610041927
20180610043127
20180610122802
20180610124817
20180610131125
20180610160715
20180611141548
20180612071024
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sessions (id, sequence, "time") FROM stdin;
1	1	17:00:00
2	2	19:00:00
3	3	20:00:00
4	4	21:00:00
5	5	22:00:00
6	6	23:00:00
7	7	01:00:00
8	8	02:00:00
\.


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sessions_id_seq', 8, true);


--
-- Data for Name: standings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY standings (id, team_id, wins, draws, losses, goals_for, goals_against, points, created_at, updated_at) FROM stdin;
4	4	3	0	0	5	0	9	2018-06-10 04:33:35.573484	2018-06-25 15:54:04.367146
1	1	2	0	1	8	4	6	2018-06-10 04:33:35.573484	2018-06-25 15:54:04.487195
2	2	1	0	2	2	7	3	2018-06-10 04:33:35.573484	2018-06-25 15:58:23.977546
3	3	0	0	3	2	6	0	2018-06-10 04:33:35.573484	2018-06-25 15:58:23.987297
8	8	1	1	1	2	2	4	2018-06-10 04:33:35.573484	2018-06-26 13:37:14.123631
5	5	1	2	0	5	4	5	2018-06-10 04:33:35.573484	2018-06-26 13:37:14.383713
6	6	1	2	0	6	5	5	2018-06-10 04:33:35.573484	2018-06-26 13:37:42.779404
7	7	0	1	2	2	4	1	2018-06-10 04:33:35.573484	2018-06-26 13:37:42.794362
12	12	1	2	0	2	1	5	2018-06-10 04:33:35.573484	2018-06-26 15:51:01.567346
9	9	2	1	0	3	1	7	2018-06-10 04:33:35.573484	2018-06-26 15:51:01.727807
10	10	0	1	2	2	5	1	2018-06-10 04:33:35.573484	2018-06-26 15:53:14.566216
11	11	1	0	2	2	2	3	2018-06-10 04:33:35.573484	2018-06-26 15:53:14.572256
16	16	1	0	2	3	4	3	2018-06-10 04:33:35.573484	2018-06-26 19:53:21.906785
13	13	1	1	1	3	5	4	2018-06-10 04:33:35.573484	2018-06-26 19:53:21.980285
14	14	0	1	2	2	5	1	2018-06-10 04:33:35.573484	2018-06-26 19:53:32.347483
15	15	3	0	0	7	1	9	2018-06-10 04:33:35.573484	2018-06-26 19:53:32.361446
22	22	2	0	1	3	4	6	2018-06-10 04:33:35.573484	2018-06-27 15:53:57.350774
23	23	2	0	1	5	2	6	2018-06-10 04:33:35.573484	2018-06-27 15:53:57.366054
24	24	1	0	2	3	3	3	2018-06-10 04:33:35.573484	2018-06-27 15:55:41.327156
21	21	1	0	2	2	4	3	2018-06-10 04:33:35.573484	2018-06-27 15:55:41.335133
20	20	1	0	2	2	4	3	2018-06-10 04:33:35.573484	2018-06-28 02:30:22.459691
17	17	2	1	0	5	1	7	2018-06-10 04:33:35.573484	2018-06-28 02:30:22.501705
18	18	1	2	0	5	4	5	2018-06-10 04:33:35.573484	2018-06-28 02:30:46.149946
19	19	0	1	2	2	5	1	2018-06-10 04:33:35.573484	2018-06-28 02:30:46.15593
32	32	1	1	1	4	4	4	2018-06-10 04:33:35.573484	2018-06-28 15:52:18.273548
29	29	1	0	2	2	5	3	2018-06-10 04:33:35.573484	2018-06-28 15:52:18.304593
30	30	1	1	1	4	4	4	2018-06-10 04:33:35.573484	2018-06-28 15:53:17.002105
31	31	2	0	1	5	2	6	2018-06-10 04:33:35.573484	2018-06-28 15:53:17.009115
26	26	0	0	3	2	11	0	2018-06-10 04:33:35.573484	2018-06-29 02:39:21.482732
27	27	1	0	2	5	8	3	2018-06-10 04:33:35.573484	2018-06-29 02:39:21.569378
28	28	2	0	1	8	3	6	2018-06-10 04:33:35.573484	2018-06-29 02:39:42.38203
25	25	3	0	0	9	2	9	2018-06-10 04:33:35.573484	2018-06-29 02:39:43.357421
\.


--
-- Name: standings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('standings_id_seq', 32, true);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY teams (id, name, "group", ranking, flag) FROM stdin;
1	Russia	A	1	rus.png
2	Saudi Arabia	A	2	ksa.png
3	Egypt	A	3	egy.png
4	Uruguay	A	4	uru.png
5	Portugal 	B	1	por.png
6	Spain 	B	2	esp.png
7	Morocco	B	3	mar.png
8	Iran	B	4	irn.png
9	France 	C	1	fra.png
10	Australia	C	2	aus.png
11	Peru	C	3	per.png
12	Denmark 	C	4	den.png
13	Argentina	D	1	arg.png
14	Iceland 	D	2	isl.png
15	Croatia	D	3	cro.png
17	Brazil	E	1	bra.png
18	Switzerland 	E	2	sui.png
19	Costa Rica	E	3	crc.png
20	Serbia 	E	4	srb.png
21	Germany 	F	1	ger.png
22	Mexico	F	2	mex.png
23	Sweden 	F	3	swe.png
24	Korea Republic	F	4	kor.png
25	Belgium 	G	1	bel.png
26	Panama	G	2	pan.png
27	Tunisia	G	3	tun.png
28	England 	G	4	eng.png
30	Senegal	H	2	sen.png
31	Colombia	H	3	col.png
16	Nigeria	D	4	nga.png
29	Poland 	H	4	pol.png
32	Japan	H	1	jpn.png
\.


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('teams_id_seq', 32, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (id);


--
-- Name: criteria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY criteria
    ADD CONSTRAINT criteria_pkey PRIMARY KEY (id);


--
-- Name: fixtures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fixtures
    ADD CONSTRAINT fixtures_pkey PRIMARY KEY (id);


--
-- Name: results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- Name: rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rounds
    ADD CONSTRAINT rounds_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: standings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY standings
    ADD CONSTRAINT standings_pkey PRIMARY KEY (id);


--
-- Name: teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: index_fixtures_on_channel_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_fixtures_on_channel_id ON fixtures USING btree (channel_id);


--
-- Name: index_fixtures_on_criterium_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_fixtures_on_criterium_id ON fixtures USING btree (criterium_id);


--
-- Name: index_fixtures_on_round_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_fixtures_on_round_id ON fixtures USING btree (round_id);


--
-- Name: index_fixtures_on_session_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_fixtures_on_session_id ON fixtures USING btree (session_id);


--
-- Name: index_results_on_fixture_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_results_on_fixture_id ON results USING btree (fixture_id);


--
-- Name: index_rounds_on_sequence; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_rounds_on_sequence ON rounds USING btree (sequence);


--
-- Name: index_sessions_on_sequence; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_sessions_on_sequence ON sessions USING btree (sequence);


--
-- Name: index_standings_on_team_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_standings_on_team_id ON standings USING btree (team_id);


--
-- Name: index_teams_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_teams_on_name ON teams USING btree (name);


--
-- Name: fk_rails_0c45715fb6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fixtures
    ADD CONSTRAINT fk_rails_0c45715fb6 FOREIGN KEY (criterium_id) REFERENCES criteria(id);


--
-- Name: fk_rails_24208fad15; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_rails_24208fad15 FOREIGN KEY (fixture_id) REFERENCES fixtures(id);


--
-- Name: fk_rails_45a97a2b64; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fixtures
    ADD CONSTRAINT fk_rails_45a97a2b64 FOREIGN KEY (session_id) REFERENCES sessions(id);


--
-- Name: fk_rails_9af4cca3ac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fixtures
    ADD CONSTRAINT fk_rails_9af4cca3ac FOREIGN KEY (round_id) REFERENCES rounds(id);


--
-- Name: fk_rails_e99c2e4db6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fixtures
    ADD CONSTRAINT fk_rails_e99c2e4db6 FOREIGN KEY (channel_id) REFERENCES channels(id);


--
-- Name: fk_rails_e9d6ea91b3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY standings
    ADD CONSTRAINT fk_rails_e9d6ea91b3 FOREIGN KEY (team_id) REFERENCES teams(id);


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

