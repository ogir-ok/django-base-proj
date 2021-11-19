--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-3.pgdg90+1)
-- Dumped by pg_dump version 13.5 (Debian 13.5-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: movies_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_movie (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    genres character varying(80)[] NOT NULL,
    imdb_id character varying(255),
    is_adult boolean NOT NULL,
    title_type character varying(80) NOT NULL,
    year date
);


ALTER TABLE public.movies_movie OWNER TO postgres;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_movie_id_seq OWNER TO postgres;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies_movie.id;


--
-- Name: movies_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_person (
    id bigint NOT NULL,
    imdb_id character varying(10),
    name character varying(255),
    birth_year date,
    death_year date
);


ALTER TABLE public.movies_person OWNER TO postgres;

--
-- Name: movies_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_person_id_seq OWNER TO postgres;

--
-- Name: movies_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_person_id_seq OWNED BY public.movies_person.id;


--
-- Name: movies_personmovie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_personmovie (
    id bigint NOT NULL,
    "order" integer,
    category character varying(100),
    job character varying(100),
    characters character varying(255)[],
    movie_id bigint,
    person_id bigint
);


ALTER TABLE public.movies_personmovie OWNER TO postgres;

--
-- Name: movies_personmovie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_personmovie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_personmovie_id_seq OWNER TO postgres;

--
-- Name: movies_personmovie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_personmovie_id_seq OWNED BY public.movies_personmovie.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: movies_movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_movie ALTER COLUMN id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- Name: movies_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_person ALTER COLUMN id SET DEFAULT nextval('public.movies_person_id_seq'::regclass);


--
-- Name: movies_personmovie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_personmovie ALTER COLUMN id SET DEFAULT nextval('public.movies_personmovie_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add director	7	add_director
26	Can change director	7	change_director
27	Can delete director	7	delete_director
28	Can view director	7	view_director
29	Can add movie	8	add_movie
30	Can change movie	8	change_movie
31	Can delete movie	8	delete_movie
32	Can view movie	8	view_movie
34	Can add person	34	add_person
35	Can change person	34	change_person
36	Can delete person	34	delete_person
37	Can view person	34	view_person
38	Can add person movie	35	add_personmovie
39	Can change person movie	35	change_personmovie
40	Can delete person movie	35	delete_personmovie
41	Can view person movie	35	view_personmovie
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$TTgLaMDNkexl2ZnWWdN7na$eAhiJeXCBOcp0zvP16yd5l4okZWVukC68je2qvc9C4c=	2021-11-19 16:12:39.271487+00	t	admin			admin@admin.com	t	t	2021-11-19 16:12:29.382822+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	movies	director
8	movies	movie
34	movies	person
35	movies	personmovie
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-11-17 22:04:42.735914+00
2	auth	0001_initial	2021-11-17 22:04:42.837859+00
3	admin	0001_initial	2021-11-17 22:04:42.862151+00
4	admin	0002_logentry_remove_auto_add	2021-11-17 22:04:42.867921+00
5	admin	0003_logentry_add_action_flag_choices	2021-11-17 22:04:42.874436+00
6	contenttypes	0002_remove_content_type_name	2021-11-17 22:04:42.88528+00
7	auth	0002_alter_permission_name_max_length	2021-11-17 22:04:42.891085+00
8	auth	0003_alter_user_email_max_length	2021-11-17 22:04:42.897832+00
9	auth	0004_alter_user_username_opts	2021-11-17 22:04:42.903293+00
10	auth	0005_alter_user_last_login_null	2021-11-17 22:04:42.908867+00
11	auth	0006_require_contenttypes_0002	2021-11-17 22:04:42.910811+00
12	auth	0007_alter_validators_add_error_messages	2021-11-17 22:04:42.916292+00
13	auth	0008_alter_user_username_max_length	2021-11-17 22:04:42.927212+00
14	auth	0009_alter_user_last_name_max_length	2021-11-17 22:04:42.93295+00
15	auth	0010_alter_group_name_max_length	2021-11-17 22:04:42.939155+00
16	auth	0011_update_proxy_permissions	2021-11-17 22:04:42.944577+00
17	auth	0012_alter_user_first_name_max_length	2021-11-17 22:04:42.950049+00
18	movies	0001_initial	2021-11-17 22:04:42.966069+00
19	sessions	0001_initial	2021-11-17 22:04:42.981777+00
34	movies	0002_auto_20211112_1636	2021-11-17 22:21:05.43423+00
35	movies	0003_person_personmovie	2021-11-17 22:21:05.461622+00
36	movies	0004_auto_20211112_1734	2021-11-17 22:21:05.472733+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
zuampetv65efffl0k5ew7te71ut1b8b6	.eJxVjEEOwiAQRe_C2hA6QBlcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWgzj9bpHSg9sO8p3abZZpbusyRbkr8qBdXufMz8vh_h1U6vVbA6DWtpAqnshaBZbAGQaj_RATREI0RRFmRwbBYdZO-eh14jEzjEm8P8YwN3A:1mo6VD:X60qcK6VdRKZ3RRT8htgFa3SQ1yk-6_f9DsNHg7X2yY	2021-12-03 16:12:39.28566+00
\.


--
-- Data for Name: movies_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_movie (id, name, genres, imdb_id, is_adult, title_type, year) FROM stdin;
27	Fishing for Goldfish	{Documentary,"Short\n"}	tt0000028	f	short	1895-01-01
1	Carmencita	{Documentary,"Short\n"}	tt0000001	f	short	1894-01-01
2	Le clown et ses chiens	{Animation,"Short\n"}	tt0000002	f	short	1892-01-01
3	Pauvre Pierrot	{Animation,Comedy,"Romance\n"}	tt0000003	f	short	1892-01-01
4	Un bon bock	{Animation,"Short\n"}	tt0000004	f	short	1892-01-01
5	Blacksmith Scene	{Comedy,"Short\n"}	tt0000005	f	short	1893-01-01
6	Chinese Opium Den	{"Short\n"}	tt0000006	f	short	1894-01-01
7	Corbett and Courtney Before the Kinetograph	{Short,"Sport\n"}	tt0000007	f	short	1894-01-01
8	Edison Kinetoscopic Record of a Sneeze	{Documentary,"Short\n"}	tt0000008	f	short	1894-01-01
9	Miss Jerry	{Romance,"Short\n"}	tt0000009	f	short	1894-01-01
10	Leaving the Factory	{Documentary,"Short\n"}	tt0000010	f	short	1895-01-01
11	Akrobatisches Potpourri	{Documentary,"Short\n"}	tt0000011	f	short	1895-01-01
12	The Arrival of a Train	{Documentary,"Short\n"}	tt0000012	f	short	1896-01-01
13	The Photographical Congress Arrives in Lyon	{Documentary,"Short\n"}	tt0000013	f	short	1895-01-01
14	The Waterer Watered	{Comedy,"Short\n"}	tt0000014	f	short	1895-01-01
15	Autour d'une cabine	{Animation,"Short\n"}	tt0000015	f	short	1894-01-01
16	Boat Leaving the Port	{Documentary,"Short\n"}	tt0000016	f	short	1895-01-01
17	Italienischer Bauerntanz	{Documentary,"Short\n"}	tt0000017	f	short	1895-01-01
18	Das boxende Känguruh	{"Short\n"}	tt0000018	f	short	1895-01-01
19	The Clown Barber	{Comedy,"Short\n"}	tt0000019	f	short	1898-01-01
20	The Derby 1895	{Documentary,Short,"Sport\n"}	tt0000020	f	short	1895-01-01
21	Blacksmith Scene	{Documentary,"Short\n"}	tt0000022	f	short	1895-01-01
22	The Sea	{Documentary,"Short\n"}	tt0000023	f	short	1895-01-01
23	Opening of the Kiel Canal	{News,"Short\n"}	tt0000024	f	short	1895-01-01
24	The Oxford and Cambridge University Boat Race	{News,Short,"Sport\n"}	tt0000025	f	short	1895-01-01
25	The Messers. Lumière at Cards	{Documentary,"Short\n"}	tt0000026	f	short	1896-01-01
26	Cordeliers' Square in Lyon	{Documentary,"Short\n"}	tt0000027	f	short	1895-01-01
28	Baby's Meal	{Documentary,"Short\n"}	tt0000029	f	short	1895-01-01
29	Rough Sea at Dover	{Documentary,"Short\n"}	tt0000030	f	short	1895-01-01
30	Jumping the Blanket	{Documentary,"Short\n"}	tt0000031	f	short	1895-01-01
31	Die Serpentintänzerin	{"Short\n"}	tt0000032	f	short	1895-01-01
32	Horse Trick Riders	{Comedy,Documentary,"Short\n"}	tt0000033	f	short	1895-01-01
33	Arrivée d'un train gare de Vincennes	{Documentary,"Short\n"}	tt0000034	f	short	1896-01-01
34	Watering the Flowers	{Comedy,"Short\n"}	tt0000035	f	short	1896-01-01
35	Awakening of Rip	{Drama,"Short\n"}	tt0000036	f	short	1896-01-01
36	Sea Bathing	{"Short\n"}	tt0000037	f	short	1896-01-01
37	The Ball Game	{Documentary,Short,"Sport\n"}	tt0000038	f	short	1898-01-01
38	Barnet Horse Fair	{"Short\n"}	tt0000039	f	short	1896-01-01
39	Barque sortant du port de Trouville	{Documentary,"Short\n"}	tt0000040	f	short	1896-01-01
40	Bataille de neige	{Comedy,Documentary,"Short\n"}	tt0000041	f	short	1897-01-01
41	Bateau-mouche sur la Seine	{Documentary,"Short\n"}	tt0000042	f	short	1896-01-01
42	Batteuse à vapeur	{Documentary,"Short\n"}	tt0000043	f	short	1896-01-01
43	Le bivouac	{"Short\n"}	tt0000044	f	short	1896-01-01
44	Les blanchisseuses	{"Short\n"}	tt0000045	f	short	1896-01-01
45	Bois de Boulogne	{Documentary,"Short\n"}	tt0000046	f	short	1896-01-01
46	Boulevard des Italiens	{Documentary,"Short\n"}	tt0000047	f	short	1896-01-01
47	The Boxing Kangaroo	{"Short\n"}	tt0000048	f	short	1896-01-01
48	Boxing Match; or, Glove Contest	{Short,"Sport\n"}	tt0000049	f	short	1896-01-01
49	Bébé et fillettes	{Documentary,"Short\n"}	tt0000050	f	short	1896-01-01
50	The Bohemian Encampment	{Documentary,"Short\n"}	tt0000051	f	short	1896-01-01
51	Carga de rurales	{Documentary,"Short\n"}	tt0000052	f	short	1896-01-01
52	A Chegada do Comboio Inaugural à Estação Central do Porto	{Documentary,"Short\n"}	tt0000053	f	short	1897-01-01
53	A Merry-Go-Round	{"Short\n"}	tt0000054	f	short	1896-01-01
54	Le chiffonnier	{"Short\n"}	tt0000055	f	short	1896-01-01
55	Uma Corrida de Touros no Campo Pequeno	{"Short\n"}	tt0000056	f	short	1896-01-01
56	Cortège de tzar allant à Versailles	{Documentary,"Short\n"}	tt0000057	f	short	1896-01-01
57	Cortège de tzar au Bois de Boulogne	{Documentary,"Short\n"}	tt0000058	f	short	1896-01-01
58	Coronation of a Village Maiden	{"Short\n"}	tt0000059	f	short	1896-01-01
59	Dancing Darkies	{Documentary,"Short\n"}	tt0000060	f	short	1896-01-01
60	Dancing Girls	{"Short\n"}	tt0000061	f	short	1896-01-01
61	Danse serpentine	{"Short\n"}	tt0000062	f	short	1896-01-01
62	Dessinateur express	{"Short\n"}	tt0000063	f	short	1896-01-01
63	Dessinateur: Chamberlain	{"Short\n"}	tt0000064	f	short	1896-01-01
64	Dessinateur: Reine Victoria	{"Short\n"}	tt0000065	f	short	1896-01-01
65	Dessinateur: Von Bismark	{"Short\n"}	tt0000066	f	short	1896-01-01
66	Conjurer Making Ten Hats in Sixty Seconds	{Fantasy,"Short\n"}	tt0000067	f	short	1896-01-01
67	Unloading the Boat	{Documentary,"Short\n"}	tt0000068	f	short	1896-01-01
68	Post No Bills	{"Short\n"}	tt0000069	f	short	1896-01-01
69	Demolition of a Wall	{Documentary,"Short\n"}	tt0000070	f	short	1896-01-01
70	Automobiles Starting a Race	{Short,"Sport\n"}	tt0000071	f	short	1896-01-01
71	Officers of French Army Leaving Service	{"Short\n"}	tt0000072	f	short	1896-01-01
72	Effets de mer sur les rochers	{Documentary,"Short\n"}	tt0000073	f	short	1896-01-01
73	Enfants jouant sur la plage	{Documentary,"Short\n"}	tt0000074	f	short	1896-01-01
74	The Conjuring of a Woman at the House of Robert Houdin	{Horror,"Short\n"}	tt0000075	f	short	1896-01-01
75	Exit of Rip and the Dwarf	{Drama,"Short\n"}	tt0000076	f	short	1896-01-01
76	Le fakir, mystère indien	{"Short\n"}	tt0000077	f	short	1896-01-01
77	Feira de Gado na Corujeira	{Documentary,"Short\n"}	tt0000078	f	short	1896-01-01
78	La gare Saint-Lazare	{Documentary,"Short\n"}	tt0000079	f	short	1896-01-01
79	Grandes manoeuvres	{Documentary,"Short\n"}	tt0000080	f	short	1896-01-01
80	Towing a Boat on the River	{Documentary,"Short\n"}	tt0000081	f	short	1896-01-01
81	A Hard Wash	{Comedy,"Short\n"}	tt0000082	f	short	1896-01-01
82	Les indiscrets	{"Short\n"}	tt0000083	f	short	1896-01-01
83	Les ivrognes	{"Short\n"}	tt0000084	f	short	1896-01-01
84	Gardener Burning Weeds	{"Short\n"}	tt0000085	f	short	1896-01-01
85	Beach and Pier at Trouville, 1st part	{Documentary,"Short\n"}	tt0000086	f	short	1896-01-01
86	Beach and Pier at Trouville, 2nd part	{Documentary,"Short\n"}	tt0000087	f	short	1896-01-01
87	Market Day	{Documentary,"Short\n"}	tt0000088	f	short	1896-01-01
88	Leaving Jerusalem by Railway	{Documentary,"Short\n"}	tt0000089	f	short	1897-01-01
89	Libération des territoriaux	{Documentary,"Short\n"}	tt0000090	f	short	1896-01-01
90	The House of the Devil	{Horror,"Short\n"}	tt0000091	f	short	1896-01-01
91	Marée montante sur Brise-Larmes	{Documentary,"Short\n"}	tt0000092	f	short	1896-01-01
92	Melbourne	{Documentary,"Short\n"}	tt0000093	f	short	1896-01-01
93	Miss de Vere	{"Short\n"}	tt0000094	f	short	1896-01-01
94	The Mysterious Paper	{"Short\n"}	tt0000095	f	short	1896-01-01
95	Place Saint-Augustin	{Documentary,"Short\n"}	tt0000096	f	short	1896-01-01
96	Place de l'Opéra, First View	{Documentary,"Short\n"}	tt0000097	f	short	1896-01-01
97	Place de l'Opéra, Second View	{Documentary,"Short\n"}	tt0000098	f	short	1896-01-01
98	Place de la Bastille	{Documentary,"Short\n"}	tt0000099	f	short	1896-01-01
99	Place de la Concorde	{Documentary,"Short\n"}	tt0000100	f	short	1896-01-01
100	Place du théâtre français	{Documentary,"Short\n"}	tt0000101	f	short	1896-01-01
101	The Beach at Villiers in a Gale	{"Short\n"}	tt0000102	f	short	1896-01-01
102	Smarter than the Teacher	{"Short\n"}	tt0000103	f	short	1896-01-01
103	Pompiers à Lyon	{Documentary,"Short\n"}	tt0000104	f	short	1896-01-01
104	The Docks at Marseilles	{Documentary,"Short\n"}	tt0000105	f	short	1896-01-01
105	Retour au cantonnement	{"Short\n"}	tt0000106	f	short	1896-01-01
106	Naval Review at Cherburg	{Documentary,"Short\n"}	tt0000107	f	short	1896-01-01
107	Rip Leaving Sleepy Hollow	{Drama,"Short\n"}	tt0000108	f	short	1896-01-01
108	Rip Meeting the Dwarf	{Fantasy,"Short\n"}	tt0000109	f	short	1896-01-01
109	Rip Passing Over the Mountain	{Fantasy,"Short\n"}	tt0000110	f	short	1896-01-01
110	Rip's Toast	{Drama,"Short\n"}	tt0000111	f	short	1896-01-01
111	Rip's Toast to Hudson	{Fantasy,"Short\n"}	tt0000112	f	short	1896-01-01
112	Rip's Twenty Years' Sleep	{Drama,"Short\n"}	tt0000113	f	short	1896-01-01
113	French Regiment Going to the Parade	{Documentary,"Short\n"}	tt0000114	f	short	1896-01-01
114	Réunion d'officiers	{Documentary,"Short\n"}	tt0000115	f	short	1896-01-01
115	Sac au dos	{"Short\n"}	tt0000116	f	short	1896-01-01
116	Saída do Pessoal Operário da Fábrica Confiança	{Documentary,"Short\n"}	tt0000117	f	short	1896-01-01
117	Salut malencontreux d'un déserteur	{"Short\n"}	tt0000118	f	short	1896-01-01
118	Rescue on the River, Pt. 2	{Documentary,"Short\n"}	tt0000119	f	short	1896-01-01
119	Rescue on the River, Pt. 1	{Documentary,"Short\n"}	tt0000120	f	short	1896-01-01
120	The Soldier's Courtship	{Comedy,"Short\n"}	tt0000121	f	short	1896-01-01
121	Closing Hours at Vibert's Perfume Factory	{Documentary,"Short\n"}	tt0000122	f	short	1896-01-01
122	Conjuring	{"Short\n"}	tt0000123	f	short	1896-01-01
123	Tempête sur la jetée du treport	{Documentary,"Short\n"}	tt0000124	f	short	1896-01-01
124	The Terrible Railway Accident	{"Short\n"}	tt0000125	f	short	1896-01-01
125	Tom Old Boot	{"Short\n"}	tt0000126	f	short	1896-01-01
126	Les tribulations d'un concierge	{Comedy,"Short\n"}	tt0000127	f	short	1896-01-01
127	Academy for Young Ladies	{"Short\n"}	tt0000128	f	short	1896-01-01
128	Un petit diable	{"Short\n"}	tt0000129	f	short	1896-01-01
129	Une altercation au café	{"Short\n"}	tt0000130	f	short	1896-01-01
130	A Terrible Night	{Comedy,Horror,"Short\n"}	tt0000131	f	short	1896-01-01
131	Card Party	{Biography,"Short\n"}	tt0000132	f	short	1896-01-01
132	La voiture du potier	{"Short\n"}	tt0000133	f	short	1896-01-01
133	The Wandering Negro Minstrels	{Music,"Short\n"}	tt0000134	f	short	1896-01-01
134	A Watermelon Feast	{Documentary,"Short\n"}	tt0000135	f	short	1896-01-01
135	Au réfectoire	{Comedy,"Short\n"}	tt0000137	f	short	1897-01-01
136	The Bewitched Inn	{Comedy,Horror,"Short\n"}	tt0000138	f	short	1897-01-01
137	L'aveugle	{"Short\n"}	tt0000139	f	short	1897-01-01
138	Baignade dans le torrent	{"Short\n"}	tt0000140	f	short	1897-01-01
139	Ballet libella	{Documentary,"Short\n"}	tt0000141	f	short	1897-01-01
140	Buffalo Bill and Escort	{News,"Short\n"}	tt0000142	f	short	1897-01-01
141	Les cambrioleurs	{Comedy,"Short\n"}	tt0000143	f	short	1897-01-01
142	Chez le magnétiseur	{Comedy,"Short\n"}	tt0000144	f	short	1897-01-01
143	En classe	{Comedy,"Short\n"}	tt0000145	f	short	1897-01-01
144	Le cocher de fiacre endormi	{Comedy,"Short\n"}	tt0000146	f	short	1897-01-01
145	The Corbett-Fitzsimmons Fight	{Documentary,News,"Short\n"}	tt0000147	f	short	1897-01-01
146	Le Coucher d'Yvette	{"Short\n"}	tt0000148	f	short	1897-01-01
147	Behind the Scenes	{Comedy,"Short\n"}	tt0000149	f	short	1897-01-01
148	Danse fleur de lotus	{Documentary,"Short\n"}	tt0000150	f	short	1897-01-01
149	Faust et Marguerite	{"Short\n"}	tt0000151	f	short	1897-01-01
150	The Hallucinated Alchemist	{Fantasy,Horror,"Short\n"}	tt0000152	f	short	1897-01-01
151	The Haunted Castle	{Horror,"Short\n"}	tt0000153	f	short	1897-01-01
152	Henley Regatta	{News,Short,"Sport\n"}	tt0000154	f	short	1897-01-01
153	The Hypnotist at Work	{"Short\n"}	tt0000155	f	short	1897-01-01
154	A Badly Managed Hotel	{Comedy,"Short\n"}	tt0000156	f	short	1896-01-01
155	Idylle	{"Short\n"}	tt0000157	f	short	1897-01-01
156	Idylle interrompue	{Comedy,"Short\n"}	tt0000158	f	short	1897-01-01
157	The Devil's Laboratory	{Horror,"Short\n"}	tt0000159	f	short	1897-01-01
158	The Last Days of Pompeii	{Drama,"Short\n"}	tt0000160	f	short	1900-01-01
159	Leçon de danse	{Comedy,"Short\n"}	tt0000161	f	short	1897-01-01
160	Niagara Falls	{Documentary,"Short\n"}	tt0000162	f	short	1897-01-01
161	Le planton du colonel	{Comedy,"Short\n"}	tt0000163	f	short	1897-01-01
162	Le pêcheur dans le torrent	{Comedy,"Short\n"}	tt0000164	f	short	1897-01-01
163	Riña en un café	{"Short\n"}	tt0000165	f	short	1897-01-01
164	Salida de los trabajadores de la fábrica España Industrial	{Documentary,"Short\n"}	tt0000166	f	short	1897-01-01
165	Salida de misa de doce del Pilar de Zaragoza	{Documentary,"Short\n"}	tt0000167	f	short	1897-01-01
166	Salida del público de la iglesia parroquial de Santa María de Sans	{Documentary,"Short\n"}	tt0000168	f	short	1897-01-01
167	Slagsmål i gamla Stockholm	{"Short\n"}	tt0000169	f	short	1897-01-01
168	The Twins' Tea Party	{Comedy,"Short\n"}	tt0000170	f	short	1896-01-01
169	Une nuit agitée	{Comedy,"Short\n"}	tt0000171	f	short	1897-01-01
170	The X-Ray Fiend	{Comedy,Horror,"Short\n"}	tt0000172	f	short	1897-01-01
171	Battle of Santiago Bay	{Short,"War\n"}	tt0000173	f	short	1898-01-01
172	Výstavní párkar a lepic plakátù	{Comedy,"Short\n"}	tt0000174	f	short	1898-01-01
173	A Sea Cave Near Lisbon	{Documentary,"Short\n"}	tt0000175	f	short	1896-01-01
174	Brittania	{"Short\n"}	tt0000176	f	short	1898-01-01
175	The Burglar on the Roof	{Crime,"Short\n"}	tt0000177	f	short	1898-01-01
176	The Cavalier's Dream	{Horror,"Short\n"}	tt0000178	f	short	1898-01-01
177	The Cave of the Demons	{Horror,"Short\n"}	tt0000179	f	short	1898-01-01
178	Le chemin de croix	{"Short\n"}	tt0000180	f	short	1898-01-01
179	Cinderella	{Fantasy,"Short\n"}	tt0000181	f	short	1898-01-01
180	Come Along, Do!	{Comedy,"Short\n"}	tt0000182	f	short	1898-01-01
181	The Corsican Brothers	{Drama,"Short\n"}	tt0000183	f	short	1898-01-01
182	Cripple Creek Bar-Room Scene	{Short,"Western\n"}	tt0000184	f	short	1899-01-01
183	La crèche à Bethléem	{"Short\n"}	tt0000185	f	short	1898-01-01
184	Le cuirassé Maine	{Short,"War\n"}	tt0000186	f	short	1898-01-01
185	La cène	{"Short\n"}	tt0000187	f	short	1898-01-01
186	The Deserter	{Drama,"Short\n"}	tt0000188	f	short	1898-01-01
187	Dorotea	{"Short\n"}	tt0000189	f	short	1898-01-01
188	Dostavenícko ve mlýnici	{Comedy,"Short\n"}	tt0000190	f	short	1898-01-01
189	Déménagement à la cloche de bois	{"Short\n"}	tt0000191	f	short	1898-01-01
190	Ella Lola, a la Trilby	{"Short\n"}	tt0000192	f	short	1898-01-01
191	L'entrée à Jérusalem	{"Short\n"}	tt0000193	f	short	1898-01-01
192	Express Train on a Railway Cutting	{Documentary,"Short\n"}	tt0000194	f	short	1898-01-01
193	Les farces de Jocko	{Comedy,"Short\n"}	tt0000195	f	short	1898-01-01
194	Faust and Mephistopheles	{Fantasy,"Short\n"}	tt0000196	f	short	1898-01-01
195	La flagellation	{"Short\n"}	tt0000197	f	short	1898-01-01
196	La fuite en Égypte	{"Short\n"}	tt0000198	f	short	1898-01-01
197	Glasgow Fire Engine	{"Short\n"}	tt0000199	f	short	1898-01-01
198	Gran corrida de toros	{Documentary,Short,"Sport\n"}	tt0000200	f	short	1898-01-01
199	Indian War Council	{News,"Short\n"}	tt0000201	f	short	1898-01-01
200	Le jardin des oliviers	{"Short\n"}	tt0000202	f	short	1898-01-01
201	Je vous y prrrrends!	{"Short\n"}	tt0000203	f	short	1898-01-01
202	Jésus devant Pilate	{"Short\n"}	tt0000204	f	short	1898-01-01
203	Leçons de boxe	{Comedy,Short,"Sport\n"}	tt0000205	f	short	1898-01-01
204	Llegada de un tren a la estación de ferrocarril del Norte, de Barcelona	{Documentary,"Short\n"}	tt0000206	f	short	1898-01-01
205	London Express	{Documentary,"Short\n"}	tt0000207	f	short	1898-01-01
206	The Miller and Chimney Sweep	{Comedy,"Short\n"}	tt0000208	f	short	1897-01-01
207	Photographing a Ghost	{Horror,"Short\n"}	tt0000209	f	short	1898-01-01
208	A Novice at X-rays	{"Short\n"}	tt0000210	f	short	1898-01-01
209	A Trip to the Moon	{Comedy,Fantasy,"Horror\n"}	tt0000211	f	short	1898-01-01
210	Saida do Paquete Duque de Braganca	{"Short\n"}	tt0000212	f	short	1898-01-01
211	Scène d'escamotage	{"Short\n"}	tt0000213	f	short	1898-01-01
212	Tearing Down the Spanish Flag	{Short,"War\n"}	tt0000214	f	short	1898-01-01
213	Smích a plác	{Documentary,"Short\n"}	tt0000215	f	short	1898-01-01
214	Visita de Doña María Cristina y Alfonso XIII a Barcelona	{News,"Short\n"}	tt0000216	f	short	1898-01-01
215	Waves and Spray	{"Short\n"}	tt0000217	f	short	1898-01-01
216	L'affaire Dreyfus	{Biography,Drama,"Short\n"}	tt0000218	f	short	1899-01-01
217	Aladdin and the Wonderful Lamp	{Fantasy,"Short\n"}	tt0000219	f	short	1899-01-01
218	The Artist and the Flower Girl	{Romance,"Short\n"}	tt0000220	f	short	1901-01-01
219	Aspectos da Praia de Cascais	{Documentary,"Short\n"}	tt0000221	f	short	1899-01-01
220	Au cabaret	{Comedy,"Short\n"}	tt0000222	f	short	1899-01-01
221	L'aveugle	{"Short\n"}	tt0000223	f	short	1899-01-01
222	Battlefield	{"Short\n"}	tt0000224	f	short	1899-01-01
223	Beauty and the Beast	{Family,Fantasy,"Romance\n"}	tt0000225	f	short	1899-01-01
224	Boat Race	{"Short\n"}	tt0000226	f	short	1899-01-01
225	Bombardment of Mafeking	{Drama,Short,"War\n"}	tt0000227	f	short	1899-01-01
226	La bonne absinthe	{"Short\n"}	tt0000228	f	short	1899-01-01
227	Casey at the Bat	{Short,"Sport\n"}	tt0000229	f	short	1899-01-01
228	Cinderella	{Drama,Family,"Fantasy\n"}	tt0000230	f	short	1899-01-01
229	Portuguese Railway Train	{Documentary,"Short\n"}	tt0000231	f	short	1896-01-01
230	Le chiffonnier	{Comedy,"Short\n"}	tt0000232	f	short	1899-01-01
231	Choque de dos transatlánticos	{Animation,"Short\n"}	tt0000233	f	short	1899-01-01
232	Cleopatra's Tomb	{Horror,"Short\n"}	tt0000234	f	short	1899-01-01
233	Haggard's She: The Pillar of Fire	{Adventure,Fantasy,"Horror\n"}	tt0000235	f	short	1899-01-01
234	Courte échelle	{"Short\n"}	tt0000236	f	short	1899-01-01
235	Le crucifiement	{"Short\n"}	tt0000237	f	short	1899-01-01
236	Les dangers de l'alcoolisme	{Drama,"Short\n"}	tt0000238	f	short	1899-01-01
237	Danse serpentine par Mme. Bob Walter	{"Short\n"}	tt0000239	f	short	1899-01-01
238	Distributing a War Extra	{Documentary,"Short\n"}	tt0000240	f	short	1899-01-01
239	La descente de croix	{"Short\n"}	tt0000241	f	short	1899-01-01
240	The Sign of the Cross	{Fantasy,Horror,"Short\n"}	tt0000242	f	short	1899-01-01
241	Le déjeuner des enfants	{Comedy,"Short\n"}	tt0000243	f	short	1899-01-01
242	Erreur judiciaire	{"Short\n"}	tt0000244	f	short	1899-01-01
243	The Haunted House	{Comedy,Fantasy,"Horror\n"}	tt0000245	f	short	1899-01-01
244	A Turn of the Century Illusionist	{Fantasy,"Short\n"}	tt0000246	f	short	1899-01-01
245	King John	{Drama,"Short\n"}	tt0000247	f	short	1899-01-01
246	A Kiss in the Tunnel	{Comedy,Romance,"Short\n"}	tt0000248	f	short	1899-01-01
247	The Legacy	{"Short\n"}	tt0000249	f	short	1899-01-01
248	Llegada del vapor Bellver a Mallorca	{Documentary,"Short\n"}	tt0000250	f	short	1899-01-01
249	Matches: An Appeal	{Animation,"Short\n"}	tt0000251	f	short	1899-01-01
250	La mauvaise soupe	{Comedy,"Short\n"}	tt0000252	f	short	1899-01-01
251	The Miser's Doom	{Horror,"Short\n"}	tt0000253	f	short	1899-01-01
252	Monnaie de lapin	{Comedy,"Short\n"}	tt0000254	f	short	1899-01-01
253	Mésaventure d'un charbonnier	{Comedy,"Short\n"}	tt0000255	f	short	1899-01-01
382	Les clowns	{Comedy,"Short\n"}	tt0000385	f	short	1902-01-01
254	Panorama from the Tower of the Brooklyn Bridge	{Documentary,"Short\n"}	tt0000256	f	short	1899-01-01
255	La résurrection	{"Short\n"}	tt0000257	f	short	1899-01-01
256	Le tondeur de chiens	{Comedy,"Short\n"}	tt0000258	f	short	1899-01-01
257	Le tonnelier	{Comedy,"Short\n"}	tt0000259	f	short	1899-01-01
258	Transformations	{Comedy,"Short\n"}	tt0000260	f	short	1899-01-01
259	A Midnight Episode	{Comedy,Horror,"Short\n"}	tt0000261	f	short	1899-01-01
260	Un lunch	{Comedy,"Short\n"}	tt0000262	f	short	1899-01-01
261	Vista de la entrada principal de la plaza de toros de Jerez, el segundo día de feria	{Documentary,"Short\n"}	tt0000263	f	short	1899-01-01
262	Summoning the Spirits	{Fantasy,Horror,"Short\n"}	tt0000264	f	short	1899-01-01
263	Above the Limit	{Comedy,"Short\n"}	tt0000265	f	short	1900-01-01
264	Above the Speedway	{Documentary,"Short\n"}	tt0000266	f	short	1900-01-01
265	L'angélus	{"Short\n"}	tt0000267	f	short	1900-01-01
266	L'arléquine	{"Short\n"}	tt0000268	f	short	1900-01-01
267	Army Life; or, How Soldiers Are Made: Mounted Infantry	{Documentary,"Short\n"}	tt0000269	f	short	1900-01-01
268	Arrivée d'Arléquin	{"Short\n"}	tt0000270	f	short	1900-01-01
269	Arrivée de Pierette et Pierrot	{"Short\n"}	tt0000271	f	short	1900-01-01
270	As Seen Through a Telescope	{Comedy,"Short\n"}	tt0000272	f	short	1900-01-01
271	Attack on a China Mission	{Action,Crime,"Drama\n"}	tt0000273	f	short	1900-01-01
272	Avenue de l'opéra	{Comedy,"Short\n"}	tt0000274	f	short	1900-01-01
273	Badinage	{"Short\n"}	tt0000275	f	short	1900-01-01
274	Bataille d'oreillers	{"Short\n"}	tt0000276	f	short	1900-01-01
275	Bataille de boules de neige	{"Short\n"}	tt0000277	f	short	1900-01-01
276	Buffalo Bill's Show Parade	{"Short\n"}	tt0000278	f	short	1900-01-01
277	Buffalo Bill's Wild West Parade	{News,"Short\n"}	tt0000279	f	short	1900-01-01
278	Buffalo Bill's Wild West Parade	{News,"Short\n"}	tt0000280	f	short	1900-01-01
279	Buffalo Bill's Wild West Show	{News,"Short\n"}	tt0000281	f	short	1900-01-01
280	Le bébé	{"Short\n"}	tt0000282	f	short	1900-01-01
281	Chez le Maréchal-Ferrant	{"Short\n"}	tt0000283	f	short	1900-01-01
282	Chez le photographe	{"Short\n"}	tt0000284	f	short	1900-01-01
283	Chinese Magic	{Horror,"Short\n"}	tt0000285	f	short	1900-01-01
284	Chirurgie fin de siècle	{Comedy,"Short\n"}	tt0000286	f	short	1900-01-01
285	The Clown and the Alchemist	{Comedy,Fantasy,"Short\n"}	tt0000287	f	short	1900-01-01
286	La concierge	{Comedy,"Short\n"}	tt0000288	f	short	1900-01-01
287	Coucher d'une Parisienne	{"Short\n"}	tt0000289	f	short	1900-01-01
288	Dance de l'ivresse	{"Short\n"}	tt0000290	f	short	1900-01-01
289	Dans les coulisses	{"Short\n"}	tt0000291	f	short	1900-01-01
290	Danse du papillon	{Documentary,"Short\n"}	tt0000292	f	short	1900-01-01
291	Danse du pas des foulards par des almées	{"Short\n"}	tt0000293	f	short	1900-01-01
292	La danse du ventre	{"Short\n"}	tt0000294	f	short	1900-01-01
293	Danse du voile	{"Short\n"}	tt0000295	f	short	1900-01-01
294	Danse serpentine	{Documentary,"Short\n"}	tt0000296	f	short	1900-01-01
295	Danses	{"Short\n"}	tt0000297	f	short	1900-01-01
296	Déclaration d'amour	{"Short\n"}	tt0000298	f	short	1900-01-01
297	Le départ d'Arlequin et de Pierrette	{"Short\n"}	tt0000299	f	short	1900-01-01
298	The Enchanted Drawing	{Animation,Comedy,"Fantasy\n"}	tt0000300	f	short	1900-01-01
299	Faust and Marguerite	{Fantasy,Horror,"Short\n"}	tt0000301	f	short	1900-01-01
300	La fée aux choux, ou la naissance des enfants	{"Short\n"}	tt0000302	f	short	1900-01-01
301	Gavotte directoire	{"Short\n"}	tt0000303	f	short	1900-01-01
302	Grandma's Reading Glass	{Family,"Short\n"}	tt0000304	f	short	1900-01-01
303	L'Habanera	{"Short\n"}	tt0000305	f	short	1900-01-01
304	Le duel d'Hamlet	{Drama,"Short\n"}	tt0000306	f	short	1900-01-01
305	Happy Hooligan	{Comedy,"Short\n"}	tt0000307	f	short	1900-01-01
306	The House That Jack Built	{"Short\n"}	tt0000308	f	short	1900-01-01
307	How It Feels to Be Run Over	{Comedy,"Short\n"}	tt0000309	f	short	1900-01-01
308	Chimmie Hicks and the Rum Omelet	{Comedy,"Short\n"}	tt0000310	f	short	1900-01-01
309	Le lapin	{"Short\n"}	tt0000312	f	short	1900-01-01
310	Let Me Dream Again	{Comedy,"Short\n"}	tt0000313	f	short	1900-01-01
311	Leçon de danse	{"Short\n"}	tt0000314	f	short	1900-01-01
312	Le marchand de coco	{"Short\n"}	tt0000315	f	short	1900-01-01
313	Marché à la volaille	{"Short\n"}	tt0000316	f	short	1900-01-01
314	Le matelot	{"Short\n"}	tt0000317	f	short	1900-01-01
315	Eine moderne Jungfrau von Orleans	{"Short\n"}	tt0000318	f	short	1900-01-01
316	Maple Leaf Viewing	{Horror,"Short\n"}	tt0000319	f	short	1899-01-01
317	Mort d'Adonis	{"Short\n"}	tt0000320	f	short	1900-01-01
318	The Mystic Swing	{Fantasy,"Short\n"}	tt0000321	f	short	1900-01-01
319	Panorama de Barcelona: monumentos y fiestas	{Documentary,"Short\n"}	tt0000322	f	short	1900-01-01
320	Pas Japonais	{"Short\n"}	tt0000323	f	short	1900-01-01
321	Pas de grâce	{"Short\n"}	tt0000324	f	short	1900-01-01
322	Pas des éventails	{"Short\n"}	tt0000325	f	short	1900-01-01
323	Pas du poignard	{"Short\n"}	tt0000326	f	short	1900-01-01
324	La paysanne	{"Short\n"}	tt0000327	f	short	1900-01-01
325	La petite magicienne	{"Short\n"}	tt0000328	f	short	1900-01-01
326	Le Polichinelle	{"Short\n"}	tt0000329	f	short	1900-01-01
327	La poupée noire	{"Short\n"}	tt0000330	f	short	1900-01-01
328	La reine des jouets	{"Short\n"}	tt0000331	f	short	1900-01-01
329	Retour des champs	{Documentary,"Short\n"}	tt0000332	f	short	1900-01-01
330	Le sang d'Adonis donnant naissance à la rose rouge	{"Short\n"}	tt0000333	f	short	1900-01-01
331	Saut humidifié de M. Plick	{Comedy,"Short\n"}	tt0000334	f	short	1900-01-01
332	Soldiers of the Cross	{Biography,Drama,"Short\n"}	tt0000335	f	short	1900-01-01
333	La source	{"Short\n"}	tt0000336	f	short	1900-01-01
334	Spanish Bullfight	{Short,"Sport\n"}	tt0000337	f	short	1900-01-01
335	Suite de la danse	{"Short\n"}	tt0000338	f	short	1900-01-01
336	La tarentelle	{"Short\n"}	tt0000339	f	short	1900-01-01
337	Uncle Josh in a Spooky Hotel	{Comedy,Fantasy,"Short\n"}	tt0000340	f	short	1900-01-01
338	Uncle Josh's Nightmare	{Comedy,Fantasy,"Short\n"}	tt0000341	f	short	1900-01-01
339	Une rage de dents	{Comedy,"Short\n"}	tt0000342	f	short	1900-01-01
340	Valse directoire	{"Short\n"}	tt0000343	f	short	1900-01-01
341	Valse lente	{"Short\n"}	tt0000344	f	short	1900-01-01
342	L'écossaise	{"Short\n"}	tt0000345	f	short	1900-01-01
343	Another Job for the Undertaker	{Comedy,"Short\n"}	tt0000346	f	short	1901-01-01
344	Buffalo Bill's Wild West Parade	{Documentary,News,"Short\n"}	tt0000347	f	short	1901-01-01
345	Charmant froufrou	{"Short\n"}	tt0000348	f	short	1901-01-01
346	What Came Out of the Cheese; or, The Lilliputians in a New York Restaurant	{Comedy,"Short\n"}	tt0000349	f	short	1901-01-01
347	The Countryman's First Sight of the Animated Pictures	{Comedy,"Short\n"}	tt0000350	f	short	1901-01-01
348	Danses basques	{"Short\n"}	tt0000351	f	short	1901-01-01
349	Day at the Circus	{Documentary,"Short\n"}	tt0000352	f	short	1901-01-01
350	Execution of Czolgosz with Panorama of Auburn Prison	{Drama,History,"Short\n"}	tt0000353	f	short	1901-01-01
351	Exercício de Artilharia no Hipódromo de Belém	{Documentary,"Short\n"}	tt0000354	f	short	1901-01-01
352	Fire!	{Action,Drama,"Short\n"}	tt0000355	f	short	1901-01-01
353	Frivolité	{"Short\n"}	tt0000356	f	short	1901-01-01
354	The Haunted Curiosity Shop	{Comedy,Fantasy,"Horror\n"}	tt0000357	f	short	1901-01-01
355	History of a Crime	{Crime,Drama,"Short\n"}	tt0000358	f	short	1901-01-01
356	The India Rubber Head	{Comedy,Fantasy,"Short\n"}	tt0000359	f	short	1901-01-01
357	Hussards et grisettes	{"Short\n"}	tt0000360	f	short	1901-01-01
358	Lavatory moderne	{"Short\n"}	tt0000361	f	short	1901-01-01
359	Lecture quotidienne	{"Short\n"}	tt0000362	f	short	1901-01-01
360	Magical Sword	{Fantasy,Romance,"Short\n"}	tt0000363	f	short	1901-01-01
361	Panorama of Esplanade by Night	{Documentary,"Short\n"}	tt0000364	f	short	1901-01-01
362	Parada de Bombeiros	{Documentary,"Short\n"}	tt0000365	f	short	1901-01-01
363	Uma Parada dos Alunos da Casa Pia de Lisboa	{Documentary,"Short\n"}	tt0000366	f	short	1901-01-01
364	Pas de colombine	{"Short\n"}	tt0000367	f	short	1901-01-01
365	Little Red Riding Hood	{Fantasy,"Short\n"}	tt0000368	f	short	1901-01-01
366	A Road for Children's Bicycles in Barcelona	{Documentary,"Short\n"}	tt0000369	f	short	1901-01-01
367	Scrooge; or Marley's Ghost	{Drama,Fantasy,"Horror\n"}	tt0000370	f	short	1901-01-01
368	Scène d'amour	{"Short\n"}	tt0000371	f	short	1901-01-01
369	Scène d'ivresse	{"Short\n"}	tt0000372	f	short	1901-01-01
370	The Devil's Seven Castles	{Drama,Horror,"Short\n"}	tt0000373	f	short	1902-01-01
371	Tel est pris qui croyait prendre	{"Short\n"}	tt0000374	f	short	1901-01-01
372	Uma Tourada à Antiga Portuguesa	{Documentary,"Short\n"}	tt0000375	f	short	1901-01-01
373	A táncz	{Documentary,"Short\n"}	tt0000376	f	short	1901-01-01
374	Undressing Extraordinary	{Comedy,Fantasy,"Short\n"}	tt0000377	f	short	1901-01-01
375	Les vagues	{"Short\n"}	tt0000378	f	short	1901-01-01
376	Visita de la escuadra inglesa a Barcelona	{Documentary,"Short\n"}	tt0000379	f	short	1901-01-01
377	Sleeping Beauty	{Drama,Fantasy,"Short\n"}	tt0000380	f	short	1903-01-01
378	Buffalo Bill's Wild West Show	{News,"Short\n"}	tt0000381	f	short	1902-01-01
379	Carnaval en las ramblas	{Documentary,"Short\n"}	tt0000382	f	short	1902-01-01
380	Carreras de caballos en el hipódromo de Barcelona	{Documentary,"Short\n"}	tt0000383	f	short	1902-01-01
381	Les chiens savants	{Documentary,"Short\n"}	tt0000384	f	short	1902-01-01
383	La cour des miracles	{Comedy,"Short\n"}	tt0000386	f	short	1902-01-01
384	The Coronation of King Edward VII	{History,"Short\n"}	tt0000387	f	short	1902-01-01
385	Danse excentrique	{"Short\n"}	tt0000388	f	short	1902-01-01
386	Danse fantaisiste	{"Short\n"}	tt0000389	f	short	1902-01-01
387	Danse mauresque	{"Short\n"}	tt0000390	f	short	1902-01-01
388	La dent récalcitrante	{Comedy,"Short\n"}	tt0000391	f	short	1902-01-01
389	The Enchanted Cup	{Fantasy,"Short\n"}	tt0000392	f	short	1903-01-01
390	En faction	{Comedy,"Short\n"}	tt0000393	f	short	1902-01-01
391	Farces de cuisinière	{Comedy,"Short\n"}	tt0000394	f	short	1902-01-01
392	La fiole enchantée	{"Short\n"}	tt0000395	f	short	1902-01-01
393	Fruits de saison	{"Short\n"}	tt0000396	f	short	1902-01-01
394	La gavotte	{"Short\n"}	tt0000397	f	short	1902-01-01
395	La gigue	{"Short\n"}	tt0000398	f	short	1902-01-01
396	Jack and the Beanstalk	{Fantasy,"Short\n"}	tt0000399	f	short	1902-01-01
397	Le lion savant	{Comedy,"Short\n"}	tt0000400	f	short	1902-01-01
398	Le marchand de ballons	{Comedy,"Short\n"}	tt0000401	f	short	1902-01-01
399	Mother Goose Nursery Rhymes	{Comedy,"Short\n"}	tt0000402	f	short	1902-01-01
400	Le pommier	{"Short\n"}	tt0000403	f	short	1902-01-01
401	Pour secouer la salade	{"Short\n"}	tt0000404	f	short	1902-01-01
402	La première gamelle	{Comedy,"Short\n"}	tt0000405	f	short	1902-01-01
403	The Prince of Darkness	{Horror,"Short\n"}	tt0000406	f	short	1900-01-01
404	Procesión de las hijas de María de la parroquia de Sans	{Documentary,"Short\n"}	tt0000407	f	short	1902-01-01
405	Quadrille réaliste	{"Short\n"}	tt0000408	f	short	1902-01-01
406	Midwife to the Upper Classes	{Comedy,"Short\n"}	tt0000409	f	short	1902-01-01
407	Demolishing and Building Up the Star Theatre	{Documentary,"Short\n"}	tt0000410	f	short	1901-01-01
408	Trompé mais content	{Comedy,"Short\n"}	tt0000411	f	short	1902-01-01
409	The Troublesome Fly	{Comedy,Horror,"Short\n"}	tt0000412	f	short	1900-01-01
410	The Devil's Money Bags	{Comedy,Fantasy,"Horror\n"}	tt0000413	f	short	1902-01-01
411	Uncle Josh at the Moving Picture Show	{Comedy,"Short\n"}	tt0000414	f	short	1902-01-01
412	A Peculiar Cabinet	{"Short\n"}	tt0000415	f	short	1902-01-01
413	Alcohol and Its Victims	{Drama,"Short\n"}	tt0000416	f	short	1902-01-01
414	A Trip to the Moon	{Action,Adventure,"Comedy\n"}	tt0000417	f	short	1902-01-01
415	The Wild Man of Borneo	{Drama,"Short\n"}	tt0000418	f	short	1902-01-01
416	L'équilibriste	{"Short\n"}	tt0000419	f	short	1902-01-01
417	Alice in Wonderland	{Family,Fantasy,"Short\n"}	tt0000420	f	short	1903-01-01
418	Les apaches pas veinards	{"Short\n"}	tt0000421	f	short	1903-01-01
419	Les aventures d'un voyageur trop pressé	{"Short\n"}	tt0000422	f	short	1903-01-01
420	The Enchanted Box	{Fantasy,"Short\n"}	tt0000423	f	short	1903-01-01
421	Les braconniers	{"Short\n"}	tt0000424	f	short	1903-01-01
422	Buffalo Bill's Parade	{Documentary,"Short\n"}	tt0000425	f	short	1903-01-01
423	Buffalo Bill's Street Parade	{Documentary,"Short\n"}	tt0000426	f	short	1903-01-01
424	Cake-walk de la pendule	{"Short\n"}	tt0000427	f	short	1903-01-01
425	Carreras de bicicletas en el parque	{Documentary,"Short\n"}	tt0000428	f	short	1903-01-01
426	La chasse au cambrioleur	{"Short\n"}	tt0000429	f	short	1903-01-01
427	A Chess Dispute	{Comedy,"Short\n"}	tt0000430	f	short	1903-01-01
428	Comme on fait son lit on se couche	{"Short\n"}	tt0000431	f	short	1903-01-01
429	How Monsieur Takes His Bath	{Comedy,"Short\n"}	tt0000432	f	short	1903-01-01
430	Compagnons de voyage encombrants	{"Short\n"}	tt0000433	f	short	1903-01-01
431	Dorothy's Dream	{Fantasy,"Short\n"}	tt0000434	f	short	1903-01-01
432	Enlèvement en automobile et mariage précipité	{"Short\n"}	tt0000435	f	short	1903-01-01
433	An Extraordinary Cab Accident	{Comedy,"Short\n"}	tt0000436	f	short	1903-01-01
434	Faust et Méphistophélès	{Drama,Horror,"Short\n"}	tt0000437	f	short	1903-01-01
435	Le fiancé ensorcelé	{"Short\n"}	tt0000438	f	short	1903-01-01
436	The Great Train Robbery	{Action,Adventure,"Crime\n"}	tt0000439	f	short	1903-01-01
437	La guirlande merveilleuse	{Fantasy,"Short\n"}	tt0000440	f	short	1903-01-01
438	Gulliver en el país de los gigantes	{"Short\n"}	tt0000441	f	short	1903-01-01
439	Capital Execution	{Drama,"Short\n"}	tt0000442	f	short	1903-01-01
440	Hiawatha	{Adventure,Drama,"Short\n"}	tt0000443	f	short	1903-01-01
441	Illusionniste renversant	{"Short\n"}	tt0000444	f	short	1903-01-01
442	Jocko musicien	{"Short\n"}	tt0000445	f	short	1903-01-01
443	Kit Carson	{Short,"Western\n"}	tt0000446	f	short	1903-01-01
444	Life of an American Fireman	{Action,"Short\n"}	tt0000447	f	short	1903-01-01
445	Le liqueur du couvent	{"Short\n"}	tt0000448	f	short	1903-01-01
446	Lutteurs américains	{"Short\n"}	tt0000449	f	short	1903-01-01
447	La main du professeur Hamilton ou le roi des dollars	{"Short\n"}	tt0000450	f	short	1903-01-01
448	Mary Jane's Mishap	{Comedy,"Short\n"}	tt0000451	f	short	1903-01-01
449	The Messenger Boy's Mistake	{Comedy,Romance,"Short\n"}	tt0000452	f	short	1903-01-01
450	Modelage express	{"Short\n"}	tt0000453	f	short	1903-01-01
451	La mouche	{"Short\n"}	tt0000454	f	short	1903-01-01
452	The Music Lover	{Comedy,Music,"Short\n"}	tt0000455	f	short	1903-01-01
453	N.Y. Fire Department Returning	{Documentary,"Short\n"}	tt0000456	f	short	1903-01-01
454	Ne bougeons plus	{"Short\n"}	tt0000457	f	short	1903-01-01
455	Nos bons étudiants	{"Short\n"}	tt0000458	f	short	1903-01-01
456	Panorama of Riker's Island, N.Y.	{Documentary,"Short\n"}	tt0000459	f	short	1903-01-01
457	The Pioneers	{Short,"Western\n"}	tt0000460	f	short	1903-01-01
458	Potage indigeste	{"Short\n"}	tt0000461	f	short	1903-01-01
459	La poule fantaisiste	{"Short\n"}	tt0000462	f	short	1903-01-01
460	Puerto de Barcelona	{Documentary,"Short\n"}	tt0000463	f	short	1903-01-01
461	Rip Van Winkle	{Comedy,"Short\n"}	tt0000464	f	short	1903-01-01
462	The Kingdom of the Fairies	{Adventure,Fantasy,"Short\n"}	tt0000465	f	short	1903-01-01
463	Répétition dans un cirque	{"Short\n"}	tt0000466	f	short	1903-01-01
464	Secours aux naufragés	{"Short\n"}	tt0000467	f	short	1903-01-01
465	Service précipité	{"Short\n"}	tt0000468	f	short	1903-01-01
466	The Sick Kitten	{Comedy,Family,"Short\n"}	tt0000469	f	short	1903-01-01
467	Les surprises de l'affichage	{"Short\n"}	tt0000470	f	short	1903-01-01
468	Uncle Tom's Cabin	{Drama,"Short\n"}	tt0000471	f	short	1903-01-01
469	Uncle Tom's Cabin	{Drama,"Short\n"}	tt0000472	f	short	1903-01-01
470	La valise enchantée	{"Short\n"}	tt0000473	f	short	1905-01-01
471	Le voleur sacrilège	{"Short\n"}	tt0000474	f	short	1903-01-01
472	Voyage of the 'Arctic'	{Drama,"Short\n"}	tt0000475	f	short	1903-01-01
473	Après la fête	{"Short\n"}	tt0000476	f	short	1904-01-01
474	L'assassinat du courrier de Lyon	{Drama,"Short\n"}	tt0000477	f	short	1904-01-01
475	Behind the Scenes	{Comedy,"Short\n"}	tt0000478	f	short	1904-01-01
476	Rum vs. Cherries	{Drama,"Short\n"}	tt0000479	f	short	1904-01-01
477	Le coffre enchanté	{Fantasy,"Short\n"}	tt0000480	f	short	1904-01-01
478	A Collier's Life	{"Short\n"}	tt0000481	f	short	1904-01-01
479	Comment on disperse les foules	{Comedy,"Short\n"}	tt0000482	f	short	1904-01-01
480	Les deux rivaux	{Comedy,"Short\n"}	tt0000483	f	short	1904-01-01
481	Les enfants du miracle	{"Short\n"}	tt0000484	f	short	1904-01-01
482	La gavotte de la reine	{"Short\n"}	tt0000485	f	short	1904-01-01
483	A Gentleman of France	{Drama,"Short\n"}	tt0000486	f	short	1905-01-01
484	The Great Train Robbery	{Short,"Western\n"}	tt0000487	f	short	1904-01-01
485	The Land Beyond the Sunset	{Drama,Fantasy,"Short\n"}	tt0000488	f	short	1912-01-01
486	La leçon de pipeau	{"Short\n"}	tt0000489	f	short	1904-01-01
487	L'oiseau envolé	{"Short\n"}	tt0000490	f	short	1904-01-01
488	Opening the Williamsburg Bridge	{News,"Short\n"}	tt0000491	f	short	1904-01-01
489	Personal	{Comedy,"Short\n"}	tt0000492	f	short	1904-01-01
490	Pierrot, Murderer	{"Short\n"}	tt0000493	f	short	1904-01-01
491	Le pompon malencontreux	{"Short\n"}	tt0000494	f	short	1904-01-01
492	The Pearl Fisher	{Fantasy,"Short\n"}	tt0000495	f	short	1907-01-01
493	Railroad Smashup	{Action,"Short\n"}	tt0000496	f	short	1904-01-01
494	A Railway Tragedy	{Crime,"Short\n"}	tt0000497	f	short	1904-01-01
495	Rescued by Rover	{Crime,Drama,"Family\n"}	tt0000498	f	short	1905-01-01
496	The Impossible Voyage	{Action,Adventure,"Family\n"}	tt0000499	f	short	1904-01-01
497	The Abductors	{"Short\n"}	tt0000500	f	short	1905-01-01
498	Adventures of Sherlock Holmes	{Crime,Drama,"Mystery\n"}	tt0000501	f	short	1905-01-01
499	Bohemios	{"\\\\N\n"}	tt0000502	f	movie	1905-01-01
500	Corrida de beneficencia en Zaragoza, por Quinito y Montes	{Documentary,"Short\n"}	tt0000503	f	short	1905-01-01
501	Coso y Paseo de Santa Engracia (Calles y plazas de Zaragoza)	{Documentary,"Short\n"}	tt0000504	f	short	1905-01-01
502	The Wig Chase	{Comedy,"Short\n"}	tt0000505	f	short	1906-01-01
503	The Effects of Too Much Scotch	{Drama,"Short\n"}	tt0000506	f	short	1905-01-01
504	Departure of Peary and the Roosevelt from New York	{News,"Short\n"}	tt0000507	f	short	1905-01-01
505	Desde el coso a la calle Cerdán (Calles y plazas de Zaragoza)	{Documentary,"Short\n"}	tt0000508	f	short	1905-01-01
506	The Inexperienced Chauffeur	{Comedy,"Short\n"}	tt0000509	f	short	1906-01-01
507	El dúo de la Africana	{"Short\n"}	tt0000510	f	short	1905-01-01
508	Esmeralda	{Drama,"Short\n"}	tt0000511	f	short	1905-01-01
509	Funeral of Hiram Cronk	{Documentary,News,"Short\n"}	tt0000512	f	short	1905-01-01
510	Gigantes y cabezudos	{Documentary,"Short\n"}	tt0000513	f	short	1905-01-01
511	Los guapos de la Vaquería del Parque	{Comedy,"Short\n"}	tt0000514	f	short	1905-01-01
512	Los guapos del parque	{Comedy,"Short\n"}	tt0000515	f	short	1904-01-01
513	The Electric Hotel	{Animation,Fantasy,"Sci-Fi\n"}	tt0000516	f	short	1908-01-01
514	El húsar de la guardia	{"Short\n"}	tt0000517	f	short	1905-01-01
515	Juanito el forzudo	{"Short\n"}	tt0000518	f	short	1905-01-01
516	The Kleptomaniac	{Crime,Drama,"Short\n"}	tt0000519	f	short	1905-01-01
517	The Life of Charles Peace	{Biography,Crime,"Short\n"}	tt0000520	f	short	1905-01-01
518	The Little Train Robbery	{Action,Crime,"Family\n"}	tt0000521	f	short	1905-01-01
519	The Moonshiners	{Action,Drama,"Short\n"}	tt0000522	f	short	1905-01-01
520	Moose Hunting in Newfoundland	{Documentary,"Short\n"}	tt0000523	f	short	1905-01-01
521	New York Subway	{Documentary,"Short\n"}	tt0000524	f	short	1905-01-01
522	Hanging at Jefferson City	{Short,"Western\n"}	tt0000525	f	short	1910-01-01
523	Pennsylvania Tunnel Excavation	{Documentary,"Short\n"}	tt0000526	f	short	1905-01-01
524	Plaza de la Magdalena (Calles y plazas de Zaragoza)	{Documentary,"Short\n"}	tt0000527	f	short	1905-01-01
525	Raffles, the Amateur Cracksman	{Adventure,Romance,"Short\n"}	tt0000528	f	short	1905-01-01
526	Reuben in the Opium Joint	{Comedy,"Short\n"}	tt0000529	f	short	1905-01-01
527	Se da de comer	{Comedy,"Short\n"}	tt0000530	f	short	1905-01-01
528	Los sitios de Chile	{Drama,Short,"War\n"}	tt0000531	f	short	1905-01-01
529	Torrero y la ribera (Calles y plazas de Zaragoza)	{Documentary,"Short\n"}	tt0000532	f	short	1905-01-01
530	The Wooing and Wedding of a Coon	{Comedy,"Short\n"}	tt0000533	f	short	1907-01-01
531	The '?' Motorist	{Comedy,Fantasy,"Sci-Fi\n"}	tt0000534	f	short	1906-01-01
532	The Anarchist's Mother-in-Law	{Comedy,"Short\n"}	tt0000535	f	short	1906-01-01
533	Apachentanz	{"Short\n"}	tt0000536	f	short	1906-01-01
534	Arrival of Immigrants, Ellis Island	{Documentary,"Short\n"}	tt0000537	f	short	1906-01-01
535	Bilbao, Portugalete y los Altos Hornos	{Documentary,"Short\n"}	tt0000538	f	short	1906-01-01
536	Bonden i København	{"Short\n"}	tt0000539	f	short	1906-01-01
537	Branden i Frihavnen	{"Short\n"}	tt0000540	f	short	1906-01-01
538	Caros død	{"Short\n"}	tt0000541	f	short	1906-01-01
539	Cerveza gratis	{Comedy,"Short\n"}	tt0000542	f	short	1906-01-01
540	Christian IXS bisættelse	{Documentary,"Short\n"}	tt0000543	f	short	1906-01-01
541	The Dancer's Dream	{"Short\n"}	tt0000544	f	short	1906-01-01
542	Dream of a Racetrack Fiend	{Comedy,"Short\n"}	tt0000545	f	short	1906-01-01
543	Dream of a Rarebit Fiend	{Comedy,Fantasy,"Short\n"}	tt0000546	f	short	1906-01-01
544	Ferias en San Sebastián y Cabalgata en la Ría	{Documentary,"Short\n"}	tt0000547	f	short	1906-01-01
545	Fiskerliv i Norden	{"Short\n"}	tt0000548	f	short	1906-01-01
546	En foræring til min Kone	{"Short\n"}	tt0000549	f	short	1906-01-01
547	Proklamationen af Kong Frederik d. VIII	{News,"Short\n"}	tt0000550	f	short	1906-01-01
548	Fæstningskrigen	{"Short\n"}	tt0000551	f	short	1906-01-01
549	The Hand of the Artist	{Animation,"Short\n"}	tt0000552	f	short	1907-01-01
550	The Haunted Hotel	{Comedy,Fantasy,"Horror\n"}	tt0000553	f	short	1907-01-01
551	Humorous Phases of Funny Faces	{Animation,Comedy,"Family\n"}	tt0000554	f	short	1906-01-01
552	Den hvide slavinde	{"Short\n"}	tt0000555	f	short	1907-01-01
553	Hævnet	{Romance,"Short\n"}	tt0000556	f	short	1907-01-01
554	Kathleen Mavourneen	{Drama,Romance,"Short\n"}	tt0000557	f	short	1906-01-01
555	Los kikos	{Documentary,"Short\n"}	tt0000558	f	short	1906-01-01
556	Konfirmanden	{"Short\n"}	tt0000559	f	short	1906-01-01
557	Ladrones burlados	{"Short\n"}	tt0000560	f	short	1906-01-01
558	The Life of a Cowboy	{Short,"Western\n"}	tt0000561	f	short	1906-01-01
559	Os Lusíadas	{"Short\n"}	tt0000562	f	short	1906-01-01
560	Mellem Aber og Bjørne	{"Short\n"}	tt0000563	f	short	1906-01-01
561	A Modern Oliver Twist	{Drama,"Short\n"}	tt0000564	f	short	1906-01-01
562	The Night Before Christmas	{Animation,Family,"Fantasy\n"}	tt0000565	f	short	1905-01-01
563	Professorens Morgenavis	{"Short\n"}	tt0000566	f	short	1906-01-01
564	The 400 Tricks of the Devil	{Fantasy,Horror,"Short\n"}	tt0000567	f	short	1906-01-01
565	Rosenborg Have	{"Short\n"}	tt0000568	f	short	1906-01-01
566	Røverhøvdingens Flugt og Død	{Drama,"Short\n"}	tt0000569	f	short	1906-01-01
567	San Francisco Disaster	{Documentary,"Short\n"}	tt0000570	f	short	1906-01-01
568	The San Francisco Earthquake	{Documentary,History,"Short\n"}	tt0000571	f	short	1906-01-01
569	Secreto de confesión	{"Short\n"}	tt0000572	f	short	1906-01-01
570	Den sorte maske	{"Short\n"}	tt0000573	f	short	1906-01-01
571	The Story of the Kelly Gang	{Action,Adventure,"Biography\n"}	tt0000574	f	movie	1906-01-01
572	20,000 Leagues Under the Sea	{Adventure,Fantasy,"Sci-Fi\n"}	tt0000575	f	short	1907-01-01
573	Ali Baba and the Forty Thieves	{Drama,Fantasy,"Short\n"}	tt0000576	f	short	1907-01-01
574	Angelo, Tyrant of Padua	{Drama,"Short\n"}	tt0000577	f	short	1907-01-01
575	An Awful Skate; or, the Hobo on Rollers	{Comedy,Family,"Short\n"}	tt0000578	f	short	1907-01-01
576	The Bandit Makes Good	{Short,"Western\n"}	tt0000579	f	short	1908-01-01
577	A Batalha das Flores no Campo Grande	{Documentary,"Short\n"}	tt0000580	f	short	1907-01-01
578	Bauernhaus und Grafenschloß	{"Short\n"}	tt0000581	f	short	1907-01-01
579	Ben Hur	{Drama,"Short\n"}	tt0000582	f	short	1907-01-01
580	The Lady with the Camellias	{Drama,Romance,"Short\n"}	tt0000583	f	short	1907-01-01
581	El ciego de la aldea	{Crime,Drama,"Short\n"}	tt0000584	f	short	1907-01-01
582	Concurso de sardanas en el parque Guell	{Documentary,"Short\n"}	tt0000585	f	short	1907-01-01
583	A Curious Dream	{Drama,"Short\n"}	tt0000586	f	short	1907-01-01
584	La dea del mare	{"Short\n"}	tt0000587	f	short	1907-01-01
585	Der var engang	{"Short\n"}	tt0000588	f	short	1907-01-01
586	Descoberta da América por Cristovão Colombo	{Documentary,"Short\n"}	tt0000589	f	short	1907-01-01
587	Dr. Skinum	{Comedy,"Short\n"}	tt0000590	f	short	1907-01-01
588	The Prodigal Son	{"Drama\n"}	tt0000591	f	movie	1907-01-01
589	Eureka Stockade	{"Short\n"}	tt0000592	f	short	1907-01-01
590	Fiestas de San Antonio	{Documentary,"Short\n"}	tt0000593	f	short	1907-01-01
591	The Flight from the Seraglio	{Drama,"Short\n"}	tt0000594	f	short	1907-01-01
592	From the Rococo Times	{Drama,"Short\n"}	tt0000595	f	short	1908-01-01
593	Fyrtøjet	{"Short\n"}	tt0000596	f	short	1907-01-01
594	The Magic Mirror	{"Short\n"}	tt0000597	f	short	1907-01-01
595	Hamlet, Prince of Denmark	{Drama,"Short\n"}	tt0000598	f	short	1907-01-01
596	Isbjørnejagten	{Drama,"Short\n"}	tt0000599	f	short	1907-01-01
597	Lohengrin	{Drama,Musical,"Short\n"}	tt0000601	f	short	1910-01-01
598	Lion Hunting	{Adventure,Drama,"Short\n"}	tt0000602	f	short	1907-01-01
599	The Magic Fountain Pen	{Animation,"Short\n"}	tt0000603	f	short	1909-01-01
600	A Misalliance	{Drama,"Short\n"}	tt0000604	f	short	1907-01-01
601	Mordet paa Fyn	{Crime,Drama,"Short\n"}	tt0000605	f	short	1907-01-01
602	Mr. Gay and Mrs.	{Comedy,"Short\n"}	tt0000606	f	short	1907-01-01
603	La muerte del tirano	{"Short\n"}	tt0000607	f	short	1907-01-01
604	En ny hat til Madammen	{Comedy,"Short\n"}	tt0000608	f	short	1906-01-01
605	Othello	{Drama,Music,"Romance\n"}	tt0000609	f	short	1906-01-01
606	Othello	{Drama,Romance,"Short\n"}	tt0000610	f	short	1907-01-01
607	In the Sultan's Power	{Adventure,"Short\n"}	tt0000611	f	short	1909-01-01
608	Procesión marítima en Santa Cristina	{Documentary,"Short\n"}	tt0000612	f	short	1907-01-01
609	O Rapto de Uma Actriz	{Drama,"Short\n"}	tt0000613	f	short	1907-01-01
610	The Red Spectre	{Fantasy,Horror,"Short\n"}	tt0000614	f	short	1907-01-01
611	Robbery Under Arms	{"Drama\n"}	tt0000615	f	movie	1907-01-01
612	Romería a San Medín	{Documentary,"Short\n"}	tt0000616	f	short	1907-01-01
613	The Robber's Sweetheart	{Drama,"Short\n"}	tt0000617	f	short	1907-01-01
614	Salaviinanpolttajat	{Comedy,"Short\n"}	tt0000618	f	short	1907-01-01
615	Stalking and Shooting Caribou in Newfoundland	{Documentary,"Short\n"}	tt0000619	f	short	1907-01-01
616	The Will	{Drama,"Short\n"}	tt0000620	f	short	1908-01-01
617	That Fatal Sneeze	{Comedy,Fantasy,"Short\n"}	tt0000621	f	short	1907-01-01
618	Tierra baja	{"Short\n"}	tt0000622	f	short	1907-01-01
619	The Magic Bag	{Comedy,"Short\n"}	tt0000623	f	short	1907-01-01
620	The Ugly Duckling	{"Short\n"}	tt0000624	f	short	1907-01-01
621	Villafranca: Fiestas del Drac y bailes típicos	{Documentary,"Short\n"}	tt0000625	f	short	1907-01-01
622	Yale Laundry	{Comedy,"Short\n"}	tt0000626	f	short	1907-01-01
623	'Ostler Joe	{Drama,"Short\n"}	tt0000627	f	short	1908-01-01
624	The Adventures of Dollie	{Action,"Short\n"}	tt0000628	f	short	1908-01-01
625	After Many Years	{Drama,"Short\n"}	tt0000629	f	short	1908-01-01
626	Hamlet	{"Drama\n"}	tt0000630	f	movie	1908-01-01
627	Hamlet	{Drama,"Short\n"}	tt0000631	f	short	1908-01-01
628	Amor que mata	{"Short\n"}	tt0000632	f	short	1908-01-01
629	The Anarchist's Sweetheart	{Drama,"Short\n"}	tt0000633	f	short	1908-01-01
743	Romance of a Jewess	{Drama,"Short\n"}	tt0000752	f	short	1908-01-01
630	Antony and Cleopatra	{Drama,History,"Romance\n"}	tt0000634	f	short	1908-01-01
631	As You Like It	{"Short\n"}	tt0000636	f	short	1908-01-01
632	The Assassination of the Duke de Guise	{Drama,History,"Short\n"}	tt0000637	f	short	1908-01-01
633	At the Crossroads of Life	{Drama,"Short\n"}	tt0000638	f	short	1908-01-01
634	At the French Ball	{Comedy,"Short\n"}	tt0000639	f	short	1908-01-01
635	An Awful Moment	{Drama,"Short\n"}	tt0000640	f	short	1908-01-01
636	Balked at the Altar	{Comedy,"Short\n"}	tt0000641	f	short	1908-01-01
637	The Bandit's Waterloo	{Action,"Short\n"}	tt0000642	f	short	1908-01-01
638	Barbara Fritchie: The Story of a Patriotic American Woman	{Drama,History,"Short\n"}	tt0000643	f	short	1908-01-01
639	Behind the Scenes	{Drama,"Short\n"}	tt0000644	f	short	1908-01-01
640	Betrayed by a Handprint	{Crime,"Short\n"}	tt0000645	f	short	1908-01-01
641	Biblical Scenes	{"Short\n"}	tt0000646	f	short	1908-01-01
642	Bjørnejagten	{Comedy,"Short\n"}	tt0000647	f	short	1910-01-01
643	The Black Viper	{Drama,"Short\n"}	tt0000648	f	short	1908-01-01
644	Bobby's Kodak	{Comedy,"Short\n"}	tt0000649	f	short	1908-01-01
645	The Boston Tea Party	{Drama,History,"Short\n"}	tt0000650	f	short	1908-01-01
646	The Boy Detective, or the Abductors Foiled	{Comedy,Drama,"Short\n"}	tt0000651	f	short	1908-01-01
647	A Calamitous Elopement	{Comedy,"Short\n"}	tt0000653	f	short	1908-01-01
648	The Call of the Wild	{Action,"Short\n"}	tt0000654	f	short	1908-01-01
649	Los calzoncillos de Tony	{"Short\n"}	tt0000655	f	short	1908-01-01
650	Il cane riconoscente	{"Short\n"}	tt0000656	f	short	1907-01-01
651	Carreras de caballos de 1908	{Documentary,"Short\n"}	tt0000657	f	short	1908-01-01
652	The Puppet's Nightmare	{Animation,"Short\n"}	tt0000658	f	short	1908-01-01
653	Caught by Wireless	{Drama,"Short\n"}	tt0000659	f	short	1908-01-01
654	The Christmas Burglars	{Comedy,"Short\n"}	tt0000660	f	short	1908-01-01
655	Humanity Through the Ages	{"Short\n"}	tt0000661	f	short	1908-01-01
656	Classmates	{Drama,Romance,"Short\n"}	tt0000662	f	short	1908-01-01
657	The Clubman and the Tramp	{Comedy,"Short\n"}	tt0000663	f	short	1908-01-01
658	Los competidores	{"Short\n"}	tt0000664	f	short	1908-01-01
659	Concealing a Burglar	{Drama,"Short\n"}	tt0000665	f	short	1908-01-01
660	Corrida de toros con Antonio Fuentes	{Documentary,Short,"Sport\n"}	tt0000666	f	short	1908-01-01
661	Corrida de toros con Ricardo Torres 'Bombita'	{Documentary,Short,"Sport\n"}	tt0000667	f	short	1908-01-01
662	The Count of Monte Cristo	{Action,Drama,"Short\n"}	tt0000668	f	short	1908-01-01
663	Cupid's Pranks	{Comedy,Fantasy,"Short\n"}	tt0000669	f	short	1908-01-01
664	El curioso impertinente	{"Short\n"}	tt0000670	f	short	1908-01-01
665	Desdemona	{Drama,"Short\n"}	tt0000671	f	short	1908-01-01
666	The Devil	{Drama,"Short\n"}	tt0000672	f	short	1908-01-01
667	La Dolores	{"Short\n"}	tt0000673	f	short	1908-01-01
668	Don Juan Tenorio	{Drama,"Short\n"}	tt0000674	f	short	1908-01-01
669	Don Quijote	{"Drama\n"}	tt0000675	f	movie	1908-01-01
670	Don Álvaro o la fuerza del sino	{Drama,"Short\n"}	tt0000676	f	short	1908-01-01
671	Ex-Convict No. 900	{Drama,"Short\n"}	tt0000677	f	short	1908-01-01
672	Excursión a Montserrat	{Documentary,"Short\n"}	tt0000678	f	short	1908-01-01
673	The Fairylogue and Radio-Plays	{Adventure,"Fantasy\n"}	tt0000679	f	movie	1908-01-01
674	Falsely Accused!	{Drama,"Short\n"}	tt0000680	f	short	1908-01-01
675	A Famous Escape	{Drama,"Short\n"}	tt0000681	f	short	1908-01-01
676	A Fantasy	{Animation,Comedy,"Family\n"}	tt0000682	f	short	1908-01-01
677	The Fatal Hour	{Crime,"Short\n"}	tt0000683	f	short	1908-01-01
678	Father Gets in the Game	{Comedy,"Short\n"}	tt0000684	f	short	1908-01-01
679	The Feud and the Turkey	{Drama,Romance,"Short\n"}	tt0000685	f	short	1908-01-01
680	Fiestas del carnaval de 1908 en Barcelona	{Documentary,"Short\n"}	tt0000686	f	short	1908-01-01
681	A Florida Feud: or, Love in the Everglades	{Drama,"Short\n"}	tt0000687	f	short	1909-01-01
682	The Flower Girl of Paris	{Drama,"Short\n"}	tt0000688	f	short	1908-01-01
683	For Love of Gold	{Crime,"Short\n"}	tt0000689	f	short	1908-01-01
684	For a Wife's Honor	{Drama,"Short\n"}	tt0000690	f	short	1908-01-01
685	The French Maid	{"Short\n"}	tt0000691	f	short	1908-01-01
686	El fusilamiento de Dorrego	{History,"Short\n"}	tt0000692	f	short	1908-01-01
687	Gerona monumental	{Documentary,"Short\n"}	tt0000693	f	short	1908-01-01
688	The Girl and the Outlaw	{Action,Short,"Western\n"}	tt0000694	f	short	1908-01-01
689	The Greaser's Gauntlet	{Action,"Short\n"}	tt0000695	f	short	1908-01-01
690	El guardia burlado	{"Short\n"}	tt0000696	f	short	1908-01-01
691	The Guerrilla	{Action,Short,"War\n"}	tt0000697	f	short	1908-01-01
692	The Heart of O Yama	{Drama,Romance,"Short\n"}	tt0000698	f	short	1908-01-01
693	The Helping Hand	{Drama,"Short\n"}	tt0000699	f	short	1908-01-01
694	Her First Adventure	{Drama,"Short\n"}	tt0000700	f	short	1908-01-01
695	His Day of Rest	{Comedy,"Short\n"}	tt0000701	f	short	1908-01-01
696	Hulda's Lovers	{Comedy,"Short\n"}	tt0000703	f	short	1908-01-01
697	The Humpty Dumpty Circus	{Animation,Comedy,"Short\n"}	tt0000704	f	short	1898-01-01
698	Inauguración de la exposición hispano-francesa	{Documentary,"Short\n"}	tt0000705	f	short	1908-01-01
699	Ingomar, the Barbarian	{Drama,Romance,"Short\n"}	tt0000706	f	short	1908-01-01
700	The Ingrate	{Action,"Short\n"}	tt0000707	f	short	1908-01-01
701	The Invisible Fluid	{Comedy,"Short\n"}	tt0000708	f	short	1908-01-01
702	Julius Caesar	{Drama,History,"Short\n"}	tt0000709	f	short	1908-01-01
703	The Kentuckian	{Short,"Western\n"}	tt0000711	f	short	1908-01-01
704	King of the Cannibal Islands	{Comedy,"Short\n"}	tt0000712	f	short	1908-01-01
705	The King's Messenger	{Drama,"Short\n"}	tt0000713	f	short	1908-01-01
706	Leah the Forsaken	{Drama,"Short\n"}	tt0000714	f	short	1908-01-01
707	The Life of an American Cowboy	{Short,"Western\n"}	tt0000715	f	short	1908-01-01
708	Lonesome Junction	{Comedy,Short,"Western\n"}	tt0000716	f	short	1908-01-01
709	Macbeth	{Drama,"Short\n"}	tt0000717	f	short	1908-01-01
710	Making Moving Pictures	{Documentary,"Short\n"}	tt0000718	f	short	1908-01-01
711	Mallorca, isla dorada	{Documentary,"Short\n"}	tt0000719	f	short	1908-01-01
712	The Man and the Woman	{Drama,"Short\n"}	tt0000720	f	short	1908-01-01
713	The Man in the Box	{Crime,Drama,"Short\n"}	tt0000721	f	short	1908-01-01
714	The Red Barn Mystery	{Drama,"Short\n"}	tt0000722	f	short	1908-01-01
715	María Rosa	{"Short\n"}	tt0000723	f	short	1908-01-01
716	The Merchant of Venice	{Drama,"Short\n"}	tt0000724	f	short	1908-01-01
717	Mixed Babies	{Comedy,"Short\n"}	tt0000725	f	short	1908-01-01
718	Monasterio de Poblet	{Documentary,"Short\n"}	tt0000726	f	short	1908-01-01
719	Monday Morning in a Coney Island Police Court	{Comedy,"Short\n"}	tt0000727	f	short	1908-01-01
720	Money Mad	{Crime,Drama,"Short\n"}	tt0000728	f	short	1908-01-01
721	Os Moços de Fretes Têm Sede	{Documentary,"Short\n"}	tt0000729	f	short	1908-01-01
722	Mr. Jones at the Ball	{Comedy,"Short\n"}	tt0000730	f	short	1908-01-01
723	Mrs. Jones Entertains	{Comedy,"Short\n"}	tt0000731	f	short	1909-01-01
724	The Music Master	{"Short\n"}	tt0000732	f	short	1908-01-01
725	Old Isaacs, the Pawnbroker	{Drama,"Short\n"}	tt0000733	f	short	1908-01-01
726	Othello	{Drama,Romance,"Short\n"}	tt0000734	f	short	1908-01-01
727	The Outlaw	{Short,"Western\n"}	tt0000736	f	short	1908-01-01
728	Over the Hill to the Poorhouse	{Drama,"Short\n"}	tt0000737	f	short	1908-01-01
729	The Paris Hat	{"Short\n"}	tt0000738	f	short	1908-01-01
730	El pastorcito de Torrente	{"Drama\n"}	tt0000739	f	movie	1908-01-01
731	The Pirate's Gold	{Action,"Short\n"}	tt0000740	f	short	1908-01-01
732	The Planter's Wife	{Action,Drama,"Short\n"}	tt0000741	f	short	1908-01-01
733	Poverty and Compassion	{Drama,"Short\n"}	tt0000742	f	short	1908-01-01
734	The Princess in the Vase	{Comedy,"Short\n"}	tt0000743	f	short	1908-01-01
735	Professional Jealousy	{"Short\n"}	tt0000744	f	short	1908-01-01
736	Raffles, an American Cracksman	{Drama,"Short\n"}	tt0000745	f	short	1908-01-01
737	The Reckoning	{Drama,"Short\n"}	tt0000746	f	short	1908-01-01
738	The Red Girl	{Action,"Short\n"}	tt0000747	f	short	1908-01-01
739	The Red Man and the Child	{Action,Short,"Western\n"}	tt0000748	f	short	1908-01-01
740	Rescued from an Eagle's Nest	{Action,"Short\n"}	tt0000749	f	short	1908-01-01
741	Richard III	{Drama,"Short\n"}	tt0000750	f	short	1908-01-01
742	The Roman	{Drama,"Short\n"}	tt0000751	f	short	1910-01-01
744	The Romance of an Egg	{Comedy,"Short\n"}	tt0000753	f	short	1908-01-01
745	Romeo and Juliet	{Drama,Romance,"Short\n"}	tt0000754	f	short	1908-01-01
746	The Dream of an Opium Fiend	{"Short\n"}	tt0000755	f	short	1908-01-01
747	The Sculptor's Nightmare	{Comedy,"Short\n"}	tt0000756	f	short	1908-01-01
748	She	{Fantasy,Sci-Fi,"Short\n"}	tt0000757	f	short	1908-01-01
749	Sherlock Holmes	{Mystery,"Short\n"}	tt0000758	f	short	1908-01-01
750	Sherlock Holmes II: Raffles Escaped from Prison	{Comedy,"Short\n"}	tt0000759	f	short	1909-01-01
751	Sherlock Holmes III: The Detective's Adventure in the Gas Cellar	{Drama,Mystery,"Short\n"}	tt0000760	f	short	1909-01-01
752	Simulacro de bomberos en la Plaza de Cataluña, de Barcelona	{Documentary,History,"Short\n"}	tt0000761	f	short	1908-01-01
753	A Smoked Husband	{Comedy,"Short\n"}	tt0000762	f	short	1908-01-01
754	The Snowman	{"Short\n"}	tt0000763	f	short	1908-01-01
755	The Song of the Shirt	{Drama,"Short\n"}	tt0000764	f	short	1908-01-01
756	The Stage Rustler	{Short,"Western\n"}	tt0000765	f	short	1908-01-01
757	The Stage-Struck Daughter	{"Short\n"}	tt0000766	f	short	1908-01-01
758	The Stolen Jewels	{Drama,"Short\n"}	tt0000767	f	short	1908-01-01
759	Svend Dyrings hus	{"Short\n"}	tt0000768	f	short	1908-01-01
760	Knight of Black Art	{"Short\n"}	tt0000769	f	short	1908-01-01
761	The Taming of the Shrew	{Comedy,Romance,"Short\n"}	tt0000770	f	short	1908-01-01
762	The Tavern Keeper's Daughter	{Action,"Short\n"}	tt0000771	f	short	1908-01-01
763	The Test of Friendship	{Drama,"Short\n"}	tt0000772	f	short	1908-01-01
764	Thompson's Night Out	{"Short\n"}	tt0000773	f	short	1908-01-01
765	To the Custody of the Father	{Drama,"Short\n"}	tt0000774	f	short	1908-01-01
766	Susceptible Youth	{Comedy,"Short\n"}	tt0000775	f	short	1908-01-01
767	The Last Days of Pompeii	{Drama,"Short\n"}	tt0000776	f	short	1908-01-01
768	An Unexpected Santa Claus	{Comedy,"Short\n"}	tt0000777	f	short	1908-01-01
769	The Valet's Wife	{Comedy,"Short\n"}	tt0000778	f	short	1908-01-01
770	The Vaquero's Vow	{Action,Romance,"Short\n"}	tt0000779	f	short	1908-01-01
771	Hercules the Athlete; or, Love Behind the Scenes	{"Short\n"}	tt0000780	f	short	1908-01-01
772	The Viking's Daughter: The Story of the Ancient Norsemen	{Adventure,Drama,"Romance\n"}	tt0000781	f	short	1908-01-01
773	A Visit to the Seaside at Brighton Beach, England	{Documentary,"Short\n"}	tt0000782	f	short	1910-01-01
774	When Knighthood Was in Flower	{"Short\n"}	tt0000783	f	short	1908-01-01
775	When Knights Were Bold	{"Short\n"}	tt0000784	f	short	1908-01-01
776	Where the Breakers Roar	{Drama,"Short\n"}	tt0000785	f	short	1908-01-01
777	Wiegenlied	{Drama,"Short\n"}	tt0000786	f	short	1908-01-01
778	A Woman's Way	{Action,"Short\n"}	tt0000787	f	short	1908-01-01
779	The Yellow Peril	{Comedy,"Short\n"}	tt0000788	f	short	1908-01-01
780	The Zulu's Heart	{Action,"Short\n"}	tt0000789	f	short	1908-01-01
781	The Battle in the Clouds	{Fantasy,Sci-Fi,"Short\n"}	tt0000790	f	short	1909-01-01
782	Amor heroico	{"Short\n"}	tt0000791	f	short	1909-01-01
783	And a Little Child Shall Lead Them	{Drama,"Short\n"}	tt0000792	f	short	1909-01-01
784	Andreas Hofer	{"Drama\n"}	tt0000793	f	movie	1909-01-01
785	The Apache Girl's Revenge	{Drama,"Short\n"}	tt0000794	f	short	1909-01-01
786	The Artist's Revenge	{Drama,"Short\n"}	tt0000795	f	short	1909-01-01
787	As It Is in Real Life	{"Short\n"}	tt0000796	f	short	1909-01-01
788	At the Altar	{Drama,"Short\n"}	tt0000797	f	short	1909-01-01
789	An Attempt to Smash a Bank	{Drama,"Short\n"}	tt0000798	f	short	1909-01-01
790	Aventuras de Pepín	{Comedy,"Short\n"}	tt0000799	f	short	1909-01-01
791	The Awakening	{Comedy,Drama,"Short\n"}	tt0000800	f	short	1909-01-01
792	A Baby's Shoe	{Drama,"Short\n"}	tt0000801	f	short	1909-01-01
793	The Bailiff and the Dressmakers	{Comedy,"Short\n"}	tt0000802	f	short	1909-01-01
794	The Child Benefactor	{Drama,"Short\n"}	tt0000803	f	short	1909-01-01
795	El barranco del lobo	{Documentary,"Short\n"}	tt0000804	f	short	1909-01-01
796	Baño imprevisto	{Comedy,"Short\n"}	tt0000805	f	short	1909-01-01
797	The Best Man Wins	{Short,"Western\n"}	tt0000806	f	short	1909-01-01
798	The Better Way	{Drama,"Short\n"}	tt0000807	f	short	1909-01-01
799	Betty's Choice	{Romance,"Short\n"}	tt0000808	f	short	1909-01-01
859	Fiestas de Santa Lucía - Belenes	{"\\\\N\n"}	tt0000868	f	movie	1909-01-01
800	Bill Sharkey's Last Game	{Short,"Western\n"}	tt0000809	f	short	1910-01-01
801	The Black Sheep	{Drama,"Short\n"}	tt0000810	f	short	1909-01-01
802	The Blind Man	{Drama,"Short\n"}	tt0000811	f	short	1909-01-01
803	El blocao Velarde	{Documentary,Short,"War\n"}	tt0000812	f	short	1909-01-01
804	Bluebeard	{Drama,"Short\n"}	tt0000813	f	short	1909-01-01
805	La bocana de Mar Chica	{"\\\\N\n"}	tt0000814	f	movie	1909-01-01
806	The Brahma Diamond	{"Short\n"}	tt0000815	f	short	1909-01-01
807	The Broken Locket	{Drama,"Short\n"}	tt0000816	f	short	1909-01-01
808	A Message to Napoleon	{Drama,"Short\n"}	tt0000817	f	short	1909-01-01
809	The Burglar and the Child	{Crime,Drama,"Short\n"}	tt0000818	f	short	1909-01-01
810	A Burglar's Mistake	{"Short\n"}	tt0000819	f	short	1909-01-01
811	Campaña del Riff	{Documentary,"Short\n"}	tt0000820	f	short	1909-01-01
812	The Cardinal's Conspiracy	{Drama,"Short\n"}	tt0000821	f	short	1909-01-01
813	Celos gitanos	{"Short\n"}	tt0000822	f	short	1909-01-01
814	A Change of Heart	{Drama,"Short\n"}	tt0000823	f	short	1909-01-01
815	A Child of the Forest	{Drama,"Short\n"}	tt0000824	f	short	1909-01-01
816	The Children's Friend	{Drama,"Short\n"}	tt0000825	f	short	1909-01-01
817	Choosing a Husband	{Comedy,"Short\n"}	tt0000826	f	short	1909-01-01
818	Comata, the Sioux	{Short,"Western\n"}	tt0000827	f	short	1909-01-01
819	Confidence	{Drama,"Short\n"}	tt0000828	f	short	1909-01-01
820	A Convict's Sacrifice	{Drama,"Short\n"}	tt0000829	f	short	1909-01-01
821	Corazón de madre	{Drama,"Short\n"}	tt0000830	f	short	1909-01-01
822	The Cord of Life	{Crime,Drama,"Short\n"}	tt0000831	f	short	1909-01-01
823	A Corner in Wheat	{Crime,Drama,"Short\n"}	tt0000832	f	short	1909-01-01
824	The Country Doctor	{Drama,"Short\n"}	tt0000833	f	short	1909-01-01
825	A Coward's Courage	{Drama,"Short\n"}	tt0000834	f	short	1909-01-01
826	The Cricket on the Hearth	{"Short\n"}	tt0000835	f	short	1909-01-01
827	Os Crimes de Diogo Alves	{"Short\n"}	tt0000836	f	short	1909-01-01
828	The Criminal Hypnotist	{Crime,"Short\n"}	tt0000837	f	short	1909-01-01
829	A Cultura do Cacau	{"\\\\N\n"}	tt0000838	f	movie	1909-01-01
830	The Curse of Money	{Drama,"Short\n"}	tt0000839	f	short	1909-01-01
831	The Curtain Pole	{Comedy,"Short\n"}	tt0000840	f	short	1909-01-01
832	The Day After	{Comedy,"Short\n"}	tt0000841	f	short	1909-01-01
833	De Garraf a Barcelona	{"\\\\N\n"}	tt0000842	f	movie	1909-01-01
834	The Death Disc: A Story of the Cromwellian Period	{Drama,"Short\n"}	tt0000843	f	short	1909-01-01
835	The Death of Ivan the Terrible	{Drama,History,"Short\n"}	tt0000844	f	short	1909-01-01
836	The Deception	{Drama,"Short\n"}	tt0000845	f	short	1909-01-01
837	Un día en Xochimilco	{"\\\\N\n"}	tt0000846	f	movie	1909-01-01
838	Don Juan heiratet	{"Short\n"}	tt0000847	f	short	1909-01-01
839	The Painting of a Miraculous Spider	{"Short\n"}	tt0000848	f	short	1908-01-01
840	Dos guapos frente a frente	{Comedy,"Short\n"}	tt0000849	f	short	1909-01-01
841	Los dos hermanos	{"\\\\N\n"}	tt0000850	f	movie	1909-01-01
842	The Drive for a Life	{Drama,"Short\n"}	tt0000851	f	short	1909-01-01
843	A Drunkard's Reformation	{Drama,"Short\n"}	tt0000852	f	short	1909-01-01
844	The Eavesdropper	{Drama,"Short\n"}	tt0000853	f	short	1909-01-01
845	Edgar Allan Poe	{Biography,Drama,"Short\n"}	tt0000854	f	short	1909-01-01
846	Eloping with Auntie	{"Short\n"}	tt0000855	f	short	1909-01-01
847	Entrevista de los Presidentes Díaz-Taft	{Documentary,"Short\n"}	tt0000856	f	short	1909-01-01
848	Eradicating Aunty	{Comedy,"Short\n"}	tt0000857	f	short	1909-01-01
849	The Expiation	{Drama,"Short\n"}	tt0000858	f	short	1909-01-01
850	Fabricación del corcho en Sant Feliu de Guixols	{"\\\\N\n"}	tt0000859	f	movie	1909-01-01
851	The Faded Lilies	{Drama,"Short\n"}	tt0000860	f	short	1909-01-01
852	A Fair Exchange	{Drama,"Short\n"}	tt0000861	f	short	1909-01-01
853	Faldgruben	{"\\\\N\n"}	tt0000862	f	movie	1909-01-01
854	Farmer Giles' Visit to London	{Comedy,"Short\n"}	tt0000863	f	short	1909-01-01
855	The Fascinating Mrs. Francis	{Comedy,"Short\n"}	tt0000864	f	short	1909-01-01
856	A Father's Mistake	{Crime,Drama,"Short\n"}	tt0000865	f	short	1909-01-01
857	Fellow Clerks	{Crime,Drama,"Short\n"}	tt0000866	f	short	1909-01-01
858	Fiesta de toros	{"\\\\N\n"}	tt0000867	f	movie	1909-01-01
860	Fiestas en La Garriga	{"\\\\N\n"}	tt0000869	f	movie	1909-01-01
861	A Fool's Revenge	{Drama,"Short\n"}	tt0000870	f	short	1909-01-01
862	Fools of Fate	{Drama,"Short\n"}	tt0000871	f	short	1909-01-01
863	The Foundling	{Drama,"Short\n"}	tt0000872	f	short	1909-01-01
864	Bakchisarayskiy fontan	{Drama,"Short\n"}	tt0000873	f	short	1909-01-01
865	The French Duel	{Comedy,"Short\n"}	tt0000874	f	short	1909-01-01
866	The Friend of the Family	{Drama,"Short\n"}	tt0000875	f	short	1909-01-01
867	Fuss and Feathers	{Comedy,"Short\n"}	tt0000876	f	short	1909-01-01
868	Getting Even	{Comedy,"Short\n"}	tt0000877	f	short	1909-01-01
869	The Gibson Goddess	{Comedy,"Short\n"}	tt0000878	f	short	1909-01-01
870	Gira política de Madero y Pino Suárez	{"\\\\N\n"}	tt0000879	f	movie	1909-01-01
871	The Girls and Daddy	{Drama,"Short\n"}	tt0000880	f	short	1909-01-01
872	Le glas du père Césaire	{"Short\n"}	tt0000881	f	short	1909-01-01
873	The Golden Louis	{Drama,"Short\n"}	tt0000882	f	short	1909-01-01
874	The Grey Lady	{Mystery,"Short\n"}	tt0000883	f	short	1909-01-01
875	The Red Domino	{Drama,"Short\n"}	tt0000884	f	short	1909-01-01
876	Guzmán el Bueno	{"Short\n"}	tt0000885	f	short	1909-01-01
877	Hamlet, Prince of Denmark	{"Drama\n"}	tt0000886	f	movie	1910-01-01
878	Hansel and Gretel	{Drama,"Short\n"}	tt0000887	f	short	1909-01-01
879	The Heart of a Clown	{Drama,"Short\n"}	tt0000888	f	short	1909-01-01
880	The Heart of a Cowboy	{Short,"Western\n"}	tt0000889	f	short	1909-01-01
881	The Heart of an Outlaw	{Short,"Western\n"}	tt0000890	f	short	1909-01-01
882	Cycle Rider and the Witch	{Comedy,Fantasy,"Short\n"}	tt0000891	f	short	1909-01-01
883	Her First Biscuits	{Comedy,"Short\n"}	tt0000892	f	short	1909-01-01
884	Her Indian Hero	{Short,"Western\n"}	tt0000893	f	short	1912-01-01
885	The Farmer's Grandson	{Drama,"Short\n"}	tt0000894	f	short	1909-01-01
886	The Hessian Renegades	{Drama,Short,"War\n"}	tt0000895	f	short	1909-01-01
887	The Hindoo Dagger	{Drama,Mystery,"Short\n"}	tt0000896	f	short	1909-01-01
888	His Duty	{Drama,"Short\n"}	tt0000897	f	short	1909-01-01
889	His Lost Love	{Drama,"Short\n"}	tt0000898	f	short	1909-01-01
890	His Reformation	{Short,"Western\n"}	tt0000899	f	short	1909-01-01
891	His Ward's Love	{"Short\n"}	tt0000900	f	short	1909-01-01
892	His Wife's Mother	{Comedy,"Short\n"}	tt0000901	f	short	1909-01-01
893	His Wife's Visitor	{Comedy,"Short\n"}	tt0000902	f	short	1909-01-01
894	The Honor of Thieves	{Crime,"Short\n"}	tt0000903	f	short	1909-01-01
895	The House of Cards	{Drama,Short,"Western\n"}	tt0000904	f	short	1909-01-01
896	I Did It	{"Short\n"}	tt0000905	f	short	1909-01-01
897	The Idiot of the Mountains	{Drama,"Short\n"}	tt0000906	f	short	1909-01-01
898	In Little Italy	{Drama,"Short\n"}	tt0000907	f	short	1909-01-01
899	In Old Kentucky	{Drama,Short,"War\n"}	tt0000908	f	short	1909-01-01
900	In a Hempen Bag	{Drama,"Short\n"}	tt0000909	f	short	1909-01-01
901	In the Watches of the Night	{Drama,"Short\n"}	tt0000910	f	short	1909-01-01
902	In the Window Recess	{Drama,"Short\n"}	tt0000911	f	short	1909-01-01
903	The Indian Runner's Romance	{Short,"Western\n"}	tt0000912	f	short	1909-01-01
904	The Indian Trailer	{Short,"Western\n"}	tt0000913	f	short	1909-01-01
905	Industria del corcho	{"Short\n"}	tt0000914	f	short	1909-01-01
906	Jailbird in Borrowed Feathers	{Comedy,"Short\n"}	tt0000915	f	short	1910-01-01
907	Je voudrais un enfant	{Comedy,"Short\n"}	tt0000916	f	short	1910-01-01
908	Jealousy and the Man	{Comedy,"Short\n"}	tt0000917	f	short	1909-01-01
909	Jessie, the Stolen Child	{Drama,"Short\n"}	tt0000918	f	short	1909-01-01
910	The Jilt	{Drama,"Short\n"}	tt0000919	f	short	1909-01-01
911	Jones and His New Neighbors	{Comedy,"Short\n"}	tt0000920	f	short	1909-01-01
912	Jones and the Lady Book Agent	{Comedy,"Short\n"}	tt0000921	f	short	1909-01-01
913	The Joneses Have Amateur Theatricals	{Comedy,"Short\n"}	tt0000922	f	short	1909-01-01
914	El joyero	{Drama,"Short\n"}	tt0000923	f	short	1909-01-01
915	A Bad Case	{Animation,"Short\n"}	tt0000924	f	short	1909-01-01
916	Judgment	{Short,"Western\n"}	tt0000925	f	short	1909-01-01
917	Justicia de Felipe II	{Drama,History,"Short\n"}	tt0000926	f	short	1909-01-01
918	Kinemacolor Puzzle	{"Short\n"}	tt0000927	f	short	1909-01-01
919	King Lear	{Drama,"Short\n"}	tt0000928	f	short	1909-01-01
920	Klebolin klebt alles	{Comedy,"Short\n"}	tt0000929	f	short	1909-01-01
921	Der kleine Detektiv	{"Short\n"}	tt0000930	f	short	1909-01-01
922	Dødsspringet	{"Short\n"}	tt0000931	f	short	1910-01-01
923	A Woman of the People	{Drama,"Short\n"}	tt0000932	f	short	1909-01-01
924	Lady Helen's Escapade	{Comedy,Drama,"Short\n"}	tt0000933	f	short	1909-01-01
925	Leather Stocking	{Adventure,"Short\n"}	tt0000934	f	short	1909-01-01
926	The Light That Came	{Drama,"Short\n"}	tt0000935	f	short	1909-01-01
927	Lines of White on a Sullen Sea	{Drama,"Short\n"}	tt0000936	f	short	1909-01-01
928	The Little Darling	{Comedy,"Short\n"}	tt0000938	f	short	1909-01-01
929	The Little Teacher	{Drama,"Short\n"}	tt0000939	f	short	1909-01-01
930	Lochinvar	{Drama,"Short\n"}	tt0000940	f	short	1909-01-01
931	Locura de amor	{"Drama\n"}	tt0000941	f	movie	1909-01-01
932	The Lonely Villa	{Crime,Drama,"Short\n"}	tt0000942	f	short	1909-01-01
933	Love Finds a Way	{Comedy,"Short\n"}	tt0000943	f	short	1909-01-01
934	The Luck of the Cards	{Drama,"Short\n"}	tt0000944	f	short	1909-01-01
935	Lucky Jim	{Drama,"Short\n"}	tt0000945	f	short	1909-01-01
936	The Lure of the Gown	{Comedy,"Short\n"}	tt0000946	f	short	1909-01-01
937	Lægens offer	{"\\\\N\n"}	tt0000947	f	movie	1909-01-01
938	La légende de l'arc-en-ciel	{"Short\n"}	tt0000948	f	short	1909-01-01
939	Det løbske gasrør	{"Short\n"}	tt0000949	f	short	1909-01-01
940	Macbeth	{Drama,"Short\n"}	tt0000950	f	short	1909-01-01
941	Madam Sans Gene; or, The Duchess of Danzig	{Drama,"Short\n"}	tt0000951	f	short	1909-01-01
942	Madame de Langeais	{Drama,"Short\n"}	tt0000952	f	short	1910-01-01
943	A Maid of the Mountains	{Drama,"Short\n"}	tt0000953	f	short	1909-01-01
944	Mamma	{"Short\n"}	tt0000954	f	short	1909-01-01
945	A Man with Three Wives	{Comedy,"Short\n"}	tt0000955	f	short	1909-01-01
946	The Maniac Cook	{Drama,"Short\n"}	tt0000956	f	short	1909-01-01
947	Mariage forcé	{Comedy,"Short\n"}	tt0000957	f	short	1914-01-01
948	The Medicine Bottle	{Drama,"Short\n"}	tt0000958	f	short	1909-01-01
949	Melilla y el Gurugu	{"\\\\N\n"}	tt0000959	f	movie	1909-01-01
950	The Mended Lute	{Short,"Western\n"}	tt0000960	f	short	1909-01-01
951	The Message	{Drama,"Short\n"}	tt0000961	f	short	1909-01-01
952	The Mexican Sweethearts	{"Short\n"}	tt0000962	f	short	1909-01-01
953	A Mexican's Gratitude	{Short,"Western\n"}	tt0000963	f	short	1909-01-01
954	A Midnight Adventure	{"Short\n"}	tt0000964	f	short	1909-01-01
955	Midnight Disturbance	{Comedy,"Short\n"}	tt0000965	f	short	1909-01-01
956	A Midsummer Night's Dream	{Drama,Fantasy,"Romance\n"}	tt0000966	f	short	1909-01-01
957	The Mills of the Gods	{"Short\n"}	tt0000967	f	short	1909-01-01
958	Mistaken Identity	{Comedy,"Short\n"}	tt0000968	f	short	1909-01-01
959	Les Misérables	{Drama,History,"Short\n"}	tt0000969	f	short	1909-01-01
960	The Life of Moliere	{Biography,Drama,"Short\n"}	tt0000970	f	short	1910-01-01
961	The Mill	{Drama,Romance,"Short\n"}	tt0000971	f	short	1909-01-01
962	The Mountaineer's Honor	{Drama,"Short\n"}	tt0000972	f	short	1909-01-01
963	Mr. Jones Has a Card Party	{Comedy,"Short\n"}	tt0000974	f	short	1909-01-01
964	Mr. Jones' Burglar	{Comedy,"Short\n"}	tt0000975	f	short	1909-01-01
965	Mrs. Jones' Lover; or, 'I Want My Hat'	{Comedy,"Short\n"}	tt0000976	f	short	1909-01-01
966	Mutterliebe	{"Short\n"}	tt0000977	f	short	1909-01-01
967	Napoleon og hans lille Trompetist	{"Short\n"}	tt0000978	f	short	1909-01-01
968	Napoleon, the Man of Destiny	{Drama,"Short\n"}	tt0000979	f	short	1908-01-01
969	A Narrow Escape from Lynching	{Drama,"Short\n"}	tt0000980	f	short	1909-01-01
970	The Necklace	{Drama,"Short\n"}	tt0000981	f	short	1909-01-01
971	The New Servant	{Comedy,"Short\n"}	tt0000982	f	short	1909-01-01
972	A New Trick	{"Short\n"}	tt0000983	f	short	1909-01-01
973	Niños en la alameda	{"\\\\N\n"}	tt0000984	f	movie	1909-01-01
974	The Note in the Shoe	{Drama,"Short\n"}	tt0000985	f	short	1909-01-01
975	Nursing a Viper	{Drama,"Short\n"}	tt0000986	f	short	1909-01-01
976	How Brother Cook was Taught a Lesson	{Comedy,"Short\n"}	tt0000987	f	short	1910-01-01
977	The Short-Sighted Governess	{Comedy,"Short\n"}	tt0000988	f	short	1909-01-01
978	Oh, Uncle!	{Comedy,"Short\n"}	tt0000989	f	short	1909-01-01
979	Oliver Twist	{Drama,"Short\n"}	tt0000990	f	short	1909-01-01
980	On the Little Big Horn or Custer's Last Stand	{Action,Drama,"History\n"}	tt0000991	f	short	1909-01-01
981	De onde Veje	{"\\\\N\n"}	tt0000992	f	movie	1909-01-01
982	One Busy Hour	{Comedy,"Short\n"}	tt0000993	f	short	1909-01-01
983	One Good Turn Deserves Another	{Drama,"Short\n"}	tt0000994	f	short	1909-01-01
984	One Touch of Nature	{Drama,"Short\n"}	tt0000995	f	short	1909-01-01
985	Only a Tramp	{Drama,"Short\n"}	tt0000996	f	short	1909-01-01
986	The Open Gate	{Drama,"Short\n"}	tt0000997	f	short	1909-01-01
987	Othello	{Drama,Romance,"Short\n"}	tt0000998	f	short	1909-01-01
988	Paul Wang's Destiny	{Drama,"Short\n"}	tt0000999	f	short	1909-01-01
989	The Peachbasket Hat	{Comedy,"Short\n"}	tt0001000	f	short	1909-01-01
990	Pippa Passes; or, the Song of Conscience	{Drama,"Short\n"}	tt0001001	f	short	1909-01-01
991	The Politician's Love Story	{Comedy,Romance,"Short\n"}	tt0001002	f	short	1909-01-01
992	Por un ratón	{Comedy,"Short\n"}	tt0001003	f	short	1909-01-01
993	Portrait of Mireille	{"Short\n"}	tt0001004	f	short	1909-01-01
994	Pranks	{Comedy,"Short\n"}	tt0001005	f	short	1909-01-01
995	Primera carrera internacional de automóviles 'Peña-Rhin'	{"Short\n"}	tt0001006	f	short	1909-01-01
996	La primera y segunda casetas	{"\\\\N\n"}	tt0001007	f	movie	1909-01-01
997	The Prince and the Pauper	{"Short\n"}	tt0001008	f	short	1909-01-01
998	Princess Nicotine; or, the Smoke Fairy	{Comedy,Fantasy,"Short\n"}	tt0001009	f	short	1909-01-01
999	Protección de un convoy de víveres en el puente de camellos	{"\\\\N\n"}	tt0001010	f	movie	1909-01-01
1000	The Prussian Spy	{Drama,"Short\n"}	tt0001011	f	short	1909-01-01
1001	The Ranchman's Rival	{Short,"Western\n"}	tt0001012	f	short	1909-01-01
1002	The Redman's View	{Short,"Western\n"}	tt0001013	f	short	1909-01-01
1003	The Renunciation	{Short,"Western\n"}	tt0001014	f	short	1909-01-01
1004	The Restoration	{Drama,"Short\n"}	tt0001015	f	short	1909-01-01
1005	Resurrection	{Drama,"Short\n"}	tt0001016	f	short	1909-01-01
1006	A Wedding During the French Revolution	{Drama,"Short\n"}	tt0001017	f	short	1910-01-01
1007	Richelieu; or: The Conspiracy	{Drama,"Short\n"}	tt0001018	f	short	1910-01-01
1008	The Road Agents	{Short,"Western\n"}	tt0001019	f	short	1909-01-01
1009	The Road to the Heart	{Comedy,"Short\n"}	tt0001020	f	short	1909-01-01
1010	Robbing the Widowed and Fatherless	{Drama,"Short\n"}	tt0001021	f	short	1909-01-01
1011	A Rose of the Tenderloin	{Drama,"Short\n"}	tt0001022	f	short	1909-01-01
1012	The Roue's Heart	{Drama,"Short\n"}	tt0001023	f	short	1909-01-01
1013	A Rude Hostess	{"Short\n"}	tt0001024	f	short	1909-01-01
1014	A Rural Elopement	{Comedy,Romance,"Short\n"}	tt0001025	f	short	1909-01-01
1015	Ruy Blas	{Drama,"Short\n"}	tt0001026	f	short	1909-01-01
1016	The Sacrifice	{Comedy,Romance,"Short\n"}	tt0001027	f	short	1909-01-01
1017	Salome Mad	{"Comedy\n"}	tt0001028	f	movie	1909-01-01
1018	The Salvation Army Lass	{Drama,"Short\n"}	tt0001029	f	short	1909-01-01
1019	Saul and David	{Drama,"Short\n"}	tt0001030	f	short	1909-01-01
1020	Schneider's Anti-Noise Crusade	{Comedy,"Short\n"}	tt0001031	f	short	1909-01-01
1021	The Sealed Room	{Drama,History,"Short\n"}	tt0001032	f	short	1909-01-01
1022	The Seventh Day	{Drama,"Short\n"}	tt0001033	f	short	1909-01-01
1023	Shanghaied	{Drama,"Short\n"}	tt0001034	f	short	1909-01-01
1024	She Would Be an Actress	{"Short\n"}	tt0001035	f	short	1909-01-01
1025	Sherlock Holmes IV	{Mystery,"Short\n"}	tt0001036	f	short	1909-01-01
1026	Sherlock Holmes V	{Drama,"Short\n"}	tt0001037	f	short	1909-01-01
1027	Sherlock Holmes VI	{"\\\\N\n"}	tt0001038	f	movie	1910-01-01
1028	A Sinner's Repentance	{Drama,"Short\n"}	tt0001039	f	short	1909-01-01
1029	A Sister's Love: A Tale of the Franco-Prussian War	{Drama,"Short\n"}	tt0001040	f	short	1909-01-01
1030	The Slave	{Drama,"Short\n"}	tt0001041	f	short	1909-01-01
1031	The Sleepwalker	{Crime,"Short\n"}	tt0001042	f	short	1909-01-01
1032	Smith's Knockabout Theatre	{"\\\\N\n"}	tt0001043	f	movie	1909-01-01
1033	The Son's Return	{Drama,"Short\n"}	tt0001044	f	short	1909-01-01
1034	Le songe d'une nuit d'été	{Comedy,"Short\n"}	tt0001045	f	short	1910-01-01
1035	A Sound Sleeper	{Comedy,"Short\n"}	tt0001046	f	short	1909-01-01
1036	The Spanish Girl	{Short,"Western\n"}	tt0001047	f	short	1909-01-01
1037	The Special License	{Drama,"Short\n"}	tt0001048	f	short	1909-01-01
1038	Gøngehøvdingen	{Drama,"War\n"}	tt0001049	f	movie	1909-01-01
1039	A Strange Meeting	{Drama,"Short\n"}	tt0001050	f	short	1909-01-01
1040	El sueño milagroso	{"\\\\N\n"}	tt0001051	f	movie	1909-01-01
1041	The Suicide Club	{Comedy,"Short\n"}	tt0001052	f	short	1909-01-01
1042	A Sweet Revenge	{Drama,"Short\n"}	tt0001053	f	short	1909-01-01
1043	Sweet and Twenty	{Romance,"Short\n"}	tt0001054	f	short	1909-01-01
1044	A Tale of the West	{Drama,Short,"Western\n"}	tt0001055	f	short	1909-01-01
1045	Teaching a Husband a Lesson	{Comedy,"Short\n"}	tt0001056	f	short	1909-01-01
1046	Ten Nights in a Barroom	{Drama,"Short\n"}	tt0001057	f	short	1909-01-01
1047	Tender Hearts	{Drama,"Short\n"}	tt0001058	f	short	1909-01-01
1048	O Terremoto de Benavente	{"Documentary\n"}	tt0001059	f	movie	1909-01-01
1049	The Test	{Drama,"Short\n"}	tt0001060	f	short	1909-01-01
1050	They Would Elope	{Comedy,"Short\n"}	tt0001061	f	short	1909-01-01
1051	Those Awful Hats	{Comedy,"Short\n"}	tt0001062	f	short	1909-01-01
1052	Those Boys!	{"Short\n"}	tt0001063	f	short	1909-01-01
1053	Through the Breakers	{Drama,"Short\n"}	tt0001064	f	short	1909-01-01
1054	Tis an Ill Wind That Blows No Good	{Drama,"Short\n"}	tt0001065	f	short	1909-01-01
1055	De to guldgravere	{"Short\n"}	tt0001066	f	short	1909-01-01
1056	To Save Her Soul	{Drama,"Short\n"}	tt0001067	f	short	1909-01-01
1057	Toma caseta Z	{Documentary,Short,"War\n"}	tt0001068	f	short	1909-01-01
1058	Toma del Gurugu	{"\\\\N\n"}	tt0001069	f	movie	1909-01-01
1059	Tragedia torera	{"Short\n"}	tt0001070	f	short	1909-01-01
1060	Tragic Love	{Drama,"Short\n"}	tt0001071	f	short	1909-01-01
1061	A Trap for Santa Claus	{Drama,"Short\n"}	tt0001072	f	short	1909-01-01
1062	The Treacherous Policeman	{Crime,"Short\n"}	tt0001073	f	short	1909-01-01
1063	The Trick That Failed	{Drama,"Short\n"}	tt0001074	f	short	1909-01-01
1064	A Troublesome Satchel	{Comedy,"Short\n"}	tt0001075	f	short	1909-01-01
1065	Trying to Get Arrested	{Comedy,"Short\n"}	tt0001076	f	short	1909-01-01
1066	Twin Brothers	{Comedy,"Short\n"}	tt0001077	f	short	1909-01-01
1067	Two Memories	{Drama,"Short\n"}	tt0001078	f	short	1909-01-01
1068	Two Women and a Man	{Drama,"Short\n"}	tt0001079	f	short	1909-01-01
1069	Two of the Boys	{"\\\\N\n"}	tt0001080	f	movie	1909-01-01
1070	La vida en el campamento	{"\\\\N\n"}	tt0001081	f	movie	1909-01-01
1071	Viernes de dolores	{"\\\\N\n"}	tt0001082	f	movie	1909-01-01
1072	The Violin Maker of Cremona	{Drama,"Short\n"}	tt0001083	f	short	1909-01-01
1073	The Voice of the Violin	{"Short\n"}	tt0001084	f	short	1909-01-01
1074	Wanted, a Child	{Drama,"Short\n"}	tt0001085	f	short	1909-01-01
1075	Was Justice Served?	{Drama,"Short\n"}	tt0001086	f	short	1909-01-01
1076	Washington Under the American Flag	{Drama,"Short\n"}	tt0001087	f	short	1909-01-01
1077	The Way of Man	{Drama,"Short\n"}	tt0001088	f	short	1909-01-01
1078	We Must Do Our Best	{Comedy,"Short\n"}	tt0001089	f	short	1909-01-01
1079	The Welcome Burglar	{Drama,"Short\n"}	tt0001090	f	short	1909-01-01
1080	What Drink Did	{Drama,"Short\n"}	tt0001091	f	short	1909-01-01
1081	What's Your Hurry?	{"Short\n"}	tt0001092	f	short	1909-01-01
1082	When Thieves Fall Out	{Crime,Drama,"Short\n"}	tt0001093	f	short	1909-01-01
1083	The Winning Coat	{Drama,"Short\n"}	tt0001094	f	short	1909-01-01
1084	With Her Card	{Drama,"Short\n"}	tt0001095	f	short	1909-01-01
1085	Within an Ace	{Drama,Short,"War\n"}	tt0001096	f	short	1909-01-01
1086	A Woman's Vanity	{Drama,"Short\n"}	tt0001097	f	short	1909-01-01
1087	The Wooden Leg	{Comedy,"Short\n"}	tt0001098	f	short	1909-01-01
1088	A Wreath in Time	{Comedy,"Short\n"}	tt0001099	f	short	1909-01-01
1089	The Wrong Coat	{Crime,Drama,"Short\n"}	tt0001100	f	short	1909-01-01
1090	Abraham Lincoln's Clemency	{"\\\\N\n"}	tt0001101	f	movie	1910-01-01
1091	Across the Plains	{Short,"Western\n"}	tt0001102	f	short	1910-01-01
1092	An Affair of Hearts	{Comedy,"Short\n"}	tt0001103	f	short	1910-01-01
1093	The Affair of an Egg	{Comedy,"Short\n"}	tt0001104	f	short	1910-01-01
1094	The Woman Always Pays	{Drama,"Short\n"}	tt0001105	f	short	1910-01-01
1095	Alice's Adventures in Wonderland	{Adventure,Comedy,"Drama\n"}	tt0001106	f	short	1910-01-01
1096	All on Account of the Milk	{Comedy,"Short\n"}	tt0001107	f	short	1910-01-01
1097	Almost	{Comedy,"Short\n"}	tt0001108	f	short	1910-01-01
1098	L'aluminite	{"\\\\N\n"}	tt0001109	f	movie	1910-01-01
1099	Amateur Night	{Comedy,"Short\n"}	tt0001110	f	short	1910-01-01
1100	Ambrosius	{Biography,"Short\n"}	tt0001111	f	short	1910-01-01
1101	Amleto	{"Drama\n"}	tt0001112	f	movie	1910-01-01
1102	Amor gitano	{"\\\\N\n"}	tt0001113	f	movie	1910-01-01
1103	The Angel of the Studio	{Drama,Romance,"Short\n"}	tt0001114	f	short	1912-01-01
1104	Ansigttyven I	{"Crime\n"}	tt0001115	f	movie	1910-01-01
1105	Ansigttyven II	{"\\\\N\n"}	tt0001116	f	movie	1910-01-01
1106	Cleopatra	{Drama,History,"Romance\n"}	tt0001117	f	short	1910-01-01
1107	An Arcadian Maid	{Drama,"Short\n"}	tt0001118	f	short	1910-01-01
1108	Arms and the Woman	{Drama,"Short\n"}	tt0001119	f	short	1910-01-01
1109	As It Is in Life	{Drama,"Short\n"}	tt0001120	f	short	1910-01-01
1110	As the Bells Rang Out!	{Drama,"Short\n"}	tt0001121	f	short	1910-01-01
1111	The Red Inn	{"\\\\N\n"}	tt0001122	f	movie	1910-01-01
1112	Away Out West	{Short,"Western\n"}	tt0001123	f	short	1910-01-01
1113	The Bad Man's Christmas Gift	{Short,"Western\n"}	tt0001124	f	short	1910-01-01
1114	The Bad Man's Last Deed	{Short,"Western\n"}	tt0001125	f	short	1910-01-01
1115	A Rough Night on the Bridge	{Comedy,"Short\n"}	tt0001126	f	short	1910-01-01
1116	Baixant de la font del Gat	{Comedy,"Short\n"}	tt0001127	f	short	1910-01-01
1117	The Bandit's Wife	{Short,"Western\n"}	tt0001128	f	short	1910-01-01
1118	The Banker's Daughters	{Drama,"Short\n"}	tt0001129	f	short	1910-01-01
1119	The Bearded Bandit	{Short,"Western\n"}	tt0001130	f	short	1910-01-01
1120	Behind the Scenes	{Drama,"Short\n"}	tt0001131	f	short	1910-01-01
1121	The Bewitched Boxing Gloves	{Comedy,"Short\n"}	tt0001132	f	short	1910-01-01
1122	The Blue Bird	{Drama,Fantasy,"Short\n"}	tt0001133	f	short	1910-01-01
1123	Briton and Boer	{Action,Short,"War\n"}	tt0001134	f	short	1909-01-01
1124	The Broken Doll	{Drama,"Short\n"}	tt0001135	f	short	1910-01-01
1125	A Broken Spell	{Drama,"Short\n"}	tt0001136	f	short	1910-01-01
1126	Broncho Billy's Redemption	{Short,"Western\n"}	tt0001137	f	short	1910-01-01
1127	The Brothers	{Drama,"Short\n"}	tt0001138	f	short	1910-01-01
1128	Buffalo Bill's Wild West and Pawnee Bill's Far East	{"Short\n"}	tt0001139	f	short	1910-01-01
1129	The Bully	{Drama,"Short\n"}	tt0001140	f	short	1910-01-01
1130	The Butterfly	{"\\\\N\n"}	tt0001141	f	movie	1910-01-01
1131	By Order of Napoleon	{"\\\\N\n"}	tt0001142	f	movie	1910-01-01
1132	The Call to Arms	{Drama,"Short\n"}	tt0001143	f	short	1910-01-01
1133	The Call	{Drama,"Short\n"}	tt0001144	f	short	1910-01-01
1134	Carceleras	{Drama,"Short\n"}	tt0001145	f	short	1910-01-01
1135	Carminella	{Drama,"Short\n"}	tt0001146	f	short	1910-01-01
1136	O Centenário da Guerra Peninsular	{"Documentary\n"}	tt0001147	f	movie	1910-01-01
1137	Chantecler Atraiçoado	{Comedy,"Short\n"}	tt0001148	f	short	1910-01-01
1138	The Child and the Fiddler	{Crime,Drama,"Short\n"}	tt0001149	f	short	1910-01-01
1139	A Child of the Ghetto	{Drama,"Short\n"}	tt0001150	f	short	1910-01-01
1140	A Child's Faith	{Drama,"Short\n"}	tt0001151	f	short	1910-01-01
1141	A Child's Impulse	{Drama,"Short\n"}	tt0001152	f	short	1910-01-01
1142	A Child's Stratagem	{Drama,"Short\n"}	tt0001153	f	short	1910-01-01
1143	Circle C Ranch's Wedding Present	{Short,"Western\n"}	tt0001154	f	short	1910-01-01
1144	The Clerk's Downfall	{Crime,Drama,"Short\n"}	tt0001155	f	short	1910-01-01
1145	The Cloister's Touch	{Drama,"Short\n"}	tt0001156	f	short	1910-01-01
1146	The Common Enemy	{Drama,"Short\n"}	tt0001157	f	short	1910-01-01
1147	Concurso de niños	{Documentary,"Short\n"}	tt0001158	f	short	1906-01-01
1148	The Connecticut Yankee	{"\\\\N\n"}	tt0001159	f	movie	1910-01-01
1149	Conscience	{Drama,"Short\n"}	tt0001160	f	short	1910-01-01
1150	The Converts	{Drama,"Short\n"}	tt0001161	f	short	1910-01-01
1151	Un corpus de sangre	{"Short\n"}	tt0001162	f	short	1910-01-01
1152	Corrida da Rampa	{"Documentary\n"}	tt0001163	f	movie	1910-01-01
1153	The Coster's Wedding	{Comedy,"Short\n"}	tt0001164	f	short	1910-01-01
1154	The Course of True Love	{Drama,"Short\n"}	tt0001165	f	short	1910-01-01
1155	The Courtship of Miles Standish	{Drama,Romance,"Short\n"}	tt0001166	f	short	1910-01-01
1156	The Cowboy and the Squaw	{Short,"Western\n"}	tt0001167	f	short	1910-01-01
1157	A Cowboy's Mother-in-Law	{Comedy,Short,"Western\n"}	tt0001168	f	short	1910-01-01
1158	The Cowboy's Sweetheart	{Short,"Western\n"}	tt0001169	f	short	1910-01-01
1159	A Cowboy's Vindication	{Short,"Western\n"}	tt0001170	f	short	1910-01-01
1160	The Cowpuncher's Ward	{Short,"Western\n"}	tt0001171	f	short	1910-01-01
1161	Cretinetti e le donne	{Comedy,"Short\n"}	tt0001172	f	short	1910-01-01
1162	The Crime of a Grandfather	{Drama,"Short\n"}	tt0001173	f	short	1911-01-01
1163	Cyclone Pete's Matrimony	{Comedy,"Short\n"}	tt0001174	f	short	1910-01-01
1164	Camille	{Drama,"Romance\n"}	tt0001175	f	movie	1912-01-01
1165	The Dancing Girl of Butte	{Drama,"Short\n"}	tt0001176	f	short	1910-01-01
1166	Davy Crockett	{Adventure,"Short\n"}	tt0001177	f	short	1910-01-01
1167	The Deputy's Love Affair	{Romance,Short,"Western\n"}	tt0001178	f	short	1912-01-01
1168	Desfile histórico del centenario	{"\\\\N\n"}	tt0001179	f	movie	1910-01-01
1169	The Desperado	{Short,"Western\n"}	tt0001180	f	short	1910-01-01
1170	El diablo está en Zaragoza	{Fantasy,"Short\n"}	tt0001181	f	short	1910-01-01
1171	A Dixie Mother	{Drama,"Short\n"}	tt0001182	f	short	1910-01-01
1172	Djævlesonaten	{"Short\n"}	tt0001183	f	short	1910-01-01
1173	Don Juan de Serrallonga	{Adventure,"Drama\n"}	tt0001184	f	movie	1910-01-01
1174	Dorian Grays Portræt	{Drama,"Short\n"}	tt0001185	f	short	1910-01-01
1175	Dorothy and the Scarecrow in Oz	{"Short\n"}	tt0001186	f	short	1910-01-01
1176	The Duke's Plan	{Drama,"Short\n"}	tt0001187	f	short	1910-01-01
1177	The Dumb Half Breed's Defense	{Short,"Western\n"}	tt0001188	f	short	1910-01-01
1178	Den døde Rotte	{Drama,"Short\n"}	tt0001189	f	short	1910-01-01
1179	Døden	{Drama,"Short\n"}	tt0001190	f	short	1910-01-01
1180	Effecting a Cure	{Comedy,"Short\n"}	tt0001191	f	short	1910-01-01
1181	The Electrical Vitalizer	{Comedy,"Short\n"}	tt0001192	f	short	1910-01-01
1182	Elektra	{Drama,"Short\n"}	tt0001193	f	short	1910-01-01
1183	Elskovsleg	{"Short\n"}	tt0001194	f	short	1910-01-01
1184	Elverhøj	{History,"Short\n"}	tt0001195	f	short	1910-01-01
1185	Elverhøj	{History,"Short\n"}	tt0001196	f	short	1910-01-01
1186	Les enfants d'Édouard	{Drama,"Short\n"}	tt0001197	f	short	1914-01-01
1187	The Engineer's Romance	{Drama,"Short\n"}	tt0001198	f	short	1910-01-01
1188	The Engineer's Daughter	{Drama,"Short\n"}	tt0001199	f	short	1911-01-01
1189	The Englishman and the Girl	{Comedy,"Short\n"}	tt0001200	f	short	1910-01-01
1190	La esclusa	{Drama,"Short\n"}	tt0001201	f	short	1910-01-01
1191	Examination Day at School	{Comedy,"Short\n"}	tt0001202	f	short	1910-01-01
1192	Excursión al Gombreny	{"\\\\N\n"}	tt0001203	f	movie	1910-01-01
1193	La expiación	{"Short\n"}	tt0001204	f	short	1910-01-01
1194	Fabricación del cemento Asland	{Documentary,"Short\n"}	tt0001205	f	short	1910-01-01
1195	The Face at the Window	{Drama,"Short\n"}	tt0001206	f	short	1910-01-01
1196	Faithful	{Drama,"Short\n"}	tt0001207	f	short	1910-01-01
1197	The Farmer's Daughter	{Comedy,"Short\n"}	tt0001208	f	short	1910-01-01
1198	Una farsa de colas	{Comedy,"Short\n"}	tt0001209	f	short	1910-01-01
1199	A Fatal Picnic	{Comedy,"Short\n"}	tt0001210	f	short	1910-01-01
1200	Faust	{Drama,"Short\n"}	tt0001211	f	short	1910-01-01
1201	La fecha de Pepín	{Comedy,"Short\n"}	tt0001212	f	short	1910-01-01
1202	The Fence on 'Bar Z' Ranch	{Short,"Western\n"}	tt0001213	f	short	1910-01-01
1203	The Vow; or, Jephthah's Daughter	{Drama,"Short\n"}	tt0001214	f	short	1910-01-01
1204	The End of Paganini	{Drama,"Short\n"}	tt0001215	f	short	1910-01-01
1205	The Final Settlement	{Drama,"Short\n"}	tt0001216	f	short	1910-01-01
1206	A Flash of Light	{Romance,"Short\n"}	tt0001217	f	short	1910-01-01
1207	A Fallen Spirit	{Animation,Fantasy,"Horror\n"}	tt0001218	f	short	1910-01-01
1208	Flores y perlas	{Drama,"Short\n"}	tt0001219	f	short	1910-01-01
1209	The Flower of the Ranch	{Short,"Western\n"}	tt0001220	f	short	1910-01-01
1210	For Her Sister's Sake	{Comedy,"Short\n"}	tt0001221	f	short	1910-01-01
1211	The Forest Ranger	{Short,"Western\n"}	tt0001222	f	short	1910-01-01
1212	Frankenstein	{Fantasy,Horror,"Sci-Fi\n"}	tt0001223	f	short	1910-01-01
1213	The Freezing Mixture	{Comedy,"Short\n"}	tt0001224	f	short	1910-01-01
1214	From Storm to Sunshine	{Drama,"Short\n"}	tt0001225	f	short	1910-01-01
1215	From Tyranny to Liberty	{Drama,"Short\n"}	tt0001226	f	short	1910-01-01
1216	The Fugitive	{Drama,Short,"War\n"}	tt0001227	f	short	1910-01-01
1217	A Gambler of the West	{Short,"Western\n"}	tt0001228	f	short	1910-01-01
1218	Et gensyn	{"Short\n"}	tt0001229	f	short	1910-01-01
1219	Gentleman Joe	{"\\\\N\n"}	tt0001230	f	movie	1910-01-01
1220	The Girl and the Fugitive	{Short,"Western\n"}	tt0001231	f	short	1910-01-01
1221	The Girl from Arizona	{Short,"Western\n"}	tt0001232	f	short	1910-01-01
1222	The Girl on Triple X	{Short,"Western\n"}	tt0001233	f	short	1910-01-01
1223	Gold Is Not All	{Drama,"Short\n"}	tt0001234	f	short	1910-01-01
1224	A Gold Necklace	{Comedy,"Short\n"}	tt0001235	f	short	1910-01-01
1225	The Gold Seekers	{Drama,"Short\n"}	tt0001236	f	short	1910-01-01
1226	The Golden Supper	{Romance,"Short\n"}	tt0001237	f	short	1910-01-01
1227	Great Fight at All-Sereno	{Comedy,"Short\n"}	tt0001238	f	short	1910-01-01
1228	Los guapos	{"Short\n"}	tt0001239	f	short	1910-01-01
1229	Hamlet	{"Drama\n"}	tt0001240	f	movie	1911-01-01
1230	Hamlet	{Drama,"Short\n"}	tt0001241	f	short	1910-01-01
1231	Hamlet	{Drama,"Short\n"}	tt0001242	f	short	1908-01-01
1232	Her Father's Pride	{Drama,"Short\n"}	tt0001243	f	short	1910-01-01
1233	Her Photograph	{Comedy,"Short\n"}	tt0001244	f	short	1910-01-01
1234	Her Terrible Ordeal	{Drama,"Short\n"}	tt0001245	f	short	1910-01-01
1235	La hija del guardacostas	{Drama,"Short\n"}	tt0001246	f	short	1910-01-01
1236	His Brother's Wife	{"\\\\N\n"}	tt0001247	f	movie	1910-01-01
1237	His Last Burglary	{Drama,"Short\n"}	tt0001248	f	short	1910-01-01
1238	His Last Dollar	{Comedy,"Short\n"}	tt0001249	f	short	1910-01-01
1239	His Mother's Necklace	{Crime,Drama,"Short\n"}	tt0001250	f	short	1910-01-01
1240	His New Lid	{Comedy,"Short\n"}	tt0001251	f	short	1910-01-01
1241	His Only Daughter	{Drama,"Short\n"}	tt0001252	f	short	1910-01-01
1242	His Sister-in-Law	{Drama,"Short\n"}	tt0001253	f	short	1910-01-01
1243	The Honor of His Family	{Drama,"Short\n"}	tt0001254	f	short	1910-01-01
1244	The Hoodoo	{Comedy,"Short\n"}	tt0001255	f	short	1910-01-01
1245	The House with Closed Shutters	{Drama,Short,"War\n"}	tt0001256	f	short	1910-01-01
1246	The House of the Seven Gables	{Drama,Short,"Thriller\n"}	tt0001257	f	short	1910-01-01
1247	The White Slave Trade	{"Drama\n"}	tt0001258	f	movie	1910-01-01
1248	The Iconoclast	{Drama,"Short\n"}	tt0001259	f	short	1910-01-01
1249	The Impalement	{Drama,"Short\n"}	tt0001260	f	short	1910-01-01
1250	Impersonating the Policeman Lodger	{Comedy,"Short\n"}	tt0001261	f	short	1910-01-01
1251	In Life's Cycle	{Drama,"Short\n"}	tt0001262	f	short	1910-01-01
1252	In Neighboring Kingdoms	{Comedy,"Short\n"}	tt0001263	f	short	1910-01-01
1253	In Old California	{Drama,History,"Short\n"}	tt0001264	f	short	1910-01-01
1254	In the Border States	{Drama,Short,"War\n"}	tt0001265	f	short	1910-01-01
1255	In the Hands of the Enemy	{Drama,Short,"War\n"}	tt0001266	f	short	1910-01-01
1256	In the Mission Shadows	{Drama,Short,"Western\n"}	tt0001267	f	short	1910-01-01
1257	In the Season of Buds	{Drama,"Short\n"}	tt0001268	f	short	1910-01-01
1258	An Indian Girl's Love	{Short,"Western\n"}	tt0001269	f	short	1910-01-01
1259	An Indian Wife's Devotion	{Drama,Short,"Western\n"}	tt0001270	f	short	1909-01-01
1260	Inundaciones en Lérida	{Documentary,"Short\n"}	tt0001271	f	short	1910-01-01
1261	Jake's Daughter	{Drama,"Short\n"}	tt0001272	f	short	1910-01-01
1262	The Jewel Case	{Crime,Drama,"Short\n"}	tt0001273	f	short	1910-01-01
1263	John Dough and the Cherub	{Fantasy,"Short\n"}	tt0001274	f	short	1910-01-01
1264	Juggling on the Brain	{Comedy,"Short\n"}	tt0001275	f	short	1910-01-01
1265	Justicias del rey Don Pedro	{Drama,"Short\n"}	tt0001276	f	short	1910-01-01
1266	Kapergasten	{"Drama\n"}	tt0001277	f	movie	1910-01-01
1267	A Knot in the Plot	{Short,"Western\n"}	tt0001278	f	short	1910-01-01
1268	Kærlighed og selvmord	{"Short\n"}	tt0001279	f	short	1911-01-01
1269	Copenhagen by Night	{"Short\n"}	tt0001280	f	short	1910-01-01
1270	The Lady and the Burglar	{Drama,"Short\n"}	tt0001281	f	short	1910-01-01
1271	The Land of Oz	{Fantasy,"Short\n"}	tt0001282	f	short	1910-01-01
1272	The Last Deal	{Drama,"Short\n"}	tt0001283	f	short	1910-01-01
1273	The Lesson	{Drama,"Short\n"}	tt0001284	f	short	1910-01-01
1274	The Life of Moses	{Biography,Drama,"Family\n"}	tt0001285	f	movie	1909-01-01
1275	Little Angels of Luck	{Drama,"Short\n"}	tt0001286	f	short	1910-01-01
1276	The Little Orphan	{Drama,"Short\n"}	tt0001287	f	short	1910-01-01
1277	The Little Prospector	{Short,"Western\n"}	tt0001288	f	short	1910-01-01
1278	Llegada del marqués de Polavieja a Veracruz	{Documentary,"Short\n"}	tt0001289	f	short	1910-01-01
1279	The Long Trail	{Short,"Western\n"}	tt0001290	f	short	1910-01-01
1280	Lord Blend's Love Story	{Drama,"Short\n"}	tt0001291	f	short	1910-01-01
1281	Love Among the Roses	{Romance,"Short\n"}	tt0001292	f	short	1910-01-01
1282	Love of Chrysanthemum	{Drama,"Short\n"}	tt0001293	f	short	1910-01-01
1283	Love's C. Q. D.	{Romance,Short,"Western\n"}	tt0001294	f	short	1910-01-01
1284	Lucha fratricida o Nobleza aragonesa	{Drama,"Short\n"}	tt0001295	f	short	1910-01-01
1285	La lucha por la divisa	{"Short\n"}	tt0001296	f	short	1910-01-01
1286	Luck of Roaring Camp	{Short,"Western\n"}	tt0001297	f	short	1910-01-01
1287	A Lucky Toothache	{Comedy,"Short\n"}	tt0001298	f	short	1910-01-01
1288	Macbeth	{Drama,"Short\n"}	tt0001299	f	short	1909-01-01
1289	A Mad Infatuation	{Drama,"Short\n"}	tt0001300	f	short	1910-01-01
1290	Madre mía	{"Short\n"}	tt0001301	f	short	1910-01-01
1291	The Maid of Niagara	{Drama,"Short\n"}	tt0001302	f	short	1910-01-01
1292	The Man	{Drama,"Short\n"}	tt0001303	f	short	1910-01-01
1293	Mannequins	{Drama,"Short\n"}	tt0001304	f	short	1913-01-01
1294	La manta del caballo	{"Short\n"}	tt0001305	f	short	1910-01-01
1295	The Fairy Bookseller	{Fantasy,"Short\n"}	tt0001306	f	short	1910-01-01
1296	The Marked Time-Table	{Drama,"Short\n"}	tt0001307	f	short	1910-01-01
1297	The Marked Trail	{Short,"Western\n"}	tt0001308	f	short	1910-01-01
1298	The Masher	{Comedy,"Short\n"}	tt0001309	f	short	1910-01-01
1299	May and December	{Comedy,Romance,"Short\n"}	tt0001310	f	short	1910-01-01
1300	Mazeppa, or the Wild Horse of Tartary	{Drama,"Short\n"}	tt0001311	f	short	1910-01-01
1301	Mellem pligt og kærlighed	{"Short\n"}	tt0001312	f	short	1910-01-01
1302	Et menneskeliv	{"Short\n"}	tt0001313	f	short	1910-01-01
1303	Il mercante di Venezia	{Drama,"Short\n"}	tt0001314	f	short	1911-01-01
1304	The Message of the Violin	{Drama,"Short\n"}	tt0001315	f	short	1910-01-01
1305	Messaline	{"Short\n"}	tt0001316	f	short	1910-01-01
1306	The Mexican's Faith	{Short,"Western\n"}	tt0001317	f	short	1910-01-01
1307	Michael Strogoff	{Drama,"Short\n"}	tt0001318	f	short	1910-01-01
1308	A Midnight Cupid	{Comedy,"Short\n"}	tt0001319	f	short	1910-01-01
1309	Os Milagres de Nossa Senhora da Penha	{Musical,"Short\n"}	tt0001320	f	short	1910-01-01
1310	The Cowboy Millionaire	{Short,"Western\n"}	tt0001321	f	short	1909-01-01
1311	The Millionaire and the Ranch Girl	{Short,"Western\n"}	tt0001322	f	short	1910-01-01
1312	The Miser's Child	{Drama,"Short\n"}	tt0001323	f	short	1910-01-01
1313	The Missing Bridegroom	{Drama,"Short\n"}	tt0001324	f	short	1910-01-01
1314	The Mistaken Bandit	{Short,"Western\n"}	tt0001325	f	short	1910-01-01
1315	The Modern Prodigal	{Drama,"Short\n"}	tt0001326	f	short	1910-01-01
1316	A Mohawk's Way	{Drama,"Short\n"}	tt0001327	f	short	1910-01-01
1317	Montblanc la serra	{"Short\n"}	tt0001328	f	short	1910-01-01
1318	El moscardón	{"Short\n"}	tt0001329	f	short	1910-01-01
1319	A Mother's Devotion; or, the Firing of the Patchwork Quilt	{"Short\n"}	tt0001330	f	short	1912-01-01
1320	A Moving Picture Rehearsal	{Comedy,"Short\n"}	tt0001331	f	short	1910-01-01
1321	Muggsy Becomes a Hero	{Comedy,"Short\n"}	tt0001332	f	short	1910-01-01
1322	Muggsy's First Sweetheart	{Comedy,"Short\n"}	tt0001333	f	short	1910-01-01
1323	Never Again	{Comedy,"Short\n"}	tt0001334	f	short	1910-01-01
1324	The New Magdalen	{"Short\n"}	tt0001335	f	short	1910-01-01
1325	The New Stenographer	{Comedy,"Short\n"}	tt0001336	f	short	1911-01-01
1326	The Newlyweds	{Comedy,"Short\n"}	tt0001337	f	short	1910-01-01
1327	A Night in May	{"Drama\n"}	tt0001338	f	movie	1910-01-01
1328	Not So Bad as It Seemed	{Comedy,"Short\n"}	tt0001339	f	short	1910-01-01
1329	The Oath and the Man	{Drama,"Short\n"}	tt0001340	f	short	1910-01-01
1330	Jarní sen starého mládence	{"Comedy\n"}	tt0001341	f	movie	1913-01-01
1331	The Old Hat	{Comedy,"Short\n"}	tt0001342	f	short	1910-01-01
1332	The Old Soldier	{Crime,Drama,"Short\n"}	tt0001343	f	short	1910-01-01
1333	An Old Story with a New Ending	{Comedy,"Short\n"}	tt0001344	f	short	1910-01-01
1334	On the Reef	{Drama,"Short\n"}	tt0001345	f	short	1910-01-01
1335	One Night, and Then --	{Drama,"Short\n"}	tt0001346	f	short	1910-01-01
1336	Ononko's Vow	{Drama,"Short\n"}	tt0001347	f	short	1910-01-01
1337	Orientalsk dans	{"\\\\N\n"}	tt0001348	f	movie	1910-01-01
1338	Our Darling	{"Short\n"}	tt0001349	f	short	1910-01-01
1339	The Outlaw's Sacrifice	{Short,"Western\n"}	tt0001350	f	short	1910-01-01
1340	Over Silent Paths	{Drama,Short,"Western\n"}	tt0001351	f	short	1910-01-01
1341	The Padre's Secret	{Drama,Short,"Western\n"}	tt0001352	f	short	1910-01-01
1342	Paganini	{"\\\\N\n"}	tt0001353	f	movie	1911-01-01
1343	Pals of the Range	{Short,"Western\n"}	tt0001354	f	short	1910-01-01
1344	Para domar la suegra	{Comedy,"Short\n"}	tt0001355	f	short	1910-01-01
1345	Parada militar en el paseo	{Documentary,"Short\n"}	tt0001356	f	short	1910-01-01
1346	Patricia of the Plains	{Short,"Western\n"}	tt0001357	f	short	1910-01-01
1347	Peder Tordenskjold	{"\\\\N\n"}	tt0001358	f	movie	1910-01-01
1348	A Pesca do Bacalhau	{"Documentary\n"}	tt0001359	f	movie	1910-01-01
1349	The Phoenix	{Drama,"Short\n"}	tt0001360	f	short	1910-01-01
1350	The Picture Thieves	{Crime,Drama,"Short\n"}	tt0001361	f	short	1910-01-01
1351	A Plain Song	{Drama,"Short\n"}	tt0001362	f	short	1910-01-01
1352	The Plans of the Fortress	{Drama,Short,"War\n"}	tt0001363	f	short	1910-01-01
1353	El pobre Valbuena	{"\\\\N\n"}	tt0001364	f	movie	1910-01-01
1354	The Pony Express Rider	{Short,"Western\n"}	tt0001365	f	short	1910-01-01
1355	Un portero modelo	{"\\\\N\n"}	tt0001366	f	movie	1910-01-01
1356	Pride of the Range	{Short,"Western\n"}	tt0001367	f	short	1910-01-01
1357	The Princess and the Peasant	{Drama,"Short\n"}	tt0001368	f	short	1910-01-01
1358	The Purgation	{Drama,"Short\n"}	tt0001369	f	short	1910-01-01
1359	Rainha Depois de Morta Inês de Castro	{Drama,"History\n"}	tt0001370	f	movie	1910-01-01
1360	Ramona	{Drama,Romance,"Short\n"}	tt0001371	f	short	1910-01-01
1361	The Ranch Girl's Legacy	{Short,"Western\n"}	tt0001372	f	short	1910-01-01
1362	Ranch Life in the Great Southwest	{Documentary,Short,"Western\n"}	tt0001373	f	short	1910-01-01
1363	The Ranchman's Feud	{Short,"Western\n"}	tt0001374	f	short	1910-01-01
1364	The Range Riders	{Short,Thriller,"Western\n"}	tt0001375	f	short	1910-01-01
1365	The Ranger's Bride	{Comedy,Short,"Western\n"}	tt0001376	f	short	1910-01-01
1366	Re Lear	{Drama,"Short\n"}	tt0001377	f	short	1910-01-01
1367	Re Lear	{Drama,"Short\n"}	tt0001378	f	short	1910-01-01
1368	A Record Hustle Through Foggy London	{"\\\\N\n"}	tt0001379	f	movie	1910-01-01
1369	Regina von Emmeritz och konung Gustaf II Adolf	{Drama,"Short\n"}	tt0001380	f	short	1910-01-01
1370	A Recruit from 64	{Drama,Short,"War\n"}	tt0001381	f	short	1910-01-01
1371	Revolução de 5 de Outubro	{"Documentary\n"}	tt0001382	f	movie	1910-01-01
1372	Ribera del Llobregat	{Documentary,"Short\n"}	tt0001383	f	short	1910-01-01
1373	A Rich Revenge	{Comedy,"Short\n"}	tt0001384	f	short	1910-01-01
1374	The Rocky Road	{Drama,"Short\n"}	tt0001385	f	short	1910-01-01
1375	Le roi des parfums	{"\\\\N\n"}	tt0001386	f	movie	1910-01-01
1376	A Romance of the Western Hills	{Romance,Short,"Western\n"}	tt0001387	f	short	1910-01-01
1377	Rose o' Salem Town	{Drama,"Short\n"}	tt0001388	f	short	1910-01-01
1378	A Sailor's Sacrifice	{Drama,"Short\n"}	tt0001389	f	short	1910-01-01
1379	A Salutary Lesson	{Drama,"Short\n"}	tt0001390	f	short	1910-01-01
1380	The Seal of the Church	{Drama,Short,"Western\n"}	tt0001391	f	short	1910-01-01
1381	Segunda carrera automovilista 'Peña-Rhin' (Mataró-Argentona)	{"Short\n"}	tt0001392	f	short	1910-01-01
1382	Serious Sixteen	{Comedy,"Short\n"}	tt0001393	f	short	1910-01-01
1383	The Sheriff's Sacrifice	{Short,"Western\n"}	tt0001394	f	short	1910-01-01
1384	The Silent Message	{Short,"Western\n"}	tt0001395	f	short	1910-01-01
1385	Simple Charity	{Drama,"Short\n"}	tt0001396	f	short	1910-01-01
1386	Sisters	{Drama,"Short\n"}	tt0001397	f	short	1910-01-01
1387	The Son of the Executioner	{Drama,"Short\n"}	tt0001398	f	short	1911-01-01
1388	The Smoker	{Comedy,"Short\n"}	tt0001399	f	short	1910-01-01
1389	The Song of the Wildwood Flute	{Drama,"Short\n"}	tt0001400	f	short	1910-01-01
1390	The Sorrows of the Unfaithful	{Drama,"Short\n"}	tt0001401	f	short	1910-01-01
1391	The Stricken Home	{Drama,"Short\n"}	tt0001402	f	short	1910-01-01
1392	The Suffragettes and the Hobble Skirt	{Comedy,"Short\n"}	tt0001403	f	short	1910-01-01
1393	A Summer Flirtation	{Comedy,Romance,"Short\n"}	tt0001404	f	short	1910-01-01
1394	A Summer Idyll	{Romance,"Short\n"}	tt0001405	f	short	1910-01-01
1395	A Summer Tragedy	{Comedy,"Short\n"}	tt0001406	f	short	1910-01-01
1396	Sunshine Sue	{Drama,"Short\n"}	tt0001407	f	short	1910-01-01
1397	Take Me Out to the Ball Game	{Comedy,"Short\n"}	tt0001408	f	short	1910-01-01
1398	Taming Wild Animals	{Action,Adventure,"Drama\n"}	tt0001409	f	short	1910-01-01
1399	Taming a Husband	{Comedy,"Short\n"}	tt0001410	f	short	1910-01-01
1400	Teatro de la naturaleza en Sabadell	{"Short\n"}	tt0001411	f	short	1910-01-01
1401	The Tenderfoot Messenger	{Short,"Western\n"}	tt0001412	f	short	1910-01-01
1402	The Tenderfoot's Triumph	{Short,"Western\n"}	tt0001413	f	short	1910-01-01
1403	That Chink at Golden Gulch	{Short,"Western\n"}	tt0001414	f	short	1910-01-01
1404	Thou Shalt Not	{Drama,"Short\n"}	tt0001415	f	short	1910-01-01
1405	The Thread of Destiny	{Romance,"Short\n"}	tt0001416	f	short	1910-01-01
1406	Through Fire to Fortune	{Adventure,Drama,"Short\n"}	tt0001417	f	short	1911-01-01
1407	Tommy Gets His Sister Married	{Comedy,"Short\n"}	tt0001418	f	short	1910-01-01
1408	The Tout's Remembrance	{Drama,"Short\n"}	tt0001419	f	short	1910-01-01
1409	A Tragedy of the Olden Times	{Crime,Drama,"Short\n"}	tt0001420	f	short	1911-01-01
1410	Le tragique amour de Mona Lisa	{Drama,"Short\n"}	tt0001421	f	short	1912-01-01
1411	Trail to the West	{"\\\\N\n"}	tt0001422	f	movie	1910-01-01
1540	Conscience	{Drama,"Short\n"}	tt0001552	f	short	1911-01-01
1412	A Woman's Treachery	{Crime,Drama,"Short\n"}	tt0001423	f	short	1910-01-01
1413	Trimming of Paradise Gulch	{Short,"Western\n"}	tt0001424	f	short	1910-01-01
1414	True to His Duty	{Drama,"Short\n"}	tt0001425	f	short	1910-01-01
1415	The Truth Will Out	{Crime,Drama,"Short\n"}	tt0001426	f	short	1910-01-01
1416	The Twisted Trail	{Drama,"Short\n"}	tt0001427	f	short	1910-01-01
1417	The Two Brothers	{Short,"Western\n"}	tt0001428	f	short	1910-01-01
1418	The Two Fathers	{Drama,Family,"Short\n"}	tt0001429	f	short	1911-01-01
1419	Two Little Waifs	{Drama,"Short\n"}	tt0001430	f	short	1910-01-01
1420	The Unchanging Sea	{Drama,"Short\n"}	tt0001431	f	short	1910-01-01
1421	Uncle Tom's Cabin	{Drama,"Short\n"}	tt0001432	f	short	1910-01-01
1422	Under Western Skies	{Short,"Western\n"}	tt0001434	f	short	1910-01-01
1423	Unexpected Help	{Drama,"Short\n"}	tt0001435	f	short	1910-01-01
1424	The Unknown Claim	{Short,"Western\n"}	tt0001436	f	short	1910-01-01
1425	Up San Juan Hill	{Action,Drama,"Short\n"}	tt0001437	f	short	1909-01-01
1426	Up a Tree	{Comedy,"Short\n"}	tt0001438	f	short	1910-01-01
1427	The Usurer	{Drama,"Short\n"}	tt0001439	f	short	1910-01-01
1428	Valdemar Sejr	{Drama,"History\n"}	tt0001440	f	movie	1910-01-01
1429	The Vampire	{Drama,"Short\n"}	tt0001441	f	short	1910-01-01
1430	A Vein of Gold	{Short,"Western\n"}	tt0001442	f	short	1910-01-01
1431	A Victim of Jealousy	{Drama,"Short\n"}	tt0001443	f	short	1910-01-01
1432	Värmlänningarne	{"Short\n"}	tt0001444	f	short	1910-01-01
1433	Waiter No. 5	{Drama,"Short\n"}	tt0001445	f	short	1910-01-01
1434	The Way of the World	{Drama,"Short\n"}	tt0001446	f	short	1910-01-01
1435	The Wedding That Didn't Come Off	{Comedy,"Short\n"}	tt0001447	f	short	1910-01-01
1436	Western Chivalry	{Short,"Western\n"}	tt0001448	f	short	1910-01-01
1437	A Western Maid	{Short,"Western\n"}	tt0001449	f	short	1910-01-01
1438	A Western Woman's Way	{Short,"Western\n"}	tt0001450	f	short	1910-01-01
1439	A Westerner's Way	{Short,"Western\n"}	tt0001451	f	short	1910-01-01
1440	What the Daisy Said	{Romance,"Short\n"}	tt0001452	f	short	1910-01-01
1441	When We Called the Plumber In	{Comedy,"Short\n"}	tt0001453	f	short	1910-01-01
1442	When We Were in Our Teens	{Comedy,"Short\n"}	tt0001454	f	short	1910-01-01
1443	When the World Sleeps	{Drama,"Short\n"}	tt0001455	f	short	1910-01-01
1444	White Roses	{Comedy,Romance,"Short\n"}	tt0001456	f	short	1910-01-01
1445	Who Is She?	{Drama,"Short\n"}	tt0001457	f	short	1910-01-01
1446	Wilful Peggy	{Comedy,Romance,"Short\n"}	tt0001458	f	short	1910-01-01
1447	Winning Back His Love	{Drama,Romance,"Short\n"}	tt0001459	f	short	1910-01-01
1448	The Woman from Mellon's	{Drama,"Short\n"}	tt0001460	f	short	1910-01-01
1449	The Woman Hater	{Romance,"Short\n"}	tt0001461	f	short	1910-01-01
1450	A Woman's Folly	{Drama,"Short\n"}	tt0001462	f	short	1910-01-01
1451	The Wonderful Wizard of Oz	{Adventure,Fantasy,"Short\n"}	tt0001463	f	short	1910-01-01
1452	A Worker's Wife	{Drama,"Short\n"}	tt0001464	f	short	1910-01-01
1453	As Últimas Inundações do Tejo em Santarém	{"\\\\N\n"}	tt0001465	f	movie	1910-01-01
1454	'Tween Two Loves	{Drama,Romance,"Short\n"}	tt0001466	f	short	1911-01-01
1455	Across the Plains	{Short,"Western\n"}	tt0001467	f	short	1911-01-01
1456	The Adopted Child	{Drama,"Short\n"}	tt0001468	f	short	1911-01-01
1457	The Adventures of Billy	{Drama,"Short\n"}	tt0001469	f	short	1911-01-01
1458	The Adventures of a Baby	{Comedy,"Short\n"}	tt0001470	f	short	1911-01-01
1459	En Opfinders Skæbne	{Drama,"Short\n"}	tt0001471	f	short	1912-01-01
1460	After the Ball	{Comedy,"Short\n"}	tt0001472	f	short	1910-01-01
1461	The Aggressor	{Drama,"Short\n"}	tt0001473	f	short	1911-01-01
1462	Aida	{Music,"Short\n"}	tt0001474	f	short	1911-01-01
1463	Amor fatal	{Drama,"Romance\n"}	tt0001475	f	movie	1911-01-01
1464	Amor que mata	{"Short\n"}	tt0001476	f	short	1911-01-01
1465	The Amorous Doctor	{Comedy,"Short\n"}	tt0001477	f	short	1911-01-01
1466	The Angel of Paradise Ranch	{Short,"Western\n"}	tt0001478	f	short	1911-01-01
1467	The Angel of the Slums	{Drama,"Short\n"}	tt0001479	f	short	1911-01-01
1468	Arizona Bill	{Short,"Western\n"}	tt0001480	f	short	1911-01-01
1469	Artful Kate	{Drama,"Short\n"}	tt0001481	f	short	1911-01-01
1470	As in a Looking Glass	{Drama,"Short\n"}	tt0001482	f	short	1911-01-01
1471	At a Quarter of Two	{Drama,"Short\n"}	tt0001483	f	short	1911-01-01
1472	At the Break of Dawn	{Short,"Western\n"}	tt0001484	f	short	1911-01-01
1473	At the Duke's Command	{Drama,Romance,"Short\n"}	tt0001485	f	short	1911-01-01
1474	At the Threshold of Life	{Drama,"Short\n"}	tt0001486	f	short	1911-01-01
1475	The Christian Martyrs	{Drama,"Short\n"}	tt0001487	f	short	1911-01-01
1541	A Conspiracy Against the King	{Drama,"Short\n"}	tt0001553	f	short	1911-01-01
1476	The Hallucinations of Baron Munchausen	{Fantasy,"Short\n"}	tt0001488	f	short	1911-01-01
1477	The Awakening of John Bond	{Drama,"Short\n"}	tt0001489	f	short	1911-01-01
1478	Back to the Primitive	{Short,"Western\n"}	tt0001490	f	short	1911-01-01
1479	Back to the Soil	{Drama,"Short\n"}	tt0001491	f	short	1911-01-01
1480	The Backwoodsman's Suspicion	{Short,"Western\n"}	tt0001492	f	short	1911-01-01
1481	The Bad Man's Downfall	{Short,"Western\n"}	tt0001493	f	short	1911-01-01
1482	The Bad Man's First Prayer	{Short,"Western\n"}	tt0001494	f	short	1911-01-01
1483	A Balkan Episode	{"\\\\N\n"}	tt0001495	f	movie	1911-01-01
1484	The Baron	{Comedy,"Short\n"}	tt0001496	f	short	1911-01-01
1485	The Battle of Bunker Hill	{Short,"War\n"}	tt0001497	f	short	1911-01-01
1486	The Battle of Trafalgar	{"War\n"}	tt0001498	f	movie	1911-01-01
1487	The Battle	{Action,Drama,"Short\n"}	tt0001499	f	short	1911-01-01
1488	Bedraget i døden	{Drama,"Short\n"}	tt0001500	f	short	1911-01-01
1489	Behind the Stockade	{Drama,"Short\n"}	tt0001501	f	short	1911-01-01
1490	The Best Man Wins	{Comedy,Romance,"Short\n"}	tt0001502	f	short	1911-01-01
1491	The Better Way	{Drama,"Short\n"}	tt0001503	f	short	1911-01-01
1492	Betty Becomes a Maid	{Comedy,"Short\n"}	tt0001504	f	short	1911-01-01
1493	Bill Bumper's Bargain	{Comedy,"Short\n"}	tt0001505	f	short	1911-01-01
1494	The Black Arrow	{Drama,"Short\n"}	tt0001506	f	short	1911-01-01
1495	The Blackmailer	{"Short\n"}	tt0001507	f	short	1911-01-01
1496	The Blind Princess and the Poet	{Romance,"Short\n"}	tt0001508	f	short	1911-01-01
1497	Die Blinde	{"Short\n"}	tt0001509	f	short	1911-01-01
1498	Bobby, the Coward	{Drama,"Short\n"}	tt0001510	f	short	1911-01-01
1499	Bondefangeri i Vaterland	{Drama,"Short\n"}	tt0001511	f	short	1911-01-01
1500	The Border Ranger	{Short,"Western\n"}	tt0001512	f	short	1911-01-01
1501	A Boy of the Revolution	{Drama,"Short\n"}	tt0001513	f	short	1911-01-01
1502	Boys Will Be Boys	{Comedy,"Short\n"}	tt0001514	f	short	1911-01-01
1503	The Brand	{"\\\\N\n"}	tt0001515	f	movie	1911-01-01
1504	Branding a Bad Man	{Comedy,Short,"Western\n"}	tt0001516	f	short	1911-01-01
1505	The Broken Cross	{Romance,"Short\n"}	tt0001517	f	short	1911-01-01
1506	Broncho Billy's Adventure	{Short,"Western\n"}	tt0001518	f	short	1911-01-01
1507	Broncho Billy's Christmas Dinner	{Short,"Western\n"}	tt0001519	f	short	1911-01-01
1508	Brown's German Liver Cure	{"Short\n"}	tt0001520	f	short	1911-01-01
1509	En bryllupsaften	{"\\\\N\n"}	tt0001521	f	movie	1911-01-01
1510	Buffalo Bill on the Brain	{Comedy,"Short\n"}	tt0001522	f	short	1911-01-01
1511	The Bunco Game at Lizardhead	{Comedy,Short,"Western\n"}	tt0001523	f	short	1911-01-01
1512	The Burglar as Father Christmas	{Drama,"Short\n"}	tt0001524	f	short	1911-01-01
1513	Caesar's Prisoners	{"Short\n"}	tt0001525	f	short	1911-01-01
1514	The Call of the Song	{Drama,Romance,"Short\n"}	tt0001526	f	short	1911-01-01
1515	The Cameraman's Revenge	{Animation,Comedy,"Fantasy\n"}	tt0001527	f	short	1912-01-01
1516	Captain Barnacle's Courtship	{Comedy,"Short\n"}	tt0001528	f	short	1911-01-01
1517	Captain Kate	{Drama,"Short\n"}	tt0001529	f	short	1911-01-01
1518	The Bushranger's Bride	{"Drama\n"}	tt0001530	f	movie	1911-01-01
1519	Captain Starlight, or Gentleman of the Road	{"\\\\N\n"}	tt0001531	f	movie	1911-01-01
1520	Carmen o la hija del contrabandista	{"Short\n"}	tt0001532	f	short	1911-01-01
1521	Carmenita the Faithful	{Short,"Western\n"}	tt0001533	f	short	1911-01-01
1522	Carnaval en Palamós	{"Short\n"}	tt0001534	f	short	1911-01-01
1523	Castillo de Arampruña	{"Short\n"}	tt0001535	f	short	1911-01-01
1524	A Cattle Rustler's Father	{Short,"Western\n"}	tt0001536	f	short	1911-01-01
1525	The Cattleman's Daughter	{Short,"Western\n"}	tt0001537	f	short	1911-01-01
1526	Caught with the Goods	{Comedy,"Short\n"}	tt0001538	f	short	1911-01-01
1527	Cain and Abel	{Drama,"Short\n"}	tt0001539	f	short	1911-01-01
1528	The Changing of Silas Warner	{Drama,"Short\n"}	tt0001540	f	short	1911-01-01
1529	Checkmated	{Biography,"Short\n"}	tt0001541	f	short	1911-01-01
1530	The Chief's Daughter	{Romance,"Short\n"}	tt0001542	f	short	1911-01-01
1531	The Child Crusoes	{Adventure,"Short\n"}	tt0001543	f	short	1911-01-01
1532	A Christmas Carol	{Drama,Fantasy,"Short\n"}	tt0001544	f	short	1910-01-01
1533	Cinderella	{Fantasy,"Short\n"}	tt0001545	f	short	1911-01-01
1534	Cinderella	{Fantasy,Romance,"Short\n"}	tt0001546	f	short	1912-01-01
1535	A Citizeness of Paris	{"Short\n"}	tt0001547	f	short	1911-01-01
1536	The Clown's Sacrifice	{"Short\n"}	tt0001548	f	short	1911-01-01
1537	The Codfish Industry in Newfoundland	{Documentary,"Short\n"}	tt0001549	f	short	1912-01-01
1538	The Coffin Ship	{Adventure,"Short\n"}	tt0001550	f	short	1911-01-01
1539	Comrades	{Comedy,"Short\n"}	tt0001551	f	short	1911-01-01
1542	The Corporation and the Ranch Girl	{Short,"Western\n"}	tt0001554	f	short	1911-01-01
1543	Cortejo Cívico	{"\\\\N\n"}	tt0001555	f	movie	1911-01-01
1544	The Count and the Cowboys	{Comedy,Short,"Western\n"}	tt0001556	f	short	1911-01-01
1545	A Country Cupid	{Romance,"Short\n"}	tt0001557	f	short	1911-01-01
1546	The Country Lovers	{Comedy,"Short\n"}	tt0001558	f	short	1911-01-01
1547	The Courting of Mary	{Comedy,"Short\n"}	tt0001559	f	short	1911-01-01
1548	The Cowboy Coward	{Short,"Western\n"}	tt0001560	f	short	1911-01-01
1549	The Puncher's Law	{Short,"Western\n"}	tt0001562	f	short	1911-01-01
1550	Os Crimes de Diogo Alves	{Crime,Drama,"Short\n"}	tt0001563	f	short	1911-01-01
1551	The Crooked Road	{Drama,"Short\n"}	tt0001564	f	short	1911-01-01
1552	The Crusader	{"Short\n"}	tt0001565	f	short	1911-01-01
1553	A Cure for Crime	{Comedy,"Short\n"}	tt0001566	f	short	1911-01-01
1554	Cyrano et d'Assoucy	{"Short\n"}	tt0001567	f	short	1911-01-01
1555	Dad's Girls	{Short,"Western\n"}	tt0001568	f	short	1911-01-01
1556	The Daddy's Dream	{"\\\\N\n"}	tt0001569	f	movie	1911-01-01
1557	The Daisy Cowboys	{Comedy,"Short\n"}	tt0001570	f	short	1911-01-01
1558	Dan the Dandy	{Comedy,Drama,"Short\n"}	tt0001571	f	short	1911-01-01
1559	Dandy Dick of Bishopsgate	{Drama,"Short\n"}	tt0001572	f	short	1911-01-01
1560	De Gerona a Olot en ferrocarril (De Olot a Gerona en ferrocarril)	{Documentary,"Short\n"}	tt0001573	f	short	1911-01-01
1561	A Dead Man's Honor	{Drama,"Short\n"}	tt0001574	f	short	1911-01-01
1562	The Death of Nathan Hale	{Drama,"Short\n"}	tt0001575	f	short	1911-01-01
1563	The Declaration of Independence	{Drama,"Short\n"}	tt0001576	f	short	1911-01-01
1564	A Decree of Destiny	{Drama,Romance,"Short\n"}	tt0001577	f	short	1911-01-01
1565	The Desert Claim	{Short,"Western\n"}	tt0001578	f	short	1911-01-01
1566	Detective Henry and the Paris Apaches	{"Short\n"}	tt0001579	f	short	1911-01-01
1567	Le devoir et l'honneur	{Drama,"Short\n"}	tt0001580	f	short	1911-01-01
1568	A Devoted Friend	{"Short\n"}	tt0001581	f	short	1911-01-01
1569	The Diamond Star	{Drama,"Short\n"}	tt0001582	f	short	1911-01-01
1570	La digue	{Drama,"Short\n"}	tt0001583	f	short	1911-01-01
1571	The Diving Girl	{Comedy,"Short\n"}	tt0001584	f	short	1911-01-01
1572	The Doctor	{Drama,"Short\n"}	tt0001585	f	short	1911-01-01
1573	A Dog's Tale	{"\\\\N\n"}	tt0001586	f	movie	1911-01-01
1574	Don Pedro el Cruel	{"Short\n"}	tt0001587	f	short	1911-01-01
1575	The Dream	{Drama,"Short\n"}	tt0001588	f	short	1911-01-01
1576	Dutch Gold Mine	{Comedy,"Short\n"}	tt0001589	f	short	1911-01-01
1577	Dæmonen	{"Short\n"}	tt0001590	f	short	1911-01-01
1578	Le dévouement d'un gosse	{Drama,"Short\n"}	tt0001591	f	short	1911-01-01
1579	In the Prime of Life	{"Drama\n"}	tt0001592	f	movie	1911-01-01
1580	Enoch Arden: Part I	{Drama,"Short\n"}	tt0001593	f	short	1911-01-01
1581	Enoch Arden: Part II	{Drama,"Short\n"}	tt0001594	f	short	1911-01-01
1582	Eskimos in Labrador	{Documentary,"Short\n"}	tt0001595	f	short	1911-01-01
1583	Ester: A Biblical Episode	{"Short\n"}	tt0001596	f	short	1911-01-01
1584	Eugene Wrayburn	{Drama,"Short\n"}	tt0001597	f	short	1911-01-01
1585	The Failure	{Romance,"Short\n"}	tt0001598	f	short	1911-01-01
1586	The Fair Dentist	{Comedy,"Short\n"}	tt0001599	f	short	1911-01-01
1587	The Faithful Indian	{Short,"Western\n"}	tt0001600	f	short	1910-01-01
1588	The Fall of Babylon	{Drama,History,"Short\n"}	tt0001601	f	short	1911-01-01
1589	El fantasma del castillo	{"\\\\N\n"}	tt0001602	f	movie	1911-01-01
1590	Den farlige leg	{"Drama\n"}	tt0001603	f	movie	1911-01-01
1591	The Fatal Wedding	{"Drama\n"}	tt0001604	f	movie	1911-01-01
1592	Fate	{Short,"Western\n"}	tt0001605	f	short	1911-01-01
1593	Fate's Funny Frolic	{Comedy,Romance,"Short\n"}	tt0001606	f	short	1911-01-01
1594	Fate's Turning	{Romance,"Short\n"}	tt0001607	f	short	1911-01-01
1595	Fattigdommens forbandelse	{Drama,"Short\n"}	tt0001608	f	short	1911-01-01
1596	Feria de ganado en Villarrodona	{Documentary,"Short\n"}	tt0001609	f	short	1911-01-01
1597	Fiesta Mayor de Manresa	{"Short\n"}	tt0001610	f	short	1911-01-01
1598	Fiestas del Sitio en Bilbao	{Documentary,"Short\n"}	tt0001611	f	short	1911-01-01
1599	Fiestas en La Bisbal	{Documentary,"Short\n"}	tt0001612	f	short	1911-01-01
1600	Fighting Blood	{Action,Short,"Western\n"}	tt0001613	f	short	1911-01-01
1601	The Four Devils	{Drama,"Short\n"}	tt0001614	f	short	1911-01-01
1602	Fisher Folks	{Drama,"Short\n"}	tt0001615	f	short	1911-01-01
1603	The Fisher-Maid	{Drama,"Short\n"}	tt0001616	f	short	1911-01-01
1604	The Fisherman's Daughter	{Drama,"Short\n"}	tt0001617	f	short	1911-01-01
1605	Flo's Discipline	{Comedy,"Short\n"}	tt0001618	f	short	1912-01-01
1606	The Flower Girl of Florence	{"Short\n"}	tt0001619	f	short	1911-01-01
1607	Following Mother's Footsteps	{Comedy,"Short\n"}	tt0001620	f	short	1911-01-01
1608	For Her Brother's Sake	{Drama,"Short\n"}	tt0001621	f	short	1911-01-01
1609	For the Crown	{"Short\n"}	tt0001622	f	short	1911-01-01
1610	For the Queen's Honor	{Drama,"Short\n"}	tt0001623	f	short	1911-01-01
1611	For aabent Tæppe	{"Short\n"}	tt0001624	f	short	1912-01-01
1612	The Forester's Plea	{Short,"Western\n"}	tt0001625	f	short	1911-01-01
1613	Forgiven in Death	{Short,"Western\n"}	tt0001626	f	short	1911-01-01
1614	Foul Play	{Drama,"Short\n"}	tt0001627	f	short	1911-01-01
1615	The Four Poster Pest	{"\\\\N\n"}	tt0001628	f	movie	1911-01-01
1616	Freezing Auntie	{Comedy,Sci-Fi,"Short\n"}	tt0001629	f	short	1912-01-01
1617	Der fremde Vogel	{"\\\\N\n"}	tt0001630	f	movie	1911-01-01
1618	A French Duel	{"Short\n"}	tt0001631	f	short	1911-01-01
1619	Friday the 13th	{Comedy,"Short\n"}	tt0001632	f	short	1911-01-01
1620	From Factory Girl to Prima Donna	{Drama,"Short\n"}	tt0001633	f	short	1911-01-01
1621	From the Bottom of the Sea	{Drama,"Short\n"}	tt0001634	f	short	1911-01-01
1622	A Frontier Doctor	{Short,"Western\n"}	tt0001635	f	short	1911-01-01
1623	Galileo	{"Short\n"}	tt0001636	f	short	1911-01-01
1624	A Gasoline Engagement	{Comedy,"Short\n"}	tt0001637	f	short	1911-01-01
1625	The General's Daughter	{Drama,"Short\n"}	tt0001638	f	short	1911-01-01
1626	The General's Only Son	{Drama,"Short\n"}	tt0001639	f	short	1911-01-01
1627	George Warrington's Escape	{Drama,"Short\n"}	tt0001640	f	short	1911-01-01
1628	The Geranium	{Drama,"Short\n"}	tt0001641	f	short	1911-01-01
1629	Get Rich Quick	{Drama,"Short\n"}	tt0001642	f	short	1911-01-01
1630	The Ghost's Warning	{Short,"Thriller\n"}	tt0001643	f	short	1911-01-01
1631	The Girl Back East	{Short,"Western\n"}	tt0001644	f	short	1911-01-01
1632	The Girl and the Motor Boat	{Drama,"Short\n"}	tt0001645	f	short	1911-01-01
1633	The Girl of the West	{Short,"Western\n"}	tt0001646	f	short	1911-01-01
1634	The Gold Lust	{Short,"Western\n"}	tt0001647	f	short	1911-01-01
1635	The Golden West	{"\\\\N\n"}	tt0001648	f	movie	1911-01-01
1636	A Good Turn	{Crime,Drama,"Short\n"}	tt0001649	f	short	1911-01-01
1637	The Gordian Knot	{Comedy,Romance,"Short\n"}	tt0001650	f	short	1911-01-01
1638	The Gun Man	{Short,"Western\n"}	tt0001652	f	short	1911-01-01
1639	The Harsh Father	{Drama,"Short\n"}	tt0001653	f	short	1911-01-01
1640	Heart Beats of Long Ago	{Drama,Romance,"Short\n"}	tt0001654	f	short	1911-01-01
1641	The Heart of a Savage	{Drama,"Short\n"}	tt0001655	f	short	1911-01-01
1642	The Heiress	{Drama,Romance,"Short\n"}	tt0001656	f	short	1911-01-01
1643	Helping Him Out	{Comedy,"Short\n"}	tt0001657	f	short	1911-01-01
1644	Henry VIII	{Drama,History,"Short\n"}	tt0001658	f	short	1911-01-01
1645	Her Awakening	{Drama,"Short\n"}	tt0001659	f	short	1911-01-01
1646	Her Crowning Glory	{Comedy,"Short\n"}	tt0001660	f	short	1911-01-01
1647	Her Darkest Hour	{Drama,"Short\n"}	tt0001661	f	short	1911-01-01
1648	Her Hero	{Comedy,"Short\n"}	tt0001662	f	short	1911-01-01
1649	Her Sacrifice	{Drama,"Short\n"}	tt0001663	f	short	1911-01-01
1650	Her Two Sons	{Drama,Romance,"Short\n"}	tt0001664	f	short	1911-01-01
1651	Her Wedding Ring	{Drama,Romance,"Short\n"}	tt0001665	f	short	1911-01-01
1652	The Hidden Mine	{Short,"Western\n"}	tt0001666	f	short	1911-01-01
1653	The Hidden Trail	{Drama,Short,"Western\n"}	tt0001667	f	short	1912-01-01
1654	The Highlander	{Romance,"Short\n"}	tt0001668	f	short	1911-01-01
1655	His Birthday	{Comedy,"Short\n"}	tt0001669	f	short	1911-01-01
1656	His Conscience	{Crime,Drama,"Short\n"}	tt0001670	f	short	1911-01-01
1657	His Daughter	{Drama,"Short\n"}	tt0001671	f	short	1911-01-01
1658	His Dress Shirt	{Comedy,"Short\n"}	tt0001672	f	short	1911-01-01
1659	His Friend's Wife	{Drama,Romance,"Short\n"}	tt0001673	f	short	1911-01-01
1660	His Last Burglary	{Crime,Drama,"Short\n"}	tt0001674	f	short	1911-01-01
1661	His Message	{Drama,Short,"Western\n"}	tt0001675	f	short	1912-01-01
1662	His Mother	{Drama,"Short\n"}	tt0001676	f	short	1911-01-01
1663	His Mother's Scarf	{Romance,Short,"Western\n"}	tt0001677	f	short	1911-01-01
1664	His Nemesis	{Drama,Short,"Western\n"}	tt0001678	f	short	1912-01-01
1665	His Sister's Children	{Comedy,"Short\n"}	tt0001679	f	short	1911-01-01
1666	His Trust: The Faithful Devotion and Self-Sacrifice of an Old Negro Servant	{Drama,Short,"War\n"}	tt0001680	f	short	1911-01-01
1667	His Trust Fulfilled	{Drama,"Short\n"}	tt0001681	f	short	1911-01-01
1668	Home	{Drama,"Short\n"}	tt0001682	f	short	1911-01-01
1669	Home Sweet Home	{Drama,"Short\n"}	tt0001683	f	short	1911-01-01
1670	The Honeymooners	{Romance,"Short\n"}	tt0001684	f	short	1911-01-01
1671	Honor Thy Father	{Drama,"Short\n"}	tt0001685	f	short	1912-01-01
1672	By the House That Jack Built	{Drama,Fantasy,"Short\n"}	tt0001686	f	short	1911-01-01
1673	How Betty Won the School	{Comedy,Drama,"Short\n"}	tt0001687	f	short	1911-01-01
1789	The New Church Carpet	{Drama,"Short\n"}	tt0001806	f	short	1911-01-01
1674	How Mrs. Murray Saved the American Army	{Action,Drama,"Short\n"}	tt0001688	f	short	1911-01-01
1675	How She Triumphed	{Drama,Romance,"Short\n"}	tt0001689	f	short	1911-01-01
1676	How Sir Andrew Lost His Vote	{Comedy,Drama,"Short\n"}	tt0001690	f	short	1911-01-01
1677	The Hypnotist and the Convict	{Comedy,"Short\n"}	tt0001691	f	short	1911-01-01
1678	The Great Moment	{Drama,"Short\n"}	tt0001692	f	short	1911-01-01
1679	The Immortal Alamo	{History,Short,"Western\n"}	tt0001693	f	short	1911-01-01
1680	In Old California When the Gringos Came	{Short,"Western\n"}	tt0001694	f	short	1911-01-01
1681	In Old Madrid	{Comedy,Romance,"Short\n"}	tt0001695	f	short	1911-01-01
1682	In the Days of '49	{Short,"Western\n"}	tt0001696	f	short	1911-01-01
1683	In the Days of Chivalry	{Drama,Romance,"Short\n"}	tt0001697	f	short	1911-01-01
1684	In the Days of Gold	{Short,"Western\n"}	tt0001698	f	short	1911-01-01
1685	In the Reign of Terror	{"Short\n"}	tt0001699	f	short	1911-01-01
1686	In the Sultan's Garden	{Drama,"Short\n"}	tt0001700	f	short	1911-01-01
1687	The Indian Brothers	{Drama,"Short\n"}	tt0001701	f	short	1911-01-01
1688	The Indian Maiden's Lesson	{Short,"Western\n"}	tt0001702	f	short	1911-01-01
1689	An Indian's Sacrifice	{Short,"Western\n"}	tt0001703	f	short	1911-01-01
1690	Indiscretions of Betty	{Comedy,"Short\n"}	tt0001704	f	short	1910-01-01
1691	Industrias textiles	{"Short\n"}	tt0001705	f	short	1911-01-01
1692	The Infant at Snakeville	{"\\\\N\n"}	tt0001706	f	movie	1911-01-01
1693	An International Heart Breaker	{Comedy,Romance,"Short\n"}	tt0001707	f	short	1911-01-01
1694	The Inventor's Son	{Drama,"Short\n"}	tt0001708	f	short	1911-01-01
1695	The Italian Barber	{Comedy,"Short\n"}	tt0001709	f	short	1911-01-01
1696	Italian Blood	{Drama,"Short\n"}	tt0001710	f	short	1911-01-01
1697	Jahreszeiten des Lebens	{"\\\\N\n"}	tt0001711	f	movie	1915-01-01
1698	Jane Shore	{"\\\\N\n"}	tt0001712	f	movie	1911-01-01
1699	The Jealous Husband	{Comedy,"Short\n"}	tt0001713	f	short	1911-01-01
1700	Johnson at the Wedding	{Comedy,"Short\n"}	tt0001714	f	short	1911-01-01
1701	Julius Caesar	{Crime,History,"Short\n"}	tt0001715	f	short	1911-01-01
1702	Julius Caesar's Sandals	{"\\\\N\n"}	tt0001716	f	movie	1911-01-01
1703	Järnbäraren	{"Short\n"}	tt0001717	f	short	1911-01-01
1704	Kinemacolor Songs	{Music,"Short\n"}	tt0001718	f	short	1911-01-01
1705	The King of Indigo	{Comedy,"Short\n"}	tt0001719	f	short	1911-01-01
1706	Kit Carson's Wooing	{Short,"Western\n"}	tt0001720	f	short	1911-01-01
1707	Kitty the Dressmaker	{Romance,"Short\n"}	tt0001721	f	short	1911-01-01
1708	A Knight of the Road	{Comedy,"Short\n"}	tt0001722	f	short	1911-01-01
1709	Lady Beaulay's Necklace	{Crime,Drama,"Short\n"}	tt0001723	f	short	1911-01-01
1710	The Last Drop of Water	{Short,"Western\n"}	tt0001724	f	short	1911-01-01
1711	The Last Farewell	{Drama,"Short\n"}	tt0001725	f	short	1911-01-01
1712	Lost Years	{Drama,"Short\n"}	tt0001727	f	short	1911-01-01
1713	The Last of the Mohicans	{Adventure,"Short\n"}	tt0001728	f	short	1911-01-01
1714	The Law of the Range	{Drama,Short,"Western\n"}	tt0001729	f	short	1911-01-01
1715	The Leading Lady	{Comedy,"Short\n"}	tt0001730	f	short	1911-01-01
1716	The Convict Hero	{"Drama\n"}	tt0001731	f	movie	1911-01-01
1717	The Lighthouse Keeper	{Drama,"Short\n"}	tt0001732	f	short	1911-01-01
1718	The Lily of the Tenements	{Drama,"Short\n"}	tt0001733	f	short	1911-01-01
1719	The Little Daughter's Letter	{Drama,"Short\n"}	tt0001734	f	short	1911-01-01
1720	Little Lady Lafayette	{"Short\n"}	tt0001735	f	short	1911-01-01
1721	Little Nell's Tobacco	{Drama,"Short\n"}	tt0001736	f	short	1910-01-01
1722	Winsor McCay, the Famous Cartoonist of the N.Y. Herald and His Moving Comics	{Animation,Comedy,"Short\n"}	tt0001737	f	short	1911-01-01
1723	Little Red Riding Hood	{Fantasy,"Short\n"}	tt0001738	f	short	1911-01-01
1724	The Living Peach	{Comedy,"Short\n"}	tt0001739	f	short	1911-01-01
1725	The Lonedale Operator	{Drama,Romance,"Short\n"}	tt0001740	f	short	1911-01-01
1726	The Long Road	{Drama,"Short\n"}	tt0001741	f	short	1911-01-01
1727	Lost Illusions	{Romance,"Short\n"}	tt0001742	f	short	1911-01-01
1728	The Lost Necklace	{Drama,"Short\n"}	tt0001743	f	short	1911-01-01
1729	The Lost Ring	{Comedy,"Short\n"}	tt0001744	f	short	1911-01-01
1730	Lost in the Arctic	{Action,Adventure,"Drama\n"}	tt0001746	f	short	1911-01-01
1731	Lost in the Jungle	{Action,Adventure,"Drama\n"}	tt0001747	f	short	1911-01-01
1732	Love Conquers	{Romance,"Short\n"}	tt0001748	f	short	1911-01-01
1733	Love Heeds Not Showers	{Comedy,"Short\n"}	tt0001749	f	short	1911-01-01
1734	Love Story of Charles II	{Drama,History,"Short\n"}	tt0001750	f	short	1911-01-01
1735	Love and Hatred	{Drama,Short,"Western\n"}	tt0001751	f	short	1911-01-01
1736	Love in a Cottage	{"Short\n"}	tt0001752	f	short	1911-01-01
1737	Love in the Hills	{Drama,"Short\n"}	tt0001753	f	short	1911-01-01
1738	Love or Riches	{Romance,"Short\n"}	tt0001754	f	short	1911-01-01
1739	Love's Strategy	{Comedy,"Short\n"}	tt0001755	f	short	1911-01-01
1740	Lucha por la herencia	{"\\\\N\n"}	tt0001756	f	movie	1911-01-01
1741	The Lucky Card	{Short,"Western\n"}	tt0001757	f	short	1911-01-01
1742	A Lucky Escape	{"Short\n"}	tt0001758	f	short	1911-01-01
1743	Ludwig from Germany	{Comedy,"Short\n"}	tt0001759	f	short	1911-01-01
1744	The Lure of the City	{Drama,"Short\n"}	tt0001760	f	short	1911-01-01
1745	Macbeth	{Drama,"Short\n"}	tt0001761	f	short	1911-01-01
1746	Mrs. Pussy Loves Animals	{Comedy,"Short\n"}	tt0001762	f	short	1911-01-01
1747	Madame Rex	{Drama,"Short\n"}	tt0001763	f	short	1911-01-01
1748	Madero al sur del país	{"\\\\N\n"}	tt0001764	f	movie	1911-01-01
1749	The Madman	{Drama,"Short\n"}	tt0001765	f	short	1911-01-01
1750	The Magic Ring	{Comedy,"Short\n"}	tt0001766	f	short	1911-01-01
1751	Maid or Man	{Drama,"Short\n"}	tt0001767	f	short	1911-01-01
1752	Major the Red Cross Dog	{Drama,"Short\n"}	tt0001768	f	short	1911-01-01
1753	The Making of a Man	{Drama,"Short\n"}	tt0001769	f	short	1911-01-01
1754	A Man for All That	{Comedy,Drama,"Short\n"}	tt0001770	f	short	1911-01-01
1755	The Manicure Lady	{Comedy,"Short\n"}	tt0001771	f	short	1911-01-01
1756	A Manly Man	{Drama,"Short\n"}	tt0001772	f	short	1911-01-01
1757	Une mariée qui se fait attendre	{Comedy,"Short\n"}	tt0001773	f	short	1911-01-01
1758	The Master and the Man	{Crime,Drama,"Short\n"}	tt0001774	f	short	1911-01-01
1759	Maud Muller	{Drama,Short,"Western\n"}	tt0001775	f	short	1912-01-01
1760	Max Takes Tonics	{Comedy,"Short\n"}	tt0001776	f	short	1911-01-01
1761	The Meeting of the Ways	{Drama,Family,"Short\n"}	tt0001777	f	short	1912-01-01
1762	Menneskedyret	{"\\\\N\n"}	tt0001778	f	movie	1911-01-01
1763	The Message in the Bottle	{Drama,"Short\n"}	tt0001779	f	short	1911-01-01
1764	Midsummer Tide	{"\\\\N\n"}	tt0001780	f	movie	1911-01-01
1765	Mike's Hero	{Comedy,"Short\n"}	tt0001781	f	short	1911-01-01
1766	Mike, the Miser	{Drama,"Short\n"}	tt0001782	f	short	1911-01-01
1767	The Millionaire and the Squatter	{Short,"Western\n"}	tt0001783	f	short	1911-01-01
1768	The Millionaire's Nephew	{Comedy,"Short\n"}	tt0001784	f	short	1911-01-01
1769	The Miner's Curse	{"Drama\n"}	tt0001785	f	movie	1911-01-01
1770	The Minute Man	{Drama,"Short\n"}	tt0001786	f	short	1911-01-01
1771	The Mirror	{Comedy,"Short\n"}	tt0001787	f	short	1911-01-01
1772	Mischievous Puck	{Comedy,"Short\n"}	tt0001788	f	short	1911-01-01
1773	The Miser's Heart	{Crime,Drama,"Short\n"}	tt0001789	f	short	1911-01-01
1774	Les Misérables, Part 1: Jean Valjean	{"Drama\n"}	tt0001790	f	movie	1913-01-01
1775	A Modern Cinderella	{Drama,Romance,"Short\n"}	tt0001791	f	short	1911-01-01
1776	The Modern Dianas	{Drama,"Short\n"}	tt0001792	f	short	1911-01-01
1777	A Modern Hero	{Crime,Drama,"Short\n"}	tt0001793	f	short	1911-01-01
1778	The Modern Pygmalion and Galatea	{"Short\n"}	tt0001794	f	short	1911-01-01
1779	Monasterio de Caralps en Berga	{"Short\n"}	tt0001795	f	short	1911-01-01
1780	Monasterio de Ripoll	{Documentary,"Short\n"}	tt0001796	f	short	1911-01-01
1781	Money to Burn	{Comedy,"Short\n"}	tt0001797	f	short	1911-01-01
1782	The Mountain Law	{Drama,"Short\n"}	tt0001798	f	short	1911-01-01
1783	Moses Saved from the Waters	{Drama,"Short\n"}	tt0001799	f	short	1911-01-01
1784	Music Hath Charms	{Comedy,"Short\n"}	tt0001800	f	short	1911-01-01
1785	Mustang Pete's Love Affair	{Comedy,"Short\n"}	tt0001801	f	short	1911-01-01
1786	The Mystery of a Hansom Cab	{"\\\\N\n"}	tt0001803	f	movie	1911-01-01
1787	Mystic Manipulations	{"Short\n"}	tt0001804	f	short	1911-01-01
1788	Nell Gwynn the Orange Girl	{Drama,History,"Short\n"}	tt0001805	f	short	1911-01-01
1790	Bar Z's New Cook	{Comedy,Short,"Western\n"}	tt0001807	f	short	1911-01-01
1791	The New Dress	{Romance,"Short\n"}	tt0001808	f	short	1911-01-01
1792	The New Manager	{Drama,"Short\n"}	tt0001809	f	short	1911-01-01
1793	A Noble Heart	{Drama,"Short\n"}	tt0001810	f	short	1911-01-01
1794	The O'Neill	{Drama,"Short\n"}	tt0001811	f	short	1912-01-01
1795	Oedipus Rex	{"Drama\n"}	tt0001812	f	movie	1911-01-01
1796	The Old Confectioner's Mistake	{Drama,"Short\n"}	tt0001813	f	short	1911-01-01
1797	Oliver Cromwell	{Drama,History,"Short\n"}	tt0001814	f	short	1911-01-01
1798	On the Brink	{Drama,"Short\n"}	tt0001815	f	short	1911-01-01
1799	On the Desert's Edge	{Short,"Western\n"}	tt0001816	f	short	1911-01-01
1800	Only in the Way	{Drama,"Short\n"}	tt0001817	f	short	1911-01-01
1801	Out from the Shadow	{Drama,"Short\n"}	tt0001818	f	short	1911-01-01
1802	The Outlaw Samaritan	{Short,"Western\n"}	tt0001820	f	short	1911-01-01
1803	The Outlaw and the Child	{Short,"Western\n"}	tt0001821	f	short	1911-01-01
1804	The Outlaw Deputy	{Short,"Western\n"}	tt0001822	f	short	1911-01-01
1805	Over the Garden Wall	{Drama,Romance,"Short\n"}	tt0001823	f	short	1910-01-01
1806	Over the Hills	{Drama,Romance,"Short\n"}	tt0001824	f	short	1911-01-01
1807	A Pal's Oath	{Short,"Western\n"}	tt0001825	f	short	1911-01-01
1808	Par habitude	{"Comedy\n"}	tt0001826	f	movie	1911-01-01
1809	Paradise Lost	{Drama,"Short\n"}	tt0001827	f	short	1911-01-01
1810	The Passions of an Egyptian Princess	{"Short\n"}	tt0001828	f	short	1911-01-01
1811	The Peasants and the Fairy	{"Short\n"}	tt0001829	f	short	1911-01-01
1812	Picciola; or, the Prison Flower	{Drama,"Short\n"}	tt0001830	f	short	1911-01-01
1813	The Pied Piper of Hamelin	{Drama,"Short\n"}	tt0001831	f	short	1911-01-01
1814	The Pirates of 1920	{Fantasy,Sci-Fi,"Short\n"}	tt0001832	f	short	1911-01-01
1815	The Poisoned Flume	{Short,"Western\n"}	tt0001833	f	short	1911-01-01
1816	The Politician's Dream	{Comedy,"Short\n"}	tt0001834	f	short	1911-01-01
1817	The Poor Sick Men	{Drama,"Short\n"}	tt0001835	f	short	1911-01-01
1818	The Power of Good	{Short,"Western\n"}	tt0001836	f	short	1911-01-01
1819	The Power of Love	{Drama,Romance,"Short\n"}	tt0001837	f	short	1911-01-01
1820	The Price of a Man	{Drama,"Short\n"}	tt0001838	f	short	1911-01-01
1821	The Priest's Burden	{"Short\n"}	tt0001839	f	short	1911-01-01
1822	The Primal Call	{Romance,"Short\n"}	tt0001840	f	short	1911-01-01
1823	Priscilla's Engagement Ring	{Comedy,Romance,"Short\n"}	tt0001841	f	short	1911-01-01
1824	The Convict's Song	{Drama,"Short\n"}	tt0001842	f	short	1911-01-01
1825	The Professor and the New Hat	{Comedy,"Short\n"}	tt0001843	f	short	1911-01-01
1826	The Profligate	{Drama,"Short\n"}	tt0001844	f	short	1911-01-01
1827	Pulgarcito	{"Short\n"}	tt0001845	f	short	1912-01-01
1828	The Puncher's New Love	{Short,"Western\n"}	tt0001846	f	short	1911-01-01
1829	The Question Mark	{Comedy,"Short\n"}	tt0001847	f	short	1911-01-01
1830	Railroad Raiders of '62	{Drama,Short,"War\n"}	tt0001848	f	short	1911-01-01
1831	The Ranchman's Son	{Short,"Western\n"}	tt0001849	f	short	1911-01-01
1832	Rattlesnakes and Gunpowder	{Comedy,Short,"Western\n"}	tt0001850	f	short	1911-01-01
1833	The Rebel's Daughter	{"Short\n"}	tt0001851	f	short	1911-01-01
1834	John Farley's Redemption	{Drama,"Short\n"}	tt0001852	f	short	1909-01-01
1835	The Reform Candidate	{Drama,"Short\n"}	tt0001853	f	short	1911-01-01
1836	The Reporter	{Comedy,"Short\n"}	tt0001854	f	short	1911-01-01
1837	The Revenue Man and the Girl	{Drama,"Short\n"}	tt0001856	f	short	1911-01-01
1838	Richard III	{Biography,Drama,"History\n"}	tt0001857	f	short	1911-01-01
1839	Un clair de lune sous Richelieu	{Drama,"Short\n"}	tt0001858	f	short	1911-01-01
1840	The Rise and Fall of Weary Willie	{Comedy,"Short\n"}	tt0001859	f	short	1911-01-01
1841	The Romance on 'Bar O'	{Short,"Western\n"}	tt0001860	f	short	1911-01-01
1842	A Romance of the Rio Grande	{Short,"Western\n"}	tt0001861	f	short	1911-01-01
1843	Queen of the Smugglers	{Drama,"Short\n"}	tt0001862	f	short	1911-01-01
1844	A Romany Tragedy	{Drama,"Short\n"}	tt0001863	f	short	1911-01-01
1845	The Rosary	{Drama,Romance,"Short\n"}	tt0001864	f	short	1911-01-01
1846	The Rose of Kentucky	{Romance,"Short\n"}	tt0001865	f	short	1911-01-01
1847	The Rose's Story	{Drama,Romance,"Short\n"}	tt0001866	f	short	1911-01-01
1848	The Ruling Passion	{Drama,"Short\n"}	tt0001867	f	short	1911-01-01
1849	Abraham's Sacrifice	{Drama,"Short\n"}	tt0001868	f	short	1912-01-01
1850	Samson and Delilah	{"Short\n"}	tt0001869	f	short	1911-01-01
1851	Saved from Herself	{Comedy,"Short\n"}	tt0001870	f	short	1911-01-01
1852	Saved from Himself	{Drama,"Short\n"}	tt0001871	f	short	1911-01-01
1853	The Scarlet Letter	{Drama,"Short\n"}	tt0001872	f	short	1911-01-01
1854	The Schoolmaster of Mariposa	{Short,"Western\n"}	tt0001873	f	short	1910-01-01
1855	Science	{Drama,"Short\n"}	tt0001874	f	short	1911-01-01
1856	Second Sight	{Drama,"Short\n"}	tt0001875	f	short	1911-01-01
1857	The Sentinel Asleep	{Drama,"Short\n"}	tt0001876	f	short	1911-01-01
1858	She	{Fantasy,Sci-Fi,"Short\n"}	tt0001877	f	short	1911-01-01
1859	The Sheriff's Brother	{Short,"Western\n"}	tt0001878	f	short	1911-01-01
1860	The Sheriff's Chum	{Short,"Western\n"}	tt0001879	f	short	1911-01-01
1861	The Sheriff's Decision	{Short,"Western\n"}	tt0001880	f	short	1911-01-01
1862	Los siete niños de Écija o Los bandidos de Sierra Morena	{Adventure,"Short\n"}	tt0001881	f	short	1911-01-01
1863	The Silent Tongue	{Comedy,"Short\n"}	tt0001882	f	short	1911-01-01
1864	The Silken Thread	{"Short\n"}	tt0001883	f	short	1911-01-01
1865	Simpkin's Dream of a Holiday	{Comedy,"Short\n"}	tt0001884	f	short	1911-01-01
1866	Sir Percy and the Punchers	{Comedy,Short,"Western\n"}	tt0001885	f	short	1911-01-01
1867	The Siege of Calais	{Drama,Short,"War\n"}	tt0001886	f	short	1911-01-01
1868	The Skating Bug	{Comedy,"Short\n"}	tt0001887	f	short	1911-01-01
1869	The Sky Pilot	{Drama,"Short\n"}	tt0001888	f	short	1911-01-01
1870	Skæbnebæltet	{"\\\\N\n"}	tt0001889	f	movie	1911-01-01
1871	The Smile of a Child	{Drama,Romance,"Short\n"}	tt0001890	f	short	1911-01-01
1872	The Sorrowful Example	{Drama,"Short\n"}	tt0001891	f	short	1911-01-01
1873	Den sorte drøm	{"Drama\n"}	tt0001892	f	movie	1911-01-01
1874	The Spanish Gypsy	{Romance,"Short\n"}	tt0001893	f	short	1911-01-01
1875	Spike Shannon's Last Fight	{Short,"Western\n"}	tt0001894	f	short	1911-01-01
1876	Sport Hípico	{"Documentary\n"}	tt0001895	f	movie	1911-01-01
1877	The Squaw's Love	{Drama,Short,"Western\n"}	tt0001896	f	short	1911-01-01
1878	The Stage Driver's Daughter	{Short,"Western\n"}	tt0001897	f	short	1911-01-01
1879	A Stage Romance	{Drama,"Short\n"}	tt0001898	f	short	1911-01-01
1880	The Stampede	{Short,"Western\n"}	tt0001899	f	short	1911-01-01
1881	The Star Spangled Banner	{Drama,"Short\n"}	tt0001900	f	short	1911-01-01
1882	The Stolen Dog	{Comedy,"Short\n"}	tt0001901	f	short	1911-01-01
1883	The Story of the Indian Ledge	{Drama,"Short\n"}	tt0001902	f	short	1911-01-01
1884	The Strike at the Little Jonny Mine	{Short,"Western\n"}	tt0001903	f	short	1911-01-01
1885	The Stuff Heroes Are Made of	{Drama,"Short\n"}	tt0001904	f	short	1911-01-01
1886	The Stuff That Dreams Are Made of	{Comedy,Drama,"Short\n"}	tt0001905	f	short	1911-01-01
1887	The Subduing of Mrs. Nag	{Comedy,"Short\n"}	tt0001906	f	short	1911-01-01
1888	Sunshine Through the Dark	{Drama,Romance,"Short\n"}	tt0001907	f	short	1911-01-01
1889	The Surgeon's Temptation	{Drama,"Short\n"}	tt0001908	f	short	1911-01-01
1890	Swank and the Remedy	{"Short\n"}	tt0001909	f	short	1911-01-01
1891	Sweet Memories	{Drama,Romance,"Short\n"}	tt0001910	f	short	1911-01-01
1892	Nell Gwynne	{Biography,Drama,"History\n"}	tt0001911	f	movie	1911-01-01
1893	The Switchman's Tower	{Drama,"Short\n"}	tt0001912	f	short	1911-01-01
1894	Swords and Hearts	{Drama,Short,"War\n"}	tt0001913	f	short	1911-01-01
1895	The Devil's Assistant	{"Drama\n"}	tt0001914	f	movie	1913-01-01
1896	A Tale of Two Cities	{Drama,History,"Short\n"}	tt0001915	f	short	1911-01-01
1897	Tarragona monumental	{Documentary,"Short\n"}	tt0001916	f	short	1911-01-01
1898	Teaching Dad to Like Her	{Comedy,Romance,"Short\n"}	tt0001917	f	short	1911-01-01
1899	Telemachus	{"Short\n"}	tt0001918	f	short	1911-01-01
1900	The Telltale Knife	{Short,"Western\n"}	tt0001919	f	short	1911-01-01
1901	Temblor de 1911 en México	{"\\\\N\n"}	tt0001920	f	movie	1911-01-01
1902	A Terrible Discovery	{Drama,"Short\n"}	tt0001921	f	short	1911-01-01
1903	That Winsome Winnie Smile	{Comedy,"Short\n"}	tt0001922	f	short	1911-01-01
1904	Their First Misunderstanding	{Drama,"Short\n"}	tt0001923	f	short	1911-01-01
1905	The Thief and the Girl	{Drama,"Short\n"}	tt0001924	f	short	1911-01-01
1906	Three Million Dollars	{Romance,Short,"Western\n"}	tt0001925	f	short	1911-01-01
1907	The Three Musketeers: Part 2	{Drama,"Short\n"}	tt0001926	f	short	1911-01-01
1908	Three Sisters	{Drama,Romance,"Short\n"}	tt0001927	f	short	1911-01-01
1909	Through Darkened Vales	{Drama,"Short\n"}	tt0001928	f	short	1911-01-01
1910	Through His Wife's Picture	{Comedy,"Short\n"}	tt0001929	f	short	1911-01-01
1911	The Thumb Print	{Drama,"Short\n"}	tt0001930	f	short	1911-01-01
1912	A Thwarted Vengeance	{Short,"Western\n"}	tt0001931	f	short	1911-01-01
1913	The Tomboy	{Drama,"Short\n"}	tt0001932	f	short	1911-01-01
1914	La Tosca	{"Short\n"}	tt0001933	f	short	1911-01-01
1915	The Toss of a Coin	{Comedy,Romance,"Short\n"}	tt0001934	f	short	1911-01-01
1916	The Totem Mark	{Short,"Western\n"}	tt0001935	f	short	1911-01-01
1917	Trading His Mother	{Comedy,"Short\n"}	tt0001936	f	short	1911-01-01
1918	The Trail of Books	{Drama,"Short\n"}	tt0001937	f	short	1911-01-01
1919	The Tribe's Penalty	{Short,"Western\n"}	tt0001939	f	short	1911-01-01
1920	Trilby and Svengali	{"Short\n"}	tt0001940	f	short	1911-01-01
1921	Troublesome Secretaries	{Comedy,"Short\n"}	tt0001941	f	short	1911-01-01
1922	A True Westerner	{Drama,Short,"Western\n"}	tt0001942	f	short	1911-01-01
1923	Two Can Play at the Same Game	{"Short\n"}	tt0001943	f	short	1911-01-01
1924	The Two Chorus Girls	{Drama,Romance,"Short\n"}	tt0001944	f	short	1911-01-01
1925	Two Christmas Hampers	{Comedy,"Short\n"}	tt0001945	f	short	1911-01-01
1926	The Two Fugitives	{Short,"Western\n"}	tt0001946	f	short	1911-01-01
1927	Two Officers	{Drama,"Short\n"}	tt0001947	f	short	1911-01-01
1928	The Two Orphans	{Drama,"Short\n"}	tt0001948	f	short	1911-01-01
1929	The Two Paths	{Drama,"Short\n"}	tt0001949	f	short	1911-01-01
1930	The Two Reformations	{Short,"Western\n"}	tt0001950	f	short	1911-01-01
1931	The Two Sides	{Drama,"Short\n"}	tt0001951	f	short	1911-01-01
1932	The Two-Gun Man	{Short,"Western\n"}	tt0001952	f	short	1911-01-01
1933	Uncle Hiram's List	{Comedy,"Short\n"}	tt0001954	f	short	1911-01-01
1934	Uncle's Picnic	{Comedy,"Short\n"}	tt0001955	f	short	1911-01-01
1935	Under the Stars and Bars	{Drama,Short,"War\n"}	tt0001956	f	short	1910-01-01
1936	Under forvandlingens lov	{Drama,Romance,"Short\n"}	tt0001957	f	short	1911-01-01
1937	An Unknown Language	{Comedy,"Short\n"}	tt0001959	f	short	1911-01-01
1938	The Unveiling	{Drama,"Short\n"}	tt0001960	f	short	1911-01-01
1939	An Unwilling Cowboy	{Comedy,Short,"Western\n"}	tt0001961	f	short	1911-01-01
1940	Van Bibber's Experiment	{Drama,"Short\n"}	tt0001962	f	short	1911-01-01
1941	Temptations of a Great City	{Drama,"Short\n"}	tt0001963	f	short	1911-01-01
1942	The Traitress	{"Drama\n"}	tt0001964	f	movie	1911-01-01
1943	Vicio y virtud	{"\\\\N\n"}	tt0001965	f	movie	1911-01-01
1944	A Victim of Circumstances	{Comedy,"Short\n"}	tt0001966	f	short	1911-01-01
1945	Life as It Is	{Drama,"Short\n"}	tt0001967	f	short	1911-01-01
1946	The Voice of the Child	{Drama,"Short\n"}	tt0001968	f	short	1911-01-01
1947	Was He a Coward?	{Short,"Western\n"}	tt0001969	f	short	1911-01-01
1948	A Western Girl's Sacrifice	{Short,"Western\n"}	tt0001970	f	short	1911-01-01
1949	Western Hearts	{Short,"Western\n"}	tt0001971	f	short	1911-01-01
1950	A Western Redemption	{Short,"Western\n"}	tt0001972	f	short	1911-01-01
1951	What Shall We Do with Our Old?	{Drama,"Short\n"}	tt0001973	f	short	1911-01-01
1952	What a Woman Can Do	{Short,"Western\n"}	tt0001974	f	short	1911-01-01
1953	The Wheels of Justice	{Crime,Drama,"Short\n"}	tt0001975	f	short	1911-01-01
1954	When Love and Honor Called	{Short,"Western\n"}	tt0001976	f	short	1915-01-01
1955	When Two Hearts Are Won	{Comedy,Drama,"Romance\n"}	tt0001977	f	short	1911-01-01
1956	When a Man Loves	{Drama,Romance,"Short\n"}	tt0001978	f	short	1911-01-01
1957	When a Man's Married His Trouble Begins	{Comedy,"Short\n"}	tt0001979	f	short	1911-01-01
1958	When the Cat's Away	{Comedy,"Short\n"}	tt0001980	f	short	1911-01-01
1959	The White Medicine Man	{Drama,Short,"Western\n"}	tt0001981	f	short	1911-01-01
1960	The White Red Man	{Short,Thriller,"Western\n"}	tt0001982	f	short	1911-01-01
1961	The White Rose of the Wilds	{Drama,"Short\n"}	tt0001983	f	short	1911-01-01
1962	Why He Gave Up	{Comedy,"Short\n"}	tt0001984	f	short	1911-01-01
1963	The Winds of Fate	{Drama,"Short\n"}	tt0001985	f	short	1911-01-01
1964	The Wizard and the Brigands	{"Short\n"}	tt0001986	f	short	1911-01-01
1965	A Woman Scorned	{Drama,"Short\n"}	tt0001987	f	short	1911-01-01
1966	The Woodcutter's Romance	{Drama,"Short\n"}	tt0001988	f	short	1911-01-01
1967	A Wreath of Orange Blossoms	{Romance,"Short\n"}	tt0001989	f	short	1911-01-01
1968	The Yiddisher Cowboy	{Comedy,Short,"Western\n"}	tt0001990	f	short	1911-01-01
1969	Zwei Frauen	{"\\\\N\n"}	tt0001992	f	movie	1911-01-01
1970	L'électrocuté	{"Sci-Fi\n"}	tt0001993	f	movie	1911-01-01
1971	An Actor's Romance	{Drama,Romance,"Short\n"}	tt0001994	f	short	1913-01-01
1972	Adam and Eve	{Drama,"Short\n"}	tt0001995	f	short	1912-01-01
1973	The Adventure of the Italian Model	{Drama,"Short\n"}	tt0001996	f	short	1912-01-01
1974	The Adventure of the Retired Army Colonel	{Drama,"Short\n"}	tt0001997	f	short	1912-01-01
1975	The Adventures of Lieutenant Petrosino	{"Drama\n"}	tt0001998	f	movie	1912-01-01
1976	Agaton och Fina	{Comedy,"Short\n"}	tt0001999	f	short	1912-01-01
1977	The Agitator	{Short,"Western\n"}	tt0002000	f	short	1912-01-01
1978	The Alaska-Siberian Expedition	{"Documentary\n"}	tt0002001	f	movie	1912-01-01
1979	The Alcalde's Conspiracy	{Drama,"Short\n"}	tt0002002	f	short	1912-01-01
1980	Alias Billy Sargent	{Drama,"Short\n"}	tt0002003	f	short	1912-01-01
1981	Alkali Ike Bests Broncho Billy	{Comedy,"Short\n"}	tt0002004	f	short	1912-01-01
1982	Alkali Ike Plays the Devil	{Comedy,"Short\n"}	tt0002005	f	short	1912-01-01
1983	Alkali Ike Stung!	{Comedy,"Short\n"}	tt0002006	f	short	1912-01-01
1984	Alkali Ike's Boarding House	{Comedy,"Short\n"}	tt0002007	f	short	1912-01-01
1985	Alkali Ike's Close Shave	{Comedy,"Short\n"}	tt0002008	f	short	1912-01-01
1986	Alkali Ike's Love Affair	{Comedy,Short,"Western\n"}	tt0002009	f	short	1912-01-01
1987	Alkali Ike's Motorcycle	{Comedy,"Short\n"}	tt0002010	f	short	1912-01-01
1988	Alkali Ike's Pants	{Comedy,"Short\n"}	tt0002011	f	short	1912-01-01
1989	All for Her	{Drama,Romance,"Short\n"}	tt0002012	f	short	1912-01-01
1990	All for a Girl	{Comedy,Romance,"Short\n"}	tt0002013	f	short	1912-01-01
1991	Alt for Norge	{Drama,"Short\n"}	tt0002014	f	short	1912-01-01
1992	The Altar of Death	{Drama,Short,"Western\n"}	tt0002015	f	short	1912-01-01
1993	Los amantes de Teruel	{Drama,"Short\n"}	tt0002016	f	short	1912-01-01
1994	Ambitious Butler	{Comedy,"Short\n"}	tt0002017	f	short	1912-01-01
1995	An American Invasion	{Drama,"Short\n"}	tt0002018	f	short	1912-01-01
1996	Amor de bestia	{"\\\\N\n"}	tt0002019	f	movie	1912-01-01
1997	Queen Elizabeth	{Biography,Drama,"History\n"}	tt0002020	f	short	1912-01-01
1998	But the Greatest of These Is Charity	{Drama,"Short\n"}	tt0002021	f	short	1912-01-01
1999	Anfisa	{"Drama\n"}	tt0002022	f	movie	1912-01-01
2000	The Angel and the Stranded Troupe	{Comedy,"Short\n"}	tt0002023	f	short	1912-01-01
2001	The Animal Within	{Drama,Short,"Western\n"}	tt0002024	f	short	1912-01-01
\.


--
-- Data for Name: movies_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_person (id, imdb_id, name, birth_year, death_year) FROM stdin;
1172	nm1148936	Henry Grammar	1883-01-01	\N
148	nm1272063	Danjuro Ichikawa	1838-01-01	1903-01-01
149	nm1272675	Kikugoro Onoe V	\N	\N
113	nm1333156	Mlle Barral	\N	\N
5	nm1335271	Gaston Paulin	\N	1921-01-01
105	nm1380868	Luis Mazzantini	\N	\N
33	nm1587194	Emil Skladanowsky	1866-01-01	\N
28	nm1715062	P.J.C. Janssen	1824-01-01	1907-01-01
55	nm1729239	Claude Ferdinand Von Bernard	\N	\N
115	nm1778224	Carmelli	\N	\N
116	nm1778292	Dupeyron	\N	\N
133	nm1894886	Mr. Lepard	\N	\N
134	nm1895457	Florence Williamson	\N	\N
125	nm2156608	Walter Pfeffer Dando	1852-01-01	1944-01-01
80	nm2256592	John L. Sullivan	1858-01-01	1918-01-01
40	nm2350007	Antoine Féraud	\N	\N
44	nm2350838	Andrée Lumière	1894-01-01	1918-01-01
43	nm2354154	Alphonse Winckler	1839-01-01	1925-01-01
136	nm2940072	Harold Smith	1889-01-01	1975-01-01
144	nm2940350	Dorothy Smith	1891-01-01	1964-01-01
52	nm2958402	Scott Stratton	\N	\N
53	nm3029234	Georgette Méliès	1888-01-01	1930-01-01
31	nm3691272	Ploetz	\N	\N
34	nm3692071	Delaware	\N	\N
19	nm3692297	Grunato	\N	\N
32	nm3692829	Larella	\N	\N
60	nm4007970	Alhambra Girls	\N	\N
77	nm4081458	George Siler	1846-01-01	1908-01-01
110	nm4427898	Sir Robert Ashe	\N	\N
7	nm5442200	Tamara Pappé	\N	\N
142	nm5670483	Paul Decauville	\N	\N
68	nm5718242	Ellen Daws	1867-01-01	1954-01-01
128	nm6114857	Raymond Roze	1875-01-01	1920-01-01
64	nm6170115	Jules-Eugène Legris	1862-01-01	1926-01-01
65	nm9513675	Elise de Vère	\N	\N
27	nm9653419	Suzanne Lumière	\N	\N
119	nm0002615	Siegmund Lubin	1851-01-01	1923-01-01
49	nm0005658	G.W. Bitzer	1872-01-01	1944-01-01
85	nm0005717	Fructuós Gelabert	1874-01-01	1955-01-01
36	nm0010291	Birt Acres	1854-01-01	1918-01-01
131	nm0035502	Frederick S. Armitage	1874-01-01	1933-01-01
138	nm0076800	Sarah Bernhardt	1844-01-01	1923-01-01
114	nm0076933	Bleuette Bernon	1878-01-01	1937-01-01
17	nm0085156	Alexander Black	1859-01-01	1940-01-01
93	nm0085865	J. Stuart Blackton	1875-01-01	1941-01-01
82	nm0095816	Walter R. Booth	1869-01-01	1938-01-01
79	nm0103755	William A. Brady	1863-01-01	1950-01-01
146	nm0151209	Anna Chance	1879-01-01	1943-01-01
145	nm0164281	May Clark	1885-01-01	1971-01-01
73	nm0168621	Buffalo Bill Cody	1846-01-01	1917-01-01
11	nm0179163	James J. Corbett	1866-01-01	1933-01-01
108	nm0182052	Manuel Maria da Costa Veiga	\N	\N
12	nm0183947	Peter Courtney	1867-01-01	1896-01-01
61	nm0194945	Jehanne d'Alcy	1865-01-01	1956-01-01
62	nm0234288	Aurélio da Paz dos Reis	1862-01-01	1931-01-01
100	nm0241416	Alexandre Dumas	1802-01-01	1870-01-01
30	nm0244989	Benoît Duval	1881-01-01	\N
38	nm0256651	Empress Augusta Victoria	1858-01-01	1921-01-01
84	nm0278321	Antonio Fino	\N	\N
104	nm0324473	Johann Wolfgang von Goethe	1749-01-01	1832-01-01
130	nm0335788	Charley Grapewin	1869-01-01	1956-01-01
51	nm0340719	Zane Grey	1872-01-01	1939-01-01
72	nm0349785	Alice Guy	1873-01-01	1968-01-01
3	nm0374658	William Heise	1847-01-01	1910-01-01
103	nm0378408	Cecil M. Hepworth	1873-01-01	1953-01-01
47	nm0420198	Joseph Jefferson	1829-01-01	1905-01-01
89	nm0422809	Eduardo Jimeno	\N	\N
8	nm0443482	Charles Kayser	1878-01-01	1966-01-01
107	nm0454367	King Alfonso XIII	1886-01-01	1941-01-01
101	nm0518132	Ella Lola	1883-01-01	\N
23	nm0525900	Mrs. Auguste Lumiere	1874-01-01	1963-01-01
25	nm0525908	Auguste Lumière	1862-01-01	1954-01-01
18	nm0525910	Louis Lumière	1864-01-01	1948-01-01
118	nm0555522	Arthur Marvin	1859-01-01	1911-01-01
86	nm0556371	Antonio Masia	\N	\N
88	nm0563758	Juan Mañe	\N	\N
71	nm0577734	Gaston Méliès	1852-01-01	1915-01-01
112	nm0595213	Ben Model	1962-01-01	\N
69	nm0609678	Alfred Moul	1852-01-01	1924-01-01
13	nm0653028	Fred Ott	1860-01-01	1936-01-01
9	nm0653042	John Ott	1850-01-01	1931-01-01
99	nm0674518	Charles Perrault	1628-01-01	1703-01-01
156	nm0675140	Joseph Perry	1863-01-01	1943-01-01
90	nm0677318	Mortimer Peterson	1867-01-01	1920-01-01
56	nm0684607	Francisco Pinto Moreira	\N	\N
63	nm0698645	Alexandre Promio	1868-01-01	1926-01-01
4	nm0721526	Émile Reynaud	1844-01-01	1918-01-01
127	nm0744231	Laura Rossi	\N	\N
67	nm0780534	Julie Seale	\N	\N
150	nm0793094	Tsunekichi Shibata	\N	\N
57	nm0795060	Henry Short	\N	\N
147	nm0804433	Eugen Skladanowsky	\N	\N
97	nm0807236	Albert E. Smith	1875-01-01	1958-01-01
81	nm0808310	George Albert Smith	1864-01-01	1959-01-01
66	nm0832461	Fred Storey	1861-01-01	1917-01-01
111	nm0857203	Ernest Lawrence Thayer	1863-01-01	1940-01-01
58	nm0874739	Tsar Nicholas II	1868-01-01	1918-01-01
54	nm0895515	Gabriel Veyre	1871-01-01	1936-01-01
124	nm0924893	J. Fisher White	1865-01-01	1945-01-01
35	nm0932055	James Williamson	1855-01-01	1933-01-01
151	nm1010955	Beatrice Day	\N	\N
153	nm1011210	Mr. Graham	\N	\N
152	nm1012612	Harold Graham	\N	\N
95	nm1024447	Ferdinand Gýra	1861-01-01	1933-01-01
132	nm1040375	Mr. James	\N	\N
143	nm1112850	Frederick Opper	1857-01-01	1937-01-01
26	nm9735579	Rose Lumière	\N	\N
24	nm9735581	Jeanne-Joséphine Lumière	\N	\N
207	nm1145809	Scott Marble	1847-01-01	1919-01-01
293	nm1215402	Jane Stewart	\N	\N
189	nm1215996	Brunnet	\N	\N
167	nm1304340	J.C. Buckstone	1859-01-01	1924-01-01
256	nm1428608	Lindsay Gray	1868-01-01	\N
255	nm1539443	Mrs. Hepworth	1873-01-01	1917-01-01
273	nm1563072	Georges Hatot	1876-01-01	1959-01-01
292	nm1670497	Phineas Nairs	\N	\N
294	nm1670913	George Voijere	\N	\N
291	nm1671089	Aline Boyd	\N	\N
163	nm1778194	Bretteau	\N	\N
216	nm1856940	Christian Lundsgaard	\N	\N
217	nm1857036	Scheel Vandel	1864-01-01	1918-01-01
184	nm2092030	George S. Fleming	\N	\N
300	nm2326707	Lily Haggar	1891-01-01	1973-01-01
299	nm2329855	Violet Haggar	1887-01-01	1979-01-01
302	nm2329944	Henry Haggar	1889-01-01	1945-01-01
301	nm2331275	James Haggar	1879-01-01	1925-01-01
303	nm2485827	Fred Haggar	1873-01-01	1913-01-01
231	nm3345408	Fred Farren	1874-01-01	1956-01-01
219	nm3887135	E.A. Armstrong	\N	\N
304	nm4749111	Joe Giddings	\N	\N
185	nm4905952	Germaine Serand	\N	\N
186	nm4906549	Yvonne Serand	1886-01-01	1969-01-01
232	nm5121267	Emile Houtman	\N	\N
180	nm5394591	Paul Méliès	\N	\N
259	nm8706003	May de Lavergne	\N	\N
166	nm8709803	Daniel Smith	\N	\N
225	nm9473330	Marguerite Thévenard	\N	\N
204	nm0007625	A.C. Abadie	1878-01-01	1950-01-01
312	nm0014656	Raymond Aimos	1889-01-01	1944-01-01
281	nm0016071	Juan Alarma	\N	\N
188	nm0029244	Victor André	\N	\N
178	nm0051042	Lidia Balogh	1870-01-01	1911-01-01
206	nm0055661	Justus D. Barnes	1862-01-01	1946-01-01
266	nm0063413	Ricardo de Baños	1884-01-01	1939-01-01
275	nm0065393	Denise Becker	\N	\N
238	nm0069325	Eleanor Robson Belmont	1879-01-01	1979-01-01
240	nm0085870	Paula Blackton	1881-01-01	1930-01-01
171	nm0086082	Lujza Blaha	1850-01-01	1926-01-01
272	nm0097918	Romeo Bosetti	1879-01-01	1948-01-01
224	nm0099105	Dion Boucicault	1822-01-01	1890-01-01
290	nm0140054	Joaquín Carrasco	\N	1968-01-01
199	nm0140902	Lewis Carroll	1832-01-01	1898-01-01
235	nm0172118	Alf Collins	1866-01-01	1951-01-01
243	nm0177886	Bigelow Cooper	1878-01-01	1953-01-01
269	nm0185426	Ignacio Coyne	\N	\N
308	nm0196787	Berthe Dagmar	1881-01-01	1934-01-01
226	nm0214243	André Deed	1879-01-01	1940-01-01
262	nm0236279	Arthur Conan Doyle	1859-01-01	1930-01-01
192	nm0242155	Jean-Benoît Dunckel	1969-01-01	\N
310	nm0243796	Jean Durand	1882-01-01	1946-01-01
246	nm0250480	Walter Edwin	1868-01-01	\N
265	nm0252720	El Mochuelo	\N	\N
215	nm0253298	Peter Elfelt	1866-01-01	1931-01-01
260	nm0257866	Adolphe d'Ennery	1811-01-01	1899-01-01
182	nm0260089	Line Eshrard	\N	\N
197	nm0265714	Geoffrey Faithfull	1893-01-01	1979-01-01
242	nm0292418	Jack Frawley	\N	\N
244	nm0298300	Martin Fuller	\N	\N
202	nm0302368	Donald Gallaher	1895-01-01	1961-01-01
270	nm0340020	René Gréhan	\N	\N
298	nm0353575	Walter Haggar	1880-01-01	1953-01-01
311	nm0357890	Gustave Hamilton	1871-01-01	1951-01-01
306	nm0358349	Joë Hamman	1883-01-01	1974-01-01
274	nm0381874	André Heuzé	1880-01-01	1942-01-01
314	nm0395216	E.W. Hornung	1866-01-01	1921-01-01
278	nm0401076	Victor Hugo	1802-01-01	1885-01-01
247	nm0422465	Ethel Jewett	1877-01-01	1944-01-01
176	nm0449435	Aurel Kern	1871-01-01	1928-01-01
169	nm0466448	Kornerek	\N	\N
263	nm0509478	Theodore A. Liebler Jr.	1886-01-01	1975-01-01
162	nm0509806	Jean Liézer	\N	\N
241	nm0523316	Emily Lowry	1909-01-01	1959-01-01
271	nm0537222	Léon Mathot	1886-01-01	1968-01-01
289	nm0558863	Julienne Mathieu	\N	\N
221	nm0567363	Wallace McCutcheon	1862-01-01	1918-01-01
250	nm0588295	Elizabeth Miller	\N	\N
307	nm0595321	Gaston Modot	1887-01-01	1970-01-01
282	nm0602663	Juan Morales	\N	\N
213	nm0622273	Francesca Nathansen	1864-01-01	\N
173	nm0631776	Linda Niko	1853-01-01	1905-01-01
179	nm0634629	Lucien Nonguet	1869-01-01	1955-01-01
267	nm0657268	Miguel de Palacios	1863-01-01	1920-01-01
283	nm0661362	José Parera	\N	\N
175	nm0670740	Gyula Pekár	1867-01-01	1937-01-01
268	nm0675388	Guillermo Perrín	1875-01-01	1923-01-01
284	nm0684029	José Pineda	\N	\N
309	nm0719480	Joaquim Renez	\N	\N
285	nm0722712	Antonio Riba	\N	\N
296	nm0728289	William S. Rising	1852-01-01	1930-01-01
218	nm0742777	Joe Rosenthal	1864-01-01	1946-01-01
248	nm0789748	Harold M. Shaw	1877-01-01	1926-01-01
249	nm0794919	Dorothy G. Shore	\N	\N
208	nm0807466	Blair Smith	1859-01-01	\N
257	nm0809910	Sebastian Smith	1869-01-01	1948-01-01
161	nm0815907	Julie Souplet	\N	\N
198	nm0832948	Percy Stow	1876-01-01	1919-01-01
212	nm0842605	Jonathan Swift	1667-01-01	1745-01-01
239	nm0850483	Booth Tarkington	1869-01-01	1946-01-01
222	nm0891119	Vivian Vaughan	1902-01-01	1966-01-01
190	nm0894523	Jules Verne	1828-01-01	1905-01-01
288	nm0899837	Carmen Vital	\N	\N
276	nm0903455	Henry Vorins	\N	\N
191	nm0920229	H.G. Wells	1866-01-01	1946-01-01
183	nm0925513	Thomas White	1898-01-01	\N
164	nm0954087	Ferdinand Zecca	1864-01-01	1947-01-01
174	nm0958169	Béla Zsitkovszky	1868-01-01	1930-01-01
201	nm10102653	Alfred Collins	\N	\N
196	nm1012587	Blair	\N	\N
165	nm1089829	Rachel Gillet	\N	\N
251	nm1096358	Gladys Du Pell	1893-01-01	\N
423	nm1135106	Filoteo Alberini	1865-01-01	1937-01-01
439	nm1209346	Castelo Branco	\N	\N
432	nm1320386	E. Vivian	\N	\N
396	nm1323543	Christiane Mandelys	1873-01-01	1957-01-01
1717	nm1590986	Kate Claxton	1850-01-01	1924-01-01
347	nm1669846	N.B. Clarke	\N	\N
344	nm1670010	W.R. Floyd	\N	\N
348	nm1670421	J. McDovall	\N	\N
346	nm1675211	E.M. Leslie	\N	\N
438	nm1726962	Acacio Antunes	\N	\N
436	nm1728086	Thomas Vieira	\N	\N
433	nm1729031	Lucinda do Carmo	\N	\N
397	nm1759558	Gilberte Sergy	\N	1924-01-01
354	nm1845806	Parly Petersen	1889-01-01	1965-01-01
406	nm1917268	Witold d'Antone	\N	\N
341	nm2004235	Kitty O'Neil	\N	\N
458	nm2140812	Thurston Harris	\N	\N
401	nm2160063	Valdemar Petersen	\N	\N
365	nm2421834	Eric Chapus	\N	\N
360	nm3002376	Norman Campbell	\N	\N
440	nm3071427	Jim Gerald	\N	\N
370	nm3763070	Cardoso	\N	\N
410	nm4572288	William Thomsen	\N	\N
353	nm4824599	Max Freitag	\N	\N
383	nm5216764	Inger Melchior	\N	\N
323	nm6758605	Albert Kutzner	\N	\N
366	nm9335353	Manuel	\N	\N
356	nm9551905	Victor Darlay	\N	\N
428	nm0011370	Stella Adams	1883-01-01	1961-01-01
380	nm0022607	Carl Alstrup	1877-01-01	1942-01-01
326	nm0023121	Hjalmar Alvar	1877-01-01	1940-01-01
404	nm0026153	Hans Christian Andersen	1805-01-01	1875-01-01
460	nm0059578	Emilia Baró	1882-01-01	1964-01-01
389	nm0078116	Francesca Bertini	1892-01-01	1985-01-01
429	nm0091767	Francis Boggs	1870-01-01	1911-01-01
371	nm0092290	Curt Bois	1901-01-01	1991-01-01
425	nm0098376	Hobart Bosworth	1867-01-01	1943-01-01
333	nm0106151	Jack Brawn	1869-01-01	1943-01-01
419	nm0143332	Maria Caserini	\N	1969-01-01
420	nm0143333	Mario Caserini	1874-01-01	1920-01-01
446	nm0167619	Byers Coates	\N	\N
399	nm0180466	Arthur Cornwall	\N	\N
400	nm0180492	George Cornwell	\N	\N
355	nm0182945	Victor de Cottens	1862-01-01	1956-01-01
430	nm0189000	James A. Crosby	1875-01-01	1949-01-01
417	nm0194088	Narciso Cuyàs	\N	\N
448	nm0218953	Rhoda Dendron	1884-01-01	1970-01-01
466	nm0226992	Edward Dillon	1879-01-01	1933-01-01
457	nm0229900	F.A. Dobson	1866-01-01	1948-01-01
443	nm0240418	William Duff	\N	\N
470	nm0250676	Gladys Egan	1900-01-01	1985-01-01
456	nm0257788	Frans Engström	1873-01-01	1940-01-01
435	nm0272889	Nascimento Fernandes	1881-01-01	1955-01-01
437	nm0274368	Lino Ferreira	1884-01-01	1939-01-01
386	nm0305591	Angel García Cardona	\N	\N
372	nm0310155	Gene Gauntier	1885-01-01	1966-01-01
395	nm0332182	Henri Gouget	\N	\N
319	nm0333175	Axel Graatkjær	1885-01-01	1969-01-01
447	nm0346387	Arthur Guest	1857-01-01	1937-01-01
461	nm0347565	Enrique Guitart padre	\N	\N
462	nm0347571	Trini Guitart	\N	\N
392	nm0366008	Robert Harron	1893-01-01	1920-01-01
374	nm0366586	William S. Hart	1864-01-01	1946-01-01
349	nm0380965	Jean Hersholt	1886-01-01	1956-01-01
387	nm0400103	Ángel Huerta	\N	\N
471	nm0409390	Charles Inslee	1870-01-01	1922-01-01
317	nm0422149	Margrete Jespersen	1881-01-01	1947-01-01
415	nm0422930	Enrique Jiménez	\N	\N
363	nm0425854	Millard Johnson	1871-01-01	\N
449	nm0453315	Eero Kilpi	1882-01-01	1954-01-01
320	nm0470250	Robert Krause	\N	\N
318	nm0488932	Viggo Larsen	1880-01-01	1957-01-01
434	nm0495051	Carlos Leal	\N	\N
464	nm0520648	María Lorente	\N	\N
409	nm0525876	Knud Lumbye	1875-01-01	1938-01-01
335	nm0526168	Gustav Lund	\N	\N
334	nm0565560	Winsor McCay	1871-01-01	1934-01-01
441	nm0581353	George Merriman	1879-01-01	1934-01-01
431	nm0599781	Frank Montgomery	1870-01-01	1944-01-01
352	nm0601061	Clement Moore	1779-01-01	1863-01-01
373	nm0604384	Harry T. Morey	1873-01-01	1936-01-01
390	nm0623866	Clara Nebelong	1881-01-01	1943-01-01
328	nm0630737	Arnold Richard Nielsen	1877-01-01	1951-01-01
376	nm0646058	Sidney Olcott	1873-01-01	1949-01-01
384	nm0647719	Lauritz Olsen	1872-01-01	1955-01-01
325	nm0647763	Ole Olsen	1863-01-01	1943-01-01
327	nm0676941	Robert Storm Petersen	1882-01-01	1949-01-01
407	nm0691994	Franz Porten	1859-01-01	1932-01-01
322	nm0691996	Rosa Porten	1884-01-01	1972-01-01
459	nm0693275	Gertie Potter	\N	\N
450	nm0700930	Teuvo Puro	1884-01-01	1956-01-01
338	nm0710362	William V. Ranous	1857-01-01	1915-01-01
452	nm0712213	Alex Rautio	1857-01-01	1916-01-01
315	nm0734207	William T. Rock	1853-01-01	1916-01-01
375	nm0745457	Herman Rottger	1881-01-01	1917-01-01
427	nm0764346	Tom Santschi	1878-01-01	1931-01-01
379	nm0773944	Max Schneider	1875-01-01	\N
316	nm0807235	Albert A. Smith	\N	\N
468	nm0813603	Harry Solter	1873-01-01	1920-01-01
453	nm0817086	Louis Sparre	1863-01-01	1964-01-01
455	nm0836650	K.E. Ståhlberg	1862-01-01	1919-01-01
361	nm0846879	Charles Tait	1868-01-01	1933-01-01
357	nm0846887	Elizabeth Tait	1879-01-01	\N
364	nm0846911	Nevin Tait	1876-01-01	1961-01-01
368	nm0878035	Ben Turpin	1869-01-01	1940-01-01
388	nm0878494	Mark Twain	1835-01-01	1910-01-01
442	nm0888988	Lance Vane	1884-01-01	1942-01-01
422	nm0892614	Gaston Velle	1872-01-01	1948-01-01
378	nm0908753	Lew Wallace	1827-01-01	1905-01-01
416	nm0944584	Margarita Xirgu	1888-01-01	1969-01-01
331	nm1050849	José Yepes	\N	\N
500	nm11698541	Léon Laffitte	\N	\N
473	nm1265835	Mrs. George Gebhardt	\N	\N
505	nm1266490	Wallace McCutcheon Jr.	1880-01-01	1928-01-01
626	nm1267460	Einar Zangenberg	1882-01-01	1918-01-01
517	nm1458507	Victor Fabian	1869-01-01	1922-01-01
502	nm1562759	Frères Lafitte	\N	\N
234	nm1597962	Anatole Thiberville	\N	\N
542	nm1866776	Mr. Barry	\N	\N
615	nm1868129	Jinnie Frazer	\N	\N
600	nm1972946	David Drazin	\N	\N
625	nm2112876	Julie Henriksen	1872-01-01	1949-01-01
560	nm2924919	Wallace Illington	\N	\N
622	nm6440362	Mlle. Bodson	\N	\N
493	nm0006269	Camille Saint-Saëns	1835-01-01	1921-01-01
603	nm0012317	John G. Adolfi	1881-01-01	1933-01-01
591	nm0012505	Lorenza Adriá	\N	\N
511	nm0037789	Julia Arthur	1868-01-01	1950-01-01
479	nm0038260	L. As	\N	\N
620	nm0040750	Josephine Atkinson	1882-01-01	1954-01-01
504	nm0041669	Florence Auer	1880-01-01	1962-01-01
508	nm0054884	Florence Barker	1891-01-01	1913-01-01
506	nm0076202	Dorothy Bernard	1890-01-01	1955-01-01
536	nm0086982	Luis Blanca	\N	\N
554	nm0097421	Jaime Borrás	\N	\N
525	nm0097743	Alberto Bosch	\N	\N
612	nm0102858	Clara T. Bracy	1848-01-01	1941-01-01
515	nm0115524	Kate Bruce	1860-01-01	1946-01-01
492	nm0119138	Kenean Buel	1880-01-01	1948-01-01
558	nm0122665	Frank Burns	\N	\N
498	nm0130633	André Calmettes	1861-01-01	1942-01-01
607	nm0137414	Will Carleton	1845-01-01	1912-01-01
587	nm0142567	Louise Carver	1869-01-01	1956-01-01
547	nm0148859	Miguel de Cervantes y Saavedra	1547-01-01	1616-01-01
488	nm0152323	Charles Chapman	1877-01-01	1944-01-01
592	nm0163468	José Claramunt	\N	\N
595	nm0168503	José María Codina	\N	1936-01-01
521	nm0169009	James Cogan	\N	1921-01-01
478	nm0173774	Luca Comerio	1878-01-01	1940-01-01
522	nm0173994	John R. Cumpson	1866-01-01	1913-01-01
611	nm0191885	Dwight Cummins	1902-01-01	1985-01-01
537	nm0198154	Fidel Dalmau	\N	\N
527	nm0201558	Daroqui	\N	\N
477	nm0209738	Giuseppe de Liguoro	1869-01-01	1944-01-01
534	nm0214651	Adele DeGarde	1899-01-01	1966-01-01
573	nm0227021	John T. Dillon	1876-01-01	1937-01-01
602	nm0227919	Hector Dion	1881-01-01	1943-01-01
550	nm0271357	Josep Feliú i Codina	1845-01-01	1893-01-01
579	nm0277411	Flora Finch	1867-01-01	1940-01-01
548	nm0302647	Señor Gallart	\N	\N
571	nm0303066	Mario Gallo	1878-01-01	1945-01-01
596	nm0312148	José María Gelabert	\N	\N
598	nm0330352	Julia Swayne Gordon	1878-01-01	1933-01-01
480	nm0346090	Señora Guerra	\N	\N
528	nm0346933	Luis Guilemany	\N	\N
578	nm0366610	Bret Harte	1836-01-01	1902-01-01
581	nm0373341	Guy Hedlund	1884-01-01	1964-01-01
580	nm0376829	Anita Hendrie	1863-01-01	1940-01-01
541	nm0384754	Violette Hill	\N	\N
624	nm0390479	Holger-Madsen	1878-01-01	1943-01-01
627	nm0393524	Thomas Hood	\N	\N
604	nm0408433	Ralph Ince	1887-01-01	1937-01-01
617	nm0408436	Thomas H. Ince	1880-01-01	1924-01-01
489	nm0448682	Charles Kent	1852-01-01	1923-01-01
501	nm0480825	Paul Laffitte	1864-01-01	1949-01-01
499	nm0491819	Henri Lavedan	1859-01-01	1940-01-01
474	nm0492757	Florence Lawrence	1886-01-01	1938-01-01
503	nm0502701	Marion Leonard	1881-01-01	1956-01-01
594	nm0515873	María Llorente	\N	\N
572	nm0524306	Wilfred Lucas	1871-01-01	1940-01-01
535	nm0534221	Jeanie Macpherson	1886-01-01	1946-01-01
538	nm0549760	José Marques	\N	\N
552	nm0550220	Alberto Marro	1878-01-01	1956-01-01
529	nm0554499	Juan Martí	\N	\N
523	nm0568282	Claire McDowell	1877-01-01	1966-01-01
481	nm0582380	Metas	\N	\N
483	nm0592634	María Miró	\N	\N
576	nm0601698	Owen Moore	1884-01-01	1939-01-01
597	nm0613214	L. Munsal	\N	\N
543	nm0615155	Marie Murray	1882-01-01	1967-01-01
590	nm0634472	Alejandro Nolla	1881-01-01	1944-01-01
519	nm0644728	Charles Ogle	1865-01-01	1940-01-01
484	nm0651029	P. Ortin	\N	\N
540	nm0675544	Thomas Persons	1880-01-01	\N
491	nm0680887	William Phillips	\N	\N
539	nm0687752	Antonio Plácido	\N	\N
574	nm0697563	Antonio Primo	\N	\N
520	nm0697944	Herbert Prior	1867-01-01	1954-01-01
530	nm0699710	José Pubill	\N	\N
496	nm0732264	Gabrielle Robinne	1886-01-01	1980-01-01
551	nm0735618	Cecilio Rodríguez de la Vega	\N	\N
568	nm0742958	Salvador Rosich	1884-01-01	1920-01-01
605	nm0772596	Erik Schmedes	1866-01-01	1931-01-01
510	nm0784407	Mack Sennett	1880-01-01	1960-01-01
584	nm0790360	William Shea	1856-01-01	1918-01-01
549	nm0802950	Manuel Sirvent	\N	\N
485	nm0802955	Vicente Sirvent	\N	\N
509	nm0832840	Mabel Stoughton	\N	\N
613	nm0849803	John Tansey	1901-01-01	1971-01-01
475	nm0855139	Alfred Lord Tennyson	1809-01-01	1892-01-01
582	nm0870831	Antonio de Padua Tramullas	1880-01-01	1961-01-01
556	nm0877550	Florence Turner	1885-01-01	1946-01-01
561	nm0877783	Otis Turner	1862-01-01	1918-01-01
482	nm0900293	José Vives	\N	\N
586	nm0902731	Ritter von Mosenthal	1821-01-01	1877-01-01
575	nm0922044	Dorothy West	1891-01-01	1980-01-01
514	nm0926514	John Greenleaf Whittier	1807-01-01	1892-01-01
559	nm0933446	George E. Wilson	\N	\N
476	nm0940488	Frank E. Woods	1860-01-01	1939-01-01
553	nm0957979	José Zorrilla	1817-01-01	1893-01-01
728	nm1138324	William Howard Taft	1857-01-01	1930-01-01
42	nm1151424	Félicien Trewey	1848-01-01	1920-01-01
716	nm1234590	Paul Thiemann	\N	\N
632	nm1263330	Lydia De Roberti	\N	\N
634	nm1264018	Mirra Principi	1871-01-01	\N
757	nm1322270	Loma Besserer	\N	\N
677	nm1400009	William A. Russell	1878-01-01	1914-01-01
774	nm1703900	Lucien Boyer	1876-01-01	1942-01-01
667	nm1814364	Kai Voigt	1894-01-01	1946-01-01
723	nm1902148	Alfred Duskes	\N	\N
708	nm2155522	G. Benesh	\N	\N
717	nm2157518	Antonio Serrano	\N	\N
782	nm2528881	Aage Lorentzen	1880-01-01	1955-01-01
744	nm2681099	José María Pino Suárez	1869-01-01	1913-01-01
691	nm3412368	Edmund Østerby	1876-01-01	1962-01-01
640	nm4535948	The White Coons	\N	\N
738	nm4866513	Aleksey Muravin	1883-01-01	\N
742	nm4893143	Paul-Ernst Timan	\N	\N
735	nm5188470	Carl Johan Lundkvist	1875-01-01	1915-01-01
664	nm5227669	Gudrun Kjerulf	1882-01-01	1918-01-01
730	nm5289318	O. Poulsen	\N	\N
731	nm5289829	Hr. Andreasen	\N	\N
783	nm5600037	A.C. Meyer	\N	\N
706	nm0017074	Ernesto de Albuquerque	1883-01-01	1940-01-01
718	nm0023107	Hermanos Alva	\N	\N
693	nm0041858	Edwin August	1883-01-01	1964-01-01
766	nm0060238	Russell Bassett	1845-01-01	1918-01-01
736	nm0064415	William Beaudine	1892-01-01	1970-01-01
777	nm0066941	Ernst Behmer	1875-01-01	1938-01-01
663	nm0082349	Svend Bille	1890-01-01	1973-01-01
689	nm0088881	August Blom	1869-01-01	1947-01-01
721	nm0093361	Heinrich Bolten-Baeckers	1871-01-01	1938-01-01
698	nm0097769	José María Bosch	\N	\N
749	nm0102510	Bozo	\N	\N
638	nm0104856	Aage Brandt	1889-01-01	1970-01-01
754	nm0115162	Ethel Browning	1877-01-01	1965-01-01
685	nm0125164	William J. Butler	1860-01-01	1927-01-01
645	nm0125509	Artur Buxens	\N	\N
657	nm0145909	Juan Catalá	\N	\N
763	nm0160280	Al Christie	1881-01-01	1951-01-01
676	nm0161366	Fred Church	1889-01-01	1983-01-01
778	nm0170183	Victor Colani	1895-01-01	1957-01-01
668	nm0171586	José Coll	\N	\N
760	nm0176699	Jack Conway	1887-01-01	1952-01-01
697	nm0185803	Charles Craig	1877-01-01	1972-01-01
669	nm0188943	Juan Cros	\N	\N
771	nm0206801	Charles T. Dazey	1855-01-01	1938-01-01
665	nm0234670	Carl Schenstrøm	1881-01-01	1942-01-01
727	nm0246715	Porfirio Díaz	1830-01-01	1915-01-01
725	nm0246950	Kurt Dürnhöfer	1886-01-01	1958-01-01
729	nm0253652	George Eliot	1819-01-01	1880-01-01
637	nm0262757	Frank Evans	1849-01-01	1934-01-01
764	nm0265289	Milton J. Fahrney	1872-01-01	1941-01-01
767	nm0285947	Eugenie Forde	1879-01-01	1940-01-01
688	nm0288616	Frank Powell	\N	\N
745	nm0304098	Abel Gance	1889-01-01	1981-01-01
670	nm0317715	Antonio Gil Varela 'Varillas'	1895-01-01	1937-01-01
713	nm0327201	Vasili Goncharov	1861-01-01	1915-01-01
750	nm0347566	Enrique Guitart	1909-01-01	1999-01-01
707	nm0354803	Edith Haldeman	1905-01-01	1984-01-01
648	nm0368434	Karl Hasselmann	1883-01-01	1966-01-01
699	nm0376442	Grace Henderson	1860-01-01	1944-01-01
768	nm0377958	O. Henry	1862-01-01	1910-01-01
732	nm0386036	Carl Hintz	1869-01-01	1926-01-01
775	nm0401967	William Humphrey	1863-01-01	1942-01-01
702	nm0455237	Rose King	1884-01-01	1967-01-01
720	nm0464189	Klara Kollent	\N	\N
733	nm0511080	Schiøler Linck	1878-01-01	1952-01-01
683	nm0519310	Stephanie Longfellow	1882-01-01	\N
652	nm0526190	Jørgen Lund	1873-01-01	1941-01-01
734	nm0535230	Mads Anton Madsen	1880-01-01	1968-01-01
631	nm0535957	Luigi Maggi	1867-01-01	1946-01-01
671	nm0557471	Masso	\N	\N
703	nm0581499	Violet Mersereau	1892-01-01	1975-01-01
646	nm0587097	David Miles	1871-01-01	1915-01-01
678	nm0607104	Chick Morrison	1878-01-01	1924-01-01
679	nm0607273	Pete Morrison	1890-01-01	1973-01-01
633	nm0610618	Umberto Mozzato	1879-01-01	1947-01-01
776	nm0612348	Eugene Mullin	1894-01-01	1967-01-01
700	nm0635805	Frank Norris	1870-01-01	1902-01-01
675	nm0639631	John B. O'Brien	1884-01-01	1936-01-01
635	nm0648372	Roberto Omegna	1876-01-01	1948-01-01
724	nm0667386	Charles Paulus	\N	\N
746	nm0684773	Elith Pio	1887-01-01	1983-01-01
739	nm0698839	Yakov Protazanov	1881-01-01	1945-01-01
658	nm0703545	Ana Quijada	\N	\N
696	nm0704334	Billy Quirk	1873-01-01	1926-01-01
758	nm0730386	Jess Robbins	1886-01-01	1973-01-01
650	nm0762935	Emilie Sannom	1886-01-01	1931-01-01
654	nm0776198	Axel Schultz	1890-01-01	1974-01-01
781	nm0804632	Franz Skondrup	1874-01-01	1941-01-01
709	nm0805569	A. Slavin	\N	\N
701	nm0808571	James Smith	1892-01-01	1975-01-01
753	nm0819384	Cecil Spooner	1875-01-01	1953-01-01
695	nm0842239	Blanche Sweet	1896-01-01	1986-01-01
705	nm0851633	João Tavares	1883-01-01	1971-01-01
714	nm0866239	Aleksei Tolstoy	1817-01-01	1875-01-01
651	nm0878467	Emanuel Tvede	1868-01-01	1910-01-01
710	nm0882643	Yelizaveta Uvarova	\N	\N
673	nm0897388	José Vilar	\N	\N
662	nm0897441	Ernesto Vilches	1879-01-01	1954-01-01
747	nm0919469	Poul Welander	1879-01-01	1942-01-01
690	nm0937628	Sofus Wolder	1871-01-01	1914-01-01
741	nm10094537	Fridrikh Reyngardt	\N	\N
644	nm1013170	W. Chrystie Miller	1843-01-01	1922-01-01
712	nm1033426	Nikolai Vekov	1870-01-01	\N
680	nm1096012	Sam Cunningham	\N	\N
681	nm1096199	Joseph Dennis	\N	\N
682	nm1097174	Harry Hartzell	\N	\N
1741	nm1155556	Ralph Kennedy	\N	\N
857	nm1263721	Bernardine Prissi Leist	\N	\N
794	nm1301649	Ettore Pesci	\N	\N
809	nm1333629	Amélie de Pouzols	\N	\N
801	nm1352982	Min Johnson	\N	\N
879	nm1355849	Bessie McCoy	1884-01-01	1931-01-01
814	nm1779176	Mary Brunel	\N	\N
806	nm1779686	Madeleine Sézanne	\N	\N
829	nm2932070	Erik Winther	1884-01-01	1946-01-01
866	nm2938053	Tommy Footit	\N	\N
790	nm4117830	Charles Foley	1861-01-01	1956-01-01
910	nm4330489	Jambon	\N	\N
869	nm5217890	Kaj Rasmussen	1885-01-01	1954-01-01
883	nm0003425	Asta Nielsen	1881-01-01	1972-01-01
802	nm0010017	Walter Ackerman	1881-01-01	1938-01-01
815	nm0024344	Pitje Ambreville	\N	\N
909	nm0029253	Henri Andréani	1877-01-01	1936-01-01
807	nm0045867	André Bacqué	1880-01-01	1945-01-01
893	nm0064953	Philip Bech	1869-01-01	1928-01-01
816	nm0077702	Berryer	\N	\N
824	nm0079813	William Bewer	1867-01-01	1965-01-01
894	nm0085066	Aage Bjørnbak	1875-01-01	1913-01-01
838	nm0094801	Mario Bonnard	1889-01-01	1965-01-01
891	nm0098089	Yale Boss	1899-01-01	1977-01-01
856	nm0112898	Robert Brower	1850-01-01	1934-01-01
840	nm0115203	Robert Browning	1812-01-01	1889-01-01
792	nm0135493	Dante Cappelli	\N	\N
923	nm0138771	Augustus Carney	1870-01-01	1920-01-01
912	nm0154988	Jeanne Cheirel	1869-01-01	1934-01-01
940	nm0167144	Dark Cloud	1861-01-01	1918-01-01
895	nm0169878	Alfred Cohn	1867-01-01	1932-01-01
875	nm0178934	François Coppée	1842-01-01	1908-01-01
804	nm0182557	Helene Costello	1906-01-01	1957-01-01
808	nm0195544	René d'Auchy	\N	\N
888	nm0203200	Hjalmar Davidsen	1879-01-01	1958-01-01
798	nm0211191	Charles de Rochefort	1879-01-01	1952-01-01
890	nm0225835	Hulda Didrichsen	1872-01-01	1961-01-01
834	nm0232370	Cesare Dondine	\N	\N
787	nm0243918	José Durany	\N	\N
841	nm0264710	Fabienne Fabrèges	1889-01-01	\N
811	nm0275421	Louis Feuillade	1873-01-01	1925-01-01
918	nm0275943	Gladys Field	1889-01-01	1920-01-01
865	nm0285242	George Footit	1864-01-01	1921-01-01
925	nm0285643	Francis Ford	1881-01-01	1953-01-01
896	nm0299757	Aage Fønss	1887-01-01	1976-01-01
887	nm0300487	Urban Gad	1879-01-01	1947-01-01
902	nm0306604	Aage Garde	1876-01-01	1955-01-01
813	nm0307872	Robert-Jules Garnier	1883-01-01	1958-01-01
882	nm0334918	Francis J. Grandon	1879-01-01	1929-01-01
928	nm0354790	Bert Haldane	1867-01-01	1937-01-01
917	nm0355582	Franklyn Hall	1886-01-01	\N
897	nm0375839	Gunnar Helsengreen	1880-01-01	1939-01-01
873	nm0383528	Percy Higginson	1878-01-01	1940-01-01
929	nm0383660	H.R. Hignett	1870-01-01	1959-01-01
927	nm0388062	Earl Hodge	\N	\N
922	nm0430865	Margaret Joslin	1883-01-01	1956-01-01
876	nm0453059	Joseph Kilgour	1863-01-01	1933-01-01
889	nm0511155	Alfred Lind	1879-01-01	1959-01-01
791	nm0520524	André de Lorde	1871-01-01	1933-01-01
920	nm0533615	Arthur Mackley	1865-01-01	1926-01-01
904	nm0539049	Peter Malberg	1887-01-01	1965-01-01
842	nm0547329	Jeanne Marie-Laurent	1877-01-01	1964-01-01
843	nm0547928	Marc Mario	\N	\N
858	nm0581683	Bannister Merwin	1873-01-01	1922-01-01
850	nm0583207	Johannes Meyer	1884-01-01	1972-01-01
939	nm0594291	Tom Mix	1880-01-01	1940-01-01
800	nm0596942	Molière	1622-01-01	1673-01-01
916	nm0605942	Camille de Morlhon	1869-01-01	1952-01-01
932	nm0615150	Margaret Murray	1868-01-01	1947-01-01
864	nm0621051	Stacia Napierkowska	1886-01-01	1945-01-01
805	nm0623817	Hazel Neason	1891-01-01	1920-01-01
905	nm0627140	Victor Neumann	1852-01-01	1924-01-01
911	nm0649211	Frank Opperman	1861-01-01	1922-01-01
830	nm0652898	Elita Proctor Otis	1851-01-01	1927-01-01
936	nm0656293	Norma Page	\N	\N
793	nm0658775	Amleto Palormi	\N	\N
810	nm0674600	Léonce Perret	1880-01-01	1935-01-01
860	nm0676645	Madison C. Peters	1858-01-01	1918-01-01
837	nm0679086	Angelo Pezzaglia	1855-01-01	1915-01-01
820	nm0680383	Edwin R. Phillips	1872-01-01	1915-01-01
848	nm0681931	Lottie Pickford	1895-01-01	1936-01-01
921	nm0693055	Victor Potel	1889-01-01	1947-01-01
885	nm0720632	Poul Reumert	1883-01-01	1968-01-01
938	nm0726585	Edward Rigby	1879-01-01	1951-01-01
900	nm0736379	Jenny Roelsgaard	1878-01-01	1936-01-01
914	nm0756543	Georges Saillard	1877-01-01	1967-01-01
817	nm0767008	Mademoiselle Saunières	\N	\N
901	nm0772788	Aage Schmidt	1885-01-01	1949-01-01
919	nm0789632	Brinsley Shaw	1876-01-01	1931-01-01
859	nm0791017	Edward Sheldon	1886-01-01	1946-01-01
847	nm0808828	Joseph Smith	1878-01-01	1932-01-01
846	nm0814825	William Sorelle	1877-01-01	1944-01-01
872	nm0826298	Francisco Stella	\N	\N
870	nm0829044	Robert Louis Stevenson	1850-01-01	1894-01-01
942	nm0848232	Norma Talmadge	1894-01-01	1957-01-01
789	nm0848502	Manuel Tamayo y Baus	1829-01-01	1898-01-01
924	nm0865178	Harry Todd	1863-01-01	1935-01-01
849	nm0866243	Lev Tolstoy	1828-01-01	1910-01-01
831	nm0909639	Frank Walsh	1860-01-01	1932-01-01
931	nm0910105	Olive Walter	1898-01-01	1961-01-01
863	nm0921980	Charles West	1885-01-01	1943-01-01
880	nm0923594	Leopold Wharton	1870-01-01	1927-01-01
853	nm0927689	Agnes Thorberg Wieth	1886-01-01	1981-01-01
892	nm0930198	C.J. Williams	1858-01-01	1945-01-01
855	nm0949403	Clara Kimball Young	1890-01-01	1960-01-01
854	nm0949648	James Young	1872-01-01	1948-01-01
948	nm1263982	Madame Pilar-Morin	\N	\N
1060	nm1266474	Axel Mattsson	1887-01-01	1937-01-01
1034	nm1305944	Charles P. Müller	\N	\N
1022	nm1333904	Marcelle Fleury	\N	\N
1018	nm1334821	Maiapolska	\N	\N
995	nm1364406	Otto Rung	1874-01-01	1945-01-01
1048	nm1396754	Dick Scott	\N	\N
969	nm1397726	Neva Don Carlos	1889-01-01	\N
1049	nm1399399	J. Travers	\N	\N
970	nm1403103	Sophie Osborn	\N	\N
1040	nm1529472	Donald Sosin	1951-01-01	\N
1260	nm1616439	Tony Bulandra	\N	\N
1051	nm1838546	Charles Penn	\N	\N
1080	nm1993094	Ellen Diedrich	\N	\N
951	nm2086836	Elence da Comp. do Teatro Gymnasio	\N	\N
1095	nm2552457	A. James Gee	1878-01-01	1970-01-01
1027	nm3550424	William Clarence Rowe	\N	\N
991	nm5114190	Gyrithe Hansen	\N	\N
1010	nm5222796	Ludvig Nathansen	1884-01-01	1949-01-01
1011	nm5600414	Christian Nobel	\N	\N
1012	nm5600665	Hr. Pederstrup	\N	\N
976	nm0026474	C.E. Anderson	1882-01-01	1956-01-01
1047	nm0030805	Annegrethe Antonsen	1855-01-01	1930-01-01
1058	nm0036298	Carlos Arniches	1866-01-01	1943-01-01
997	nm0049370	Víctor Balaguer	\N	\N
1068	nm0055011	William Barker	1868-01-01	1951-01-01
1030	nm0063379	Ugo Bazzini	\N	\N
985	nm0078338	Vedah Bertram	1891-01-01	1912-01-01
990	nm0085877	Carlyle Blackwell	1884-01-01	1955-01-01
1085	nm0108049	Beta Breuil	1876-01-01	\N
1084	nm0120544	John Bunny	1863-01-01	1915-01-01
1075	nm0120581	S. Walter Bunting	\N	\N
959	nm0128633	Lily Cahill	1885-01-01	1955-01-01
1076	nm0132692	Madge Campbell	1885-01-01	1977-01-01
950	nm0136615	António Cardoso	\N	\N
1035	nm0137288	Renée Carl	1875-01-01	1954-01-01
986	nm0143096	Alberto Casañal	\N	\N
1009	nm0143865	Karen Caspersen	1890-01-01	1941-01-01
1004	nm0178270	Miriam Cooper	1891-01-01	1976-01-01
954	nm0182214	Júlio Costa	\N	\N
1044	nm0183115	Lucy Cotton	1895-01-01	1948-01-01
1003	nm0192062	Grace Cunard	1893-01-01	1967-01-01
1024	nm0195766	Paul d'Ivoi	1856-01-01	1915-01-01
963	nm0200060	Phyllis Daniels	1874-01-01	1959-01-01
984	nm0216066	Charles Delac	1885-01-01	1965-01-01
1021	nm0217963	Jeanne Delvair	1877-01-01	1949-01-01
1072	nm0221142	Henri Desfontaines	1876-01-01	1931-01-01
1092	nm0271679	Mathilde Felumb Friis	1871-01-01	1945-01-01
953	nm0313043	Jorge Gentil	\N	\N
1055	nm0325448	Joseph A. Golden	\N	1942-01-01
1016	nm0332028	Ellen Gottschalch	1894-01-01	1981-01-01
946	nm0337033	Joseph Graybill	1887-01-01	1913-01-01
1069	nm0344930	Jacques Grétillat	1885-01-01	1950-01-01
1078	nm0355555	Emmett C. Hall	1882-01-01	1956-01-01
981	nm0363465	Jean Chameroy	\N	\N
1097	nm0366742	Pat Hartigan	1881-01-01	1951-01-01
1077	nm0369839	Maie B. Havey	1889-01-01	1971-01-01
1015	nm0373851	Johan Ludvig Heiberg	1791-01-01	1860-01-01
1017	nm0375840	Martha Helsengreen	1882-01-01	1938-01-01
1007	nm0391508	Holger Holm	1879-01-01	1916-01-01
1059	nm0413240	José Jackson Veyán	\N	\N
1025	nm0415241	Jean Jacquinet	\N	\N
1026	nm0431484	Alice Joyce	1890-01-01	1955-01-01
1063	nm0478475	Ella La Cour	1854-01-01	1935-01-01
967	nm0499883	Henry Lehrman	1886-01-01	1946-01-01
1082	nm0500580	Bernardine R. Leist	\N	\N
944	nm0510394	Gordon W. Lillie	1860-01-01	1942-01-01
987	nm0520644	Juan José Lorente	\N	\N
958	nm0537556	Charles Hill Mailes	1870-01-01	1937-01-01
999	nm0539047	Henrik Malberg	1873-01-01	1958-01-01
1043	nm0567615	J. McDonagh	\N	\N
1028	nm0577654	George Melford	1877-01-01	1961-01-01
964	nm0597995	William V. Mong	1875-01-01	1940-01-01
1002	nm0601556	Marcia Moore	1891-01-01	1920-01-01
978	nm0620586	Louis Nalpas	\N	\N
1087	nm0630818	H.C. Nielsen	1880-01-01	1941-01-01
1094	nm0630993	Søren Nielsen	1853-01-01	1922-01-01
989	nm0655877	Antonio de Padua	\N	\N
1013	nm0676780	Carl Petersen	1870-01-01	1953-01-01
992	nm0690702	Clara Pontoppidan	1883-01-01	1975-01-01
983	nm0693516	Henri Pouctal	1860-01-01	1922-01-01
994	nm0693698	Johannes Poulsen	1881-01-01	1938-01-01
957	nm0696138	Vivian Prescott	\N	\N
972	nm0698157	Suzanne Privat	\N	\N
998	nm0699637	Valdemar Psilander	1884-01-01	1917-01-01
961	nm0713223	Charles Raymond	\N	1930-01-01
1052	nm0717281	Hal Reid	1862-01-01	1920-01-01
1073	nm0733176	W.C. Robinson	1873-01-01	1942-01-01
1070	nm0738864	Colonna Romano	1888-01-01	1981-01-01
975	nm0745721	Jacques Roullet	\N	\N
1006	nm0773171	Robert Schmidt	1882-01-01	1941-01-01
973	nm0786313	Séverin-Mars	1873-01-01	1921-01-01
1083	nm0800480	Charles Simone	1874-01-01	\N
949	nm0817956	George Soule Spencer	1874-01-01	1949-01-01
1000	nm0835591	Axel Strøm	1866-01-01	1950-01-01
1098	nm0836316	Rollin S. Sturgeon	1877-01-01	1961-01-01
979	nm0854414	Lou Tellegen	1881-01-01	1934-01-01
988	nm0889904	Ricardo Vargas	\N	\N
1091	nm0927255	Gustav Wied	1858-01-01	1914-01-01
1090	nm0927690	Carlo Wieth	1885-01-01	1943-01-01
1001	nm0928492	Oscar Wilde	1854-01-01	1900-01-01
943	nm0930290	Clara Williams	1888-01-01	1928-01-01
1056	nm0934969	Red Wing	1884-01-01	1974-01-01
966	nm0989460	Elinor Kershaw	1884-01-01	1971-01-01
1032	nm1029576	Giuseppe Gambardella	1880-01-01	1950-01-01
1096	nm1070136	Magna Redøhl	1878-01-01	1946-01-01
1033	nm1108042	David Barnett	\N	\N
1041	nm11225194	James White	\N	\N
1256	nm1147710	Nancy Avril	\N	\N
1175	nm1151934	Charles Fuqua	1875-01-01	\N
1173	nm1151967	Arthur Patrick 'Pat' Long	\N	\N
1218	nm1206972	B.S. Ingemann	1789-01-01	1862-01-01
1151	nm12139966	Rosanna Bainbridge	\N	\N
1115	nm1216205	Madeleine Céliat	\N	\N
1120	nm1230894	Carmen Ruiz	\N	\N
1109	nm1335308	La Petite Lily	\N	\N
1177	nm1399833	Earl Howell	1883-01-01	1918-01-01
1204	nm1402894	Jimmie McIntyre	\N	\N
1217	nm1434907	Ragnhild Christensen	\N	\N
1209	nm1761548	Pierre Trimbach	1889-01-01	1970-01-01
1237	nm1846061	Poul Skondrup	1905-01-01	1977-01-01
1219	nm2150938	Th.S. Sørensen	\N	\N
1140	nm2308962	Stella W. Collard	\N	\N
1193	nm2434920	Thora Meincke	1877-01-01	1911-01-01
1191	nm2547818	Gustav Helios	1887-01-01	1960-01-01
1117	nm4021239	D. Amelia de Lisboa	\N	\N
1125	nm4021589	Laura Faria	\N	\N
1118	nm4022068	D. Maria de Lisboa	\N	\N
1119	nm4022417	Alexandre Azevedo	\N	\N
1123	nm4023129	Isabel Berard	\N	\N
1154	nm5227562	Christian Hansen	1858-01-01	1919-01-01
1252	nm5228466	Otto Von Fick	\N	\N
1155	nm5665880	Valborg Kierkegaard	1889-01-01	1975-01-01
1164	nm0010134	Art Acord	1890-01-01	1931-01-01
1183	nm0029198	Gerda André	1876-01-01	1960-01-01
1208	nm0053065	Blanche Barat	\N	\N
1126	nm0055689	Mac Barnes	1863-01-01	1923-01-01
1250	nm0065038	William Bechtel	1867-01-01	1930-01-01
1242	nm0078806	Eugenie Besserer	1868-01-01	1934-01-01
1141	nm0095695	Elmer Booth	1882-01-01	1915-01-01
1121	nm0098427	Alberto Botelho	1885-01-01	1973-01-01
1255	nm0107543	Herbert Brenon	1880-01-01	1958-01-01
1184	nm0112867	Carl Browallius	1868-01-01	1944-01-01
1110	nm0126406	Lord Byron	1788-01-01	1824-01-01
1178	nm0133153	Carlo Campogalliani	1885-01-01	1974-01-01
1197	nm0137407	Lloyd B. Carleton	1872-01-01	1933-01-01
1189	nm0147761	Gucken Cederborg	1881-01-01	1932-01-01
1180	nm0156990	Giannina Chiantoni	1881-01-01	1972-01-01
1220	nm0165134	Charles Clary	1873-01-01	1931-01-01
1205	nm0165691	Ethel Clayton	1882-01-01	1966-01-01
1135	nm0172741	Wilkie Collins	1824-01-01	1889-01-01
1103	nm0191899	Irving Cummings	1888-01-01	1959-01-01
1225	nm0198381	Georg Dalunde	1881-01-01	1961-01-01
1145	nm0218175	Marie Demartiniová-Hradcanská	\N	\N
1224	nm0257022	Carl Engdahl	1864-01-01	1939-01-01
1157	nm0262132	Carit Etlar	1816-01-01	1900-01-01
1249	nm0287792	Edna Foster	1900-01-01	\N
1222	nm0288119	William C. Foster	1880-01-01	1923-01-01
1134	nm0301252	Robert Gaillard	1868-01-01	1941-01-01
1162	nm0305918	Enrique García Álvarez	1896-01-01	1973-01-01
1127	nm0308848	William Garwood	1884-01-01	1950-01-01
1113	nm0316269	Olga Giannini Novelli	\N	\N
1139	nm0324690	Nikolay Gogol	1809-01-01	1852-01-01
1195	nm0329212	Robert Goodman	\N	\N
1167	nm0337586	Alfred E. Green	1889-01-01	1960-01-01
1243	nm0339408	Winifred Greenwood	1885-01-01	1961-01-01
1158	nm0360733	Clays Hansen	\N	\N
1188	nm0373367	Ivan Hedqvist	1880-01-01	1935-01-01
1211	nm0382850	Eleanor Hicks	1886-01-01	1936-01-01
1171	nm0413582	Helen Hunt Jackson	1830-01-01	1885-01-01
1231	nm0414951	Käthie Jacobsson	\N	\N
1213	nm0455504	Charles Kingsley	1819-01-01	1875-01-01
1221	nm0456017	Rudyard Kipling	1865-01-01	1936-01-01
1147	nm0468351	Bohumil Kovár	1865-01-01	1931-01-01
1128	nm0471866	Adrienne Kroell	1892-01-01	1949-01-01
1196	nm0478359	Florence La Badie	1888-01-01	1917-01-01
1247	nm0480674	Carl Laemmle	1867-01-01	1939-01-01
1201	nm0487007	J. Jiquel Lanoe	1875-01-01	1948-01-01
1244	nm0500361	Lillian Leighton	1874-01-01	1956-01-01
1149	nm0504551	Adolph Lestina	1861-01-01	1923-01-01
1106	nm0513617	Otto Rippert	1869-01-01	1940-01-01
1114	nm0516263	Gerolamo Lo Savio	1865-01-01	1931-01-01
1246	nm0531759	J. Farrell MacDonald	1875-01-01	1952-01-01
1216	nm0574737	Edward McWade	1865-01-01	1943-01-01
1133	nm0580648	Bess Meredyth	1890-01-01	1969-01-01
1102	nm0609813	Paul Mounet	1847-01-01	1922-01-01
1212	nm0616729	Harry Myers	1882-01-01	1938-01-01
1234	nm0628190	Maria Newman	1962-01-01	\N
1160	nm0633693	Milton Nobles	1844-01-01	1924-01-01
1112	nm0637025	Ermete Novelli	1851-01-01	1919-01-01
1229	nm0648130	Robert Olsson	1877-01-01	1941-01-01
1179	nm0655831	Arturo Padovani	\N	\N
1132	nm0694602	Pat Powers	1869-01-01	1948-01-01
1116	nm0712416	Louis Ravet	\N	\N
1206	nm0713404	Aimée Raynal	\N	\N
1159	nm0717468	Wallace Reid	1891-01-01	1923-01-01
1199	nm0727618	Arvid Ringheim	1880-01-01	1941-01-01
1215	nm0751510	William Russell	1884-01-01	1929-01-01
1150	nm0755331	Gordon Sackville	1872-01-01	1926-01-01
1105	nm0762408	Thea Sandten	1884-01-01	1943-01-01
1143	nm0782422	Ferry Seidl	1881-01-01	1939-01-01
1245	nm0790137	William E. Shay	1866-01-01	\N
1176	nm0824332	Myrtle Stedman	1885-01-01	1938-01-01
1182	nm0830037	Emile Stiebel	1876-01-01	1950-01-01
1185	nm0835529	Frithiof Strömberg	1878-01-01	1911-01-01
1230	nm0845505	Oscar Söderholm	1875-01-01	1936-01-01
1101	nm0856161	George Terwilliger	1882-01-01	1970-01-01
1202	nm0867453	John Peter Toohey	\N	\N
1137	nm0873928	John Troyano	1889-01-01	\N
1254	nm0875869	George Loane Tucker	1872-01-01	1921-01-01
1170	nm0896618	Amelia Vieira	1850-01-01	1928-01-01
1131	nm0925310	Pearl White	1889-01-01	1938-01-01
1146	nm0952034	Otto Zahrádka	1882-01-01	1939-01-01
1142	nm1024681	Josef Kricenský	1874-01-01	1930-01-01
1248	nm1073527	Josephine Rector	1885-01-01	1958-01-01
1156	nm1159832	Ernst Munkeboe	1868-01-01	1943-01-01
1367	nm1218280	H.B. Marriott Watson	1863-01-01	1921-01-01
1310	nm1334402	Nathalie Jerome	\N	\N
1298	nm1372000	Willis Secord	\N	\N
1401	nm1458590	Elna From	1869-01-01	1943-01-01
1405	nm1532213	Henny Lauritzen	1871-01-01	1938-01-01
1261	nm1617025	Constantin Neamtu-Ottonel	\N	\N
1262	nm1714653	Aurel Barbelian	\N	\N
1370	nm1760538	Amélia Soares	\N	\N
1329	nm3068222	Olivia Norrie	1869-01-01	1945-01-01
1330	nm5231656	Peter Nansen	1861-01-01	1918-01-01
1278	nm0007215	King Baggot	1879-01-01	1948-01-01
1297	nm0007239	Henry Cronjager	1877-01-01	1967-01-01
1398	nm0026157	Herr Andersen	1871-01-01	1948-01-01
1336	nm0027523	Tom Anderson	\N	\N
1357	nm0071132	Harry Benham	1884-01-01	1969-01-01
1295	nm0095809	Sydney Booth	1873-01-01	1937-01-01
1380	nm0099479	Edward Boulden	1879-01-01	1937-01-01
1263	nm0108345	Grigore Brezeanu	1892-01-01	1919-01-01
1284	nm0119279	Gottfried August Bürger	1747-01-01	1794-01-01
1267	nm0124189	Pauline Bush	1886-01-01	1969-01-01
1363	nm0132324	Colin Campbell	1859-01-01	1928-01-01
1308	nm0143655	Harry Cashman	1869-01-01	1912-01-01
1314	nm0149600	Jack Chagnon	1880-01-01	1912-01-01
1333	nm0151946	Aleksandr Khanzhonkov	1877-01-01	1945-01-01
1408	nm0163906	Edwin Clarke	\N	\N
1258	nm0177700	Guy Coombs	1882-01-01	1947-01-01
1280	nm0183356	Kathleen Coughlin	\N	\N
1360	nm0197416	Isabelle Daintry	\N	\N
1390	nm0198523	William Robert Daly	1872-01-01	1935-01-01
1354	nm0199087	Viola Dana	1897-01-01	1987-01-01
1318	nm0200425	Signe Danning	1878-01-01	1980-01-01
1311	nm0202592	Edgar L. Davenport	1862-01-01	1918-01-01
1264	nm0207512	Victor De Bon	\N	\N
1369	nm0211697	Alfredo de Sousa	\N	\N
1411	nm0216941	Fernando Delgado	1891-01-01	1950-01-01
1412	nm0239263	Margarita Dubertrand	\N	\N
1270	nm0245385	Allan Dwan	1885-01-01	1981-01-01
1272	nm0253052	Ethel Elder	\N	\N
1326	nm0253100	Willis Elder	\N	\N
1359	nm0262080	Alphonse Ethier	1874-01-01	1943-01-01
1375	nm0276408	Louis Fierce	1852-01-01	1926-01-01
1294	nm0280003	Clyde Fitch	1865-01-01	1909-01-01
1276	nm0309974	Tony Gaudio	1883-01-01	1951-01-01
1372	nm0315793	Alberto Ghira	1888-01-01	1971-01-01
1273	nm0316947	Dorothy Gibson	1889-01-01	1946-01-01
1327	nm0324438	R. Henry Grey	1891-01-01	1934-01-01
1296	nm0330280	James Gordon	1871-01-01	1941-01-01
1364	nm0342278	Jacob Grimm	1785-01-01	1863-01-01
1396	nm0348062	Jens Christian Gundersen	1868-01-01	1945-01-01
1399	nm0369285	Ingeborg Hauge	\N	\N
1316	nm0373203	Hans Hedemark	1875-01-01	1930-01-01
1277	nm0377289	George Hennessy	\N	\N
1320	nm0415403	Henrik Jaenzon	1886-01-01	1954-01-01
1352	nm0426310	Tefft Johnson	1871-01-01	1956-01-01
1373	nm0433768	Barbosa Júnior	1897-01-01	1965-01-01
1406	nm0440059	Darwin Karr	1875-01-01	1945-01-01
1403	nm0491503	Lau Lauritzen	1878-01-01	1938-01-01
1356	nm0496941	Carey Lee	1884-01-01	1930-01-01
1381	nm0513167	Harry Linson	1839-01-01	1926-01-01
1301	nm0516974	Harold Lockwood	1887-01-01	1918-01-01
1348	nm0520634	Concha Lorente	\N	\N
1342	nm0528022	Lottie Lyell	1890-01-01	1925-01-01
1385	nm0529735	Robert Lévy	\N	\N
1291	nm0533617	Julia Mackley	1878-01-01	1964-01-01
1281	nm0556953	Shirley Mason	1900-01-01	1979-01-01
1331	nm0576791	Julie Meijer	1878-01-01	1963-01-01
1282	nm0578820	Harriette Mendel	\N	\N
1407	nm0587329	Bliss Milford	1886-01-01	\N
1362	nm0588675	Josephine Miller	1892-01-01	1978-01-01
1376	nm0594287	Olive Mix	1887-01-01	1972-01-01
1322	nm0605660	Louis Morisette	1891-01-01	\N
1305	nm0607174	James Morrison	1888-01-01	1974-01-01
1393	nm0617963	Frk. Møller	\N	\N
1283	nm0622772	René Navarre	1877-01-01	1968-01-01
1287	nm0626370	Miriam Nesbitt	1873-01-01	1954-01-01
1344	nm0627427	Augustus Neville	1878-01-01	1963-01-01
1386	nm0634170	Paulette Noizeux	1887-01-01	1971-01-01
1292	nm0635667	Mabel Normand	1892-01-01	1930-01-01
1268	nm0673814	George Periolat	1874-01-01	1940-01-01
1404	nm0676978	Zanny Petersen	1892-01-01	1976-01-01
1315	nm0703644	Harriet Quimby	1875-01-01	1912-01-01
1319	nm0704587	Pehr Qværnstrøm	1878-01-01	\N
1387	nm0719749	Pierre Renoir	1885-01-01	1952-01-01
1269	nm0724586	Jack Richardson	1870-01-01	1960-01-01
1313	nm0725893	Richard Ridgely	1869-01-01	1949-01-01
1324	nm0732818	Kite Robinson	1888-01-01	1954-01-01
1275	nm0738082	Ruth Roland	1892-01-01	1937-01-01
1339	nm0738202	Alfred Rolfe	1862-01-01	1943-01-01
1402	nm0740463	Thorkild Roose	1874-01-01	1961-01-01
1358	nm0741884	Anna Rosemond	1884-01-01	\N
1312	nm0780884	Charles M. Seay	1867-01-01	1944-01-01
1338	nm0808220	Frank Smith	1860-01-01	\N
1392	nm0827509	Ford Sterling	1883-01-01	1939-01-01
1394	nm0835590	Arne Strøm	\N	\N
1259	nm0836458	Lucia Sturza-Bulandra	1873-01-01	1961-01-01
1382	nm0849806	Robert Emmett Tansey	1897-01-01	1951-01-01
1395	nm0853923	Ellen Tegner	1878-01-01	1957-01-01
1388	nm0869559	Jean Toulout	1887-01-01	1962-01-01
1377	nm0878609	Stan Twist	\N	\N
1347	nm0909492	Stanley Walpole	1881-01-01	1967-01-01
1366	nm0916906	Henry Kitchell Webster	1875-01-01	1932-01-01
1389	nm0917726	Edna May Weick	1905-01-01	1983-01-01
1383	nm0922392	William West	1856-01-01	1915-01-01
1293	nm0933045	Ben F. Wilson	1876-01-01	1930-01-01
1317	nm0941525	Emmy Worm-Müller	1875-01-01	1950-01-01
1345	nm1010943	Alfred Dampier	1843-01-01	1908-01-01
1458	nm1250355	Edward LeSaint	1870-01-01	1940-01-01
1451	nm1270556	Eugenie Werner	\N	\N
1517	nm1336171	J.C. Whitcomb	\N	\N
1455	nm1495634	Frau Karsten	\N	\N
1493	nm2431571	Joseph Harker	1855-01-01	1927-01-01
1482	nm2701207	Mordka Towbin	\N	\N
1475	nm2708211	Adolf Berman	\N	\N
1484	nm2786285	Lejzer Zelazo	\N	\N
1515	nm3502604	Carle Mann	\N	\N
1508	nm3502683	Genevieve Baird	\N	\N
1424	nm5239860	Ellen Price de Plane	\N	\N
1419	nm5239890	Vilhelm Wiehe	1858-01-01	1916-01-01
1538	nm0009872	Fritz Achterberg	1880-01-01	1971-01-01
1525	nm0016799	Emil Albes	1861-01-01	1923-01-01
1416	nm0037414	Alberto Arroyo	1894-01-01	\N
1566	nm0037849	Walter Arthur	1875-01-01	\N
1436	nm0048838	R.F. Baker	\N	\N
1441	nm0051911	Herman Bang	1857-01-01	1912-01-01
1520	nm0057482	Herbert Barrington	1872-01-01	1933-01-01
1531	nm0058849	Lanier Bartlett	1879-01-01	1961-01-01
1514	nm0071518	Yale Benner	1875-01-01	1952-01-01
1554	nm0087119	August Blanche	1811-01-01	1868-01-01
1529	nm0102783	Bertram Bracken	1880-01-01	1952-01-01
1530	nm0102799	Mildred Bracken	1896-01-01	1964-01-01
1505	nm0109800	Lottie Briscoe	1883-01-01	1950-01-01
1569	nm0110838	Robert Broderick	1864-01-01	1921-01-01
1513	nm0115230	Frank Brownlee	1874-01-01	1948-01-01
1414	nm0118272	José Buchs	1896-01-01	1973-01-01
1527	nm0137348	Joseph Carle	\N	\N
1548	nm0140584	Murray Carrington	1885-01-01	1941-01-01
1462	nm0143212	Helen Case	1885-01-01	1977-01-01
1440	nm0160233	Tilley Christiansen	1874-01-01	1955-01-01
1427	nm0163519	Miss Clare	\N	\N
1540	nm0166433	Rita Clermont	1894-01-01	1969-01-01
1454	nm0166547	Carl Clewing	1884-01-01	1954-01-01
1459	nm0166815	Eugenia Clinchard	1904-01-01	1989-01-01
1519	nm0166932	Mrs. B.F. Clinton	\N	\N
1428	nm0181848	Tom Cosgrove	\N	\N
1497	nm0182597	Mae Costello	1882-01-01	1929-01-01
1490	nm0184766	Laura Cowie	1892-01-01	1969-01-01
1523	nm0205343	Richard Harding Davis	1864-01-01	1916-01-01
1435	nm0206750	Frank Dayton	1865-01-01	1924-01-01
1512	nm0231591	Evelyn Dumo	1888-01-01	\N
1445	nm0242055	Norman Duncan	1871-01-01	1916-01-01
1471	nm0253621	Marie Eline	1902-01-01	1981-01-01
1429	nm0254852	George D. Ellis	1898-01-01	1973-01-01
1431	nm0272340	Helen Fergus	\N	\N
1561	nm0278062	Ned Finley	1870-01-01	1920-01-01
1491	nm0282040	John Fletcher	1579-01-01	1625-01-01
1460	nm0290066	Alec B. Francis	1867-01-01	1934-01-01
1417	nm0312146	Hortensia Gelabert	\N	\N
1567	nm0319421	Ada Gilman	1854-01-01	1921-01-01
1499	nm0320761	Etienne Girardot	1856-01-01	1939-01-01
1418	nm0328322	Manuel González	\N	\N
1432	nm0328760	Jack Goodall	\N	\N
1498	nm0356439	Edith Halleran	1893-01-01	\N
1564	nm0367556	Jack Harvey	1881-01-01	1954-01-01
1543	nm0372992	Wilhelm Hechy	\N	\N
1433	nm0376556	Mr. Henderson	\N	\N
1430	nm0383329	Arthur Higgins	1891-01-01	1963-01-01
1542	nm0388674	Franz Hofer	1882-01-01	1945-01-01
1423	nm0406094	Edgar Høyer	1859-01-01	1942-01-01
1562	nm0426522	Allen Johnston	\N	\N
1559	nm0444274	Jane Keckley	1876-01-01	1963-01-01
1568	nm0447082	Mayme Kelso	1867-01-01	1946-01-01
1456	nm0473134	Hanns Kräly	1884-01-01	1950-01-01
1550	nm0484169	Nora Lancaster	1882-01-01	1968-01-01
1516	nm0488280	Dolly Larkin	1889-01-01	1976-01-01
1421	nm0511223	Kai Lind	1887-01-01	1962-01-01
1422	nm0512539	Viggo Lindstrøm	1858-01-01	1926-01-01
1555	nm0515572	Erik Ljungberger	1875-01-01	1965-01-01
1521	nm0528931	Gertrude McCoy	1890-01-01	1967-01-01
1518	nm0532996	Hayward Mack	1882-01-01	1921-01-01
1570	nm0533887	Elsie MacLeod	1890-01-01	\N
1551	nm0561568	Eric Maxim	\N	\N
1557	nm0570252	Major J.A. McGuire	\N	\N
1507	nm0583645	Ray Myers	1889-01-01	1956-01-01
1450	nm0585785	Hans Mierendorff	1882-01-01	1955-01-01
1503	nm0593671	Rhea Mitchell	1890-01-01	1957-01-01
1444	nm0617885	Louis Möller	\N	\N
1449	nm0631025	Agda Nilsson	\N	\N
1526	nm0643138	Max Obal	1881-01-01	1949-01-01
1473	nm0672885	Lacey Percival	\N	1969-01-01
1434	nm0680368	Dorothy Phillips	1882-01-01	1980-01-01
1495	nm0696985	Kate Price	1872-01-01	1943-01-01
1452	nm0707778	Louis Ralph	1884-01-01	1952-01-01
1446	nm0713895	Charles Reade	1814-01-01	1884-01-01
1537	nm0715508	Julian Reed	1860-01-01	1934-01-01
1442	nm0717807	Thyra Reimann	\N	\N
1532	nm0724541	Frank Richardson	\N	1913-01-01
1438	nm0736288	Halfdan Nobel Roede	\N	\N
1415	nm0736464	Julio Roesset	\N	\N
1476	nm0797218	Herman Sieracki	\N	\N
1486	nm0806565	Phillips Smalley	1875-01-01	1939-01-01
1470	nm0811293	Marguerite Snow	1889-01-01	1958-01-01
1474	nm0822060	Jack Standing	1886-01-01	1917-01-01
1511	nm0850033	Rose Tapley	1881-01-01	1956-01-01
1468	nm0857302	Rosemary Theby	1892-01-01	1973-01-01
1469	nm0871879	W.A. Tremayne	1864-01-01	1939-01-01
1496	nm0872868	Laurence Trimble	1885-01-01	1954-01-01
1447	nm0913338	Alice Washburn	1861-01-01	1929-01-01
1552	nm0913611	Lilly Wasmuth	1886-01-01	1970-01-01
1464	nm0914867	Roy Watson	1876-01-01	1937-01-01
1485	nm0916665	Lois Weber	1879-01-01	1939-01-01
1501	nm0917291	Alice Weeks	\N	\N
1536	nm0922096	Henry West	1868-01-01	1936-01-01
1425	nm0927374	Emma Wiehe	1864-01-01	1949-01-01
1483	nm0954051	Stanislaw Sebel	1886-01-01	1946-01-01
1546	nm1071095	Nicholas Rowe	1674-01-01	1718-01-01
1596	nm1148255	Georges Coquet	\N	\N
1597	nm1150343	Lucy d'Orbel	\N	\N
1656	nm1155414	George Hooker	\N	\N
1601	nm1155732	Paulette Lorsy	\N	\N
1590	nm1288120	Fanny Northrope	\N	\N
1675	nm1333252	Blanchard	\N	\N
1677	nm1334052	Fernand Godeau	\N	\N
1571	nm1347478	J.C. Smith	\N	\N
1689	nm1413247	Lew Rushing	\N	\N
1690	nm1413423	Glenn Shaver	\N	\N
1573	nm1563056	Columbia Eneutseak	1893-01-01	1959-01-01
1576	nm1650215	Toodles	\N	\N
1638	nm1979952	Charles Krauss	\N	1926-01-01
1687	nm2131092	Gebhard Schätzler-Perasini	\N	1931-01-01
1705	nm2331511	Old Blue	\N	\N
1684	nm2542283	Gunnar Rosenbaum	\N	\N
1572	nm6679394	Chief Opetek	\N	\N
1574	nm6679396	Emutisak	\N	\N
1575	nm6679397	Zachariah	\N	\N
1702	nm9507151	Frl. Stoike	\N	\N
1634	nm0016632	Count Alberti	1849-01-01	1914-01-01
1667	nm0016674	Viola Alberti	1871-01-01	\N
1578	nm0026696	Ernest Anderson	\N	\N
1627	nm0027209	Mignon Anderson	1892-01-01	1983-01-01
1674	nm0029752	François Angely	1847-01-01	1931-01-01
1581	nm0034454	Juan Argelagués	\N	\N
1629	nm0043881	David Aylott	1885-01-01	1969-01-01
1642	nm0054337	Camille Bardou	1872-01-01	1941-01-01
1725	nm0062934	F.P. Bayer	\N	\N
1727	nm0086003	Augusta Blad	1871-01-01	1953-01-01
1589	nm0094017	R.L. Bond	\N	\N
1577	nm0106990	Otto Breitkreutz	1866-01-01	1928-01-01
1650	nm0117344	Alfred Brydone	1863-01-01	1920-01-01
1715	nm0140452	Thomas Carrigan	1886-01-01	1941-01-01
1680	nm0159725	Benjamin Christensen	1879-01-01	1959-01-01
1694	nm0167411	Stewart Clyde	1877-01-01	1920-01-01
1630	nm0170863	A.E. Coleby	1876-01-01	1930-01-01
1726	nm0175231	Robert Conness	1867-01-01	1941-01-01
1603	nm0178049	George Cooper	1892-01-01	1943-01-01
1716	nm0180077	Eugène Cormon	1811-01-01	1903-01-01
1660	nm0183552	William Coulter	\N	\N
1622	nm0208413	Charles De Forrest	1877-01-01	1944-01-01
1704	nm0211274	Rex De Rosselli	1878-01-01	1941-01-01
1598	nm0216211	Maurice Delamare	\N	\N
1708	nm0217558	Herbert Delmar	1888-01-01	1980-01-01
1695	nm0233512	Mrs. Charles A. Doremus	\N	\N
1655	nm0242139	William Duncan	1879-01-01	1961-01-01
1709	nm0242800	William R. Dunn	1888-01-01	1946-01-01
1670	nm0264279	Harry B. Eytinge	1862-01-01	1928-01-01
1612	nm0286189	Louis Forestier	1892-01-01	1954-01-01
1654	nm0336414	Gabriel de Gravone	1887-01-01	1972-01-01
1579	nm0339379	Reeva Greenwood	\N	1972-01-01
1662	nm0362636	Fred Hardy	\N	\N
1635	nm0379580	George Hernandez	1863-01-01	1922-01-01
1679	nm0391129	Arthur Hollingsworth	\N	\N
1618	nm0391228	George K. Hollister	1873-01-01	1952-01-01
1615	nm0401744	Fergus Hume	1859-01-01	1932-01-01
1633	nm0403151	Fred Huntley	1862-01-01	1931-01-01
1688	nm0423762	Adam Johansen	\N	\N
1643	nm0449136	Émile Keppens	1866-01-01	1926-01-01
1696	nm0450440	Paul Kester	1869-01-01	1933-01-01
1624	nm0456634	David Kirkland	1878-01-01	1964-01-01
1678	nm0471223	Bertha Krieghoff	\N	\N
1600	nm0486117	Gabrielle Lange	\N	\N
1693	nm0492661	Charles Lawrence	1896-01-01	1984-01-01
1623	nm0507568	Mitchell Lewis	1880-01-01	1956-01-01
1637	nm0508592	André Liabel	\N	1942-01-01
1722	nm0528064	Peter Lykke-Seest	1868-01-01	1948-01-01
1592	nm0531691	Donald MacDonald	1886-01-01	1972-01-01
1691	nm0537238	Johnny Mahr	\N	\N
1682	nm0539045	Ellen Malberg	1907-01-01	1983-01-01
1628	nm0551375	Theodore Marston	1868-01-01	1920-01-01
1672	nm0560942	Ernest Maupain	1869-01-01	1944-01-01
1710	nm0562898	Melvin Mayo	1878-01-01	\N
1636	nm0569645	J.P. McGowan	1880-01-01	1952-01-01
1661	nm0578469	E. Melville	\N	\N
1610	nm0592965	Mistinguett	1875-01-01	1956-01-01
1584	nm0611814	Otto Mulhauser	\N	\N
1718	nm0624752	Richard Neill	1875-01-01	1970-01-01
1664	nm0628557	Marie Newton	1897-01-01	\N
1580	nm0636288	Roy Norton	1869-01-01	1942-01-01
1645	nm0681794	Sam Pickens	\N	\N
1605	nm0687637	Lincoln Plumer	1875-01-01	1928-01-01
1685	nm0694026	Baden Powell	\N	\N
1591	nm0723735	Vivian Rich	1893-01-01	1957-01-01
1683	nm0727484	Svend Rindom	1884-01-01	1960-01-01
1604	nm0742633	Palle Rosenkrantz	1867-01-01	1941-01-01
1723	nm0753645	Bertha Ræstad	\N	\N
1607	nm0780425	Ynez Seabury	1907-01-01	1973-01-01
1699	nm0783027	Hermann Seldeneck	1864-01-01	1922-01-01
1724	nm0814604	Botten Soot	1895-01-01	1958-01-01
1620	nm0814668	Sophocles	\N	\N
1700	nm0837183	Hermann Sudermann	1857-01-01	1928-01-01
1647	nm0841435	Barbara Swager	\N	\N
1640	nm0843180	Renée Sylvaire	\N	\N
1669	nm0852476	Irma Taylor	1890-01-01	1974-01-01
1657	nm0857222	Otis Thayer	1863-01-01	1935-01-01
1609	nm0893346	Maria Ventura	1890-01-01	1954-01-01
1658	nm0898785	Walter Vincent	\N	\N
1644	nm0910509	Fred Walton	1865-01-01	1936-01-01
1588	nm0913341	Bryant Washburn	1889-01-01	1963-01-01
1706	nm0920132	Carolyn Wells	1870-01-01	1942-01-01
1721	nm0927183	Birger Widt	\N	\N
1659	nm0928513	Sybil Wilde	\N	\N
1712	nm0929649	Irvin Willat	1890-01-01	1976-01-01
1713	nm0941652	Adele Worth	\N	\N
1651	nm0948803	Kathleen Yorke	1898-01-01	1984-01-01
1608	nm0959921	Henri Étiévant	1870-01-01	1953-01-01
1703	nm1074398	Charles Tipton	\N	\N
1742	nm1156590	Richard Trethwick	\N	\N
1774	nm1160117	Knute Rahm	1876-01-01	1957-01-01
1778	nm1270151	Edna Sharpe	1890-01-01	1967-01-01
1743	nm1345078	S. Jones	\N	\N
1780	nm1411720	Daniel P. Kelleher	1896-01-01	1958-01-01
1730	nm1437660	Erling Stensgaard	\N	\N
1749	nm1680332	Frank Blighton	\N	\N
1798	nm1772610	John Murphy Farley	1842-01-01	1918-01-01
1792	nm1808212	Wladimir	\N	\N
1777	nm5231591	Evelyn Coates	\N	\N
467	nm0000428	D.W. Griffith	1875-01-01	1948-01-01
861	nm0000590	Edgar Allan Poe	1809-01-01	1849-01-01
126	nm0000636	William Shakespeare	1564-01-01	1616-01-01
609	nm0000859	Lionel Barrymore	1878-01-01	1954-01-01
557	nm0000875	L. Frank Baum	1856-01-01	1919-01-01
203	nm0001908	Gilbert M. 'Broncho Billy' Anderson	1880-01-01	1971-01-01
630	nm0002001	Maurice Chevalier	1888-01-01	1972-01-01
168	nm0002042	Charles Dickens	1812-01-01	1870-01-01
1539	nm0002161	Hans Albers	1891-01-01	1960-01-01
1257	nm0002177	Oscar Apfel	1878-01-01	1938-01-01
687	nm0002503	Harry Carey	1878-01-01	1947-01-01
121	nm0002504	Herbert Beerbohm Tree	1852-01-01	1917-01-01
878	nm0002935	Moe Howard	1897-01-01	1975-01-01
408	nm0003471	Richard Wagner	1813-01-01	1883-01-01
1641	nm0005635	Lucien N. Andriot	1892-01-01	1979-01-01
2	nm0005690	William K.L. Dickson	1860-01-01	1935-01-01
1108	nm0005736	Willy Hameister	1889-01-01	1938-01-01
1187	nm0005748	Julius Jaenzon	1885-01-01	1961-01-01
1453	nm0005869	Guido Seeber	1879-01-01	1940-01-01
1289	nm0005896	Philip Tannura	1897-01-01	1973-01-01
1750	nm0005906	Roland Totheroh	1890-01-01	1967-01-01
1086	nm0005931	Alvin Wyckoff	1877-01-01	1957-01-01
487	nm0007221	Maurice Costello	1877-01-01	1950-01-01
1621	nm0009926	Edward Acker	\N	\N
937	nm0011700	Carlotta Addison	1849-01-01	1914-01-01
1299	nm0014894	Spottiswoode Aitken	1867-01-01	1933-01-01
258	nm0016317	Fernande Albany	1889-01-01	1966-01-01
1019	nm0018885	René Alexandre	1885-01-01	1946-01-01
381	nm0022608	Oda Alstrup	1888-01-01	1964-01-01
532	nm0024464	Arturo Ambrosio	1870-01-01	1960-01-01
83	nm0024876	José Amigo	\N	\N
1673	nm0024940	Paul Amiot	1886-01-01	1979-01-01
1800	nm0028916	Leonid Andreyev	1871-01-01	1919-01-01
1639	nm0029029	Josette Andriot	1886-01-01	1942-01-01
1426	nm0030667	Master Anson	\N	\N
1765	nm0034436	Victor Arfvidson	1887-01-01	1921-01-01
786	nm0034453	José Argelagués	\N	\N
1582	nm0034548	Juan Arguelagues	\N	\N
770	nm0035187	Charles Arling	1880-01-01	1922-01-01
1037	nm0036048	Étienne Arnaud	1879-01-01	1955-01-01
1735	nm0036060	Françoise Arnaud	\N	\N
414	nm0038106	Linda Arvidson	1884-01-01	1949-01-01
1754	nm0040086	Camille Astor	1896-01-01	1944-01-01
563	nm0043018	Charles Avery	1873-01-01	1926-01-01
1067	nm0045714	Constance Backner	1889-01-01	1969-01-01
1784	nm0047760	Rolinda Bainbridge	1875-01-01	1943-01-01
1760	nm0047889	Leah Baird	1883-01-01	1971-01-01
1136	nm0048478	George D. Baker	1868-01-01	1933-01-01
1560	nm0048864	Richard Foster Baker	1857-01-01	1921-01-01
1783	nm0050150	Augustus Balfour	1866-01-01	1940-01-01
862	nm0051304	Honoré de Balzac	1799-01-01	1850-01-01
205	nm0055607	George Barnes	1880-01-01	1951-01-01
1463	nm0058184	Viola Barry	1894-01-01	1964-01-01
14	nm0063086	Blanche Bayliss	1878-01-01	1951-01-01
694	nm0063412	Ramón de Baños	1890-01-01	1980-01-01
245	nm0065035	Mrs. William Bechtel	1861-01-01	1938-01-01
1071	nm0070762	Claude Benedict	\N	\N
1766	nm0071086	Gustaf Bengtsson	1878-01-01	1951-01-01
1797	nm0071135	Leland Benham	1905-01-01	1976-01-01
1547	nm0072463	Constance Benson	1864-01-01	1946-01-01
588	nm0072493	Frank R. Benson	1858-01-01	1939-01-01
1232	nm0074998	Idoff Bergqvist	\N	\N
1649	nm0077568	James Berry	1880-01-01	1915-01-01
1737	nm0087250	Enrique Blanco	\N	\N
1748	nm0090204	True Boardman	1880-01-01	1918-01-01
1795	nm0106922	Joseph Carl Breil	1870-01-01	1926-01-01
1752	nm0107750	Mervyn A. Breslauer	1884-01-01	\N
1762	nm0111762	B.R. Brooker	\N	\N
1755	nm0125000	Kathleen Butler	1890-01-01	1978-01-01
1745	nm0146223	Bill Cato	1887-01-01	1965-01-01
1746	nm0165744	Marguerite Clayton	1891-01-01	1968-01-01
1744	nm0185036	George L. Cox	1878-01-01	1947-01-01
1753	nm0237713	Sidney Drew	1863-01-01	1919-01-01
1772	nm0256221	John Emerson	1874-01-01	1956-01-01
1757	nm0305087	Al Ernest Garcia	1887-01-01	1938-01-01
1738	nm0309186	José Gaspar	\N	\N
1756	nm0350695	Adolf Gärtner	1879-01-01	1958-01-01
1791	nm0367363	Juan Eugenio Hartzenbusch	1806-01-01	1880-01-01
1788	nm0397040	Eugen Hovind	\N	\N
1758	nm0425020	Edith Johnson	1894-01-01	1969-01-01
1786	nm0446350	Dorothy Kelly	1894-01-01	1966-01-01
1802	nm0495218	Bessie Learn	1888-01-01	1987-01-01
1781	nm0507237	Grace Lewis	\N	\N
1799	nm0538779	Vladimir Maksimov	1880-01-01	1937-01-01
1769	nm0540217	Eric Malmberg	1888-01-01	1951-01-01
1759	nm0564946	Roy L. McCardell	1870-01-01	1961-01-01
1789	nm0633478	Chr. Nobel	\N	\N
1782	nm0643206	George Ober	1849-01-01	1912-01-01
1736	nm0666749	Albert Paul	1856-01-01	1928-01-01
1739	nm0675226	Mrs. Montayne Perry	\N	\N
1794	nm0738821	Nita Romani	\N	\N
1790	nm0837989	C. Gardner Sullivan	1884-01-01	1965-01-01
1763	nm0858778	Edward Thomas	1884-01-01	1943-01-01
1787	nm0861002	Frederick A. Thomson	1869-01-01	1925-01-01
1771	nm0888126	Jessalyn Van Trump	1887-01-01	1939-01-01
1747	nm0929619	Lee Willard	1873-01-01	1940-01-01
1801	nm0930788	Ida Williams	\N	\N
1775	nm0938059	Jane Wolfe	1875-01-01	1958-01-01
1734	nm0954390	Erich Zeiske	\N	\N
1770	nm0959818	Olof Ås	1892-01-01	1949-01-01
177	nm0078562	Ilona Hegedüsné Berzétey	1876-01-01	1962-01-01
647	nm0081288	Rudolf Biebrach	1866-01-01	1938-01-01
87	nm0083196	Santiago Biosca	\N	\N
1236	nm0084352	Alexandre Bisson	1848-01-01	1912-01-01
819	nm0084690	Jacques Bizeul	1882-01-01	1925-01-01
329	nm0084830	Rasmus Bjerregaard	1882-01-01	1917-01-01
1767	nm0084902	Lars Björck	1884-01-01	1926-01-01
1304	nm0086423	Evangeline Blaisdell	\N	\N
779	nm0091426	Hermann Boettger	1878-01-01	\N
445	nm0092809	Rolf Boldrewood	1826-01-01	1915-01-01
279	nm0094975	Max Bonnet	\N	\N
155	nm0095714	Herbert Booth	1862-01-01	1926-01-01
1585	nm0099116	Louis-Jacques Boucot	1882-01-01	1949-01-01
1488	nm0099754	Arthur Bourchier	1863-01-01	1927-01-01
752	nm0099901	Gérard Bourgeois	1874-01-01	1944-01-01
497	nm0100664	Berthe Bovy	1887-01-01	1977-01-01
1288	nm0102643	Charles Brabin	1882-01-01	1957-01-01
874	nm0104506	Neil Brand	\N	\N
1776	nm0105201	Lily Branscombe	1876-01-01	1970-01-01
1020	nm0105331	Albert Bras	1865-01-01	1942-01-01
1169	nm0105501	Eduardo Brazão	1851-01-01	1925-01-01
1443	nm0106514	Nikolai Brechling	1883-01-01	1935-01-01
565	nm0111753	Van Dyke Brooke	1859-01-01	1921-01-01
1448	nm0112130	Marion Brooks	\N	\N
137	nm0112631	Valentine Brouat	\N	\N
1165	nm0114307	Milton Brown	1895-01-01	1948-01-01
1368	nm0114914	William H. Brown	1866-01-01	1924-01-01
780	nm0119164	Edith Buemann	1879-01-01	1968-01-01
618	nm0120272	Edward George Bulwer-Lytton	1803-01-01	1873-01-01
1804	nm0123540	Charlotte Burton	1881-01-01	1942-01-01
1307	nm0124279	Francis X. Bushman	1883-01-01	1966-01-01
907	nm0126885	Jeanne Bérangère	1864-01-01	1928-01-01
1663	nm0127511	Christy Cabanne	1888-01-01	1950-01-01
1029	nm0127674	Andrés Cabot Puig	\N	\N
209	nm0131750	Walter Cameron	1872-01-01	1942-01-01
1558	nm0132955	Frank Campeau	1864-01-01	1943-01-01
1153	nm0135052	Albert Capellani	1874-01-01	1931-01-01
980	nm0135053	Paul Capellani	1877-01-01	1960-01-01
656	nm0136241	Adela Carboné	\N	\N
956	nm0140842	James Carroll	\N	\N
1528	nm0141035	William A. Carroll	1875-01-01	1928-01-01
398	nm0141150	Michel Carré	1865-01-01	1945-01-01
570	nm0143083	Roberto Casaux	1885-01-01	1929-01-01
877	nm0143460	Kenneth Casey	1899-01-01	1965-01-01
1309	nm0144293	Dolores Cassinelli	1888-01-01	1984-01-01
1181	nm0147763	Torre Cederborg	1879-01-01	1928-01-01
610	nm0150432	Robert W. Chambers	1865-01-01	1933-01-01
211	nm0159015	Segundo de Chomón	1871-01-01	1929-01-01
1731	nm0159886	Richard Christensen	1887-01-01	1944-01-01
1233	nm0163255	Gertrude Claire	1852-01-01	1928-01-01
686	nm0163559	Verner Clarges	1846-01-01	1911-01-01
1617	nm0164030	J.J. Clark	1876-01-01	1947-01-01
1563	nm0164888	Marcus Clarke	1846-01-01	1881-01-01
526	nm0166153	María Clemente	\N	\N
29	nm0166380	François Clerc	\N	\N
340	nm0166633	Jack Clifford	1880-01-01	1956-01-01
1099	nm0166692	William Clifford	1877-01-01	1941-01-01
1535	nm0166693	William H. Clifford	1874-01-01	1938-01-01
913	nm0167461	Julien Clément	\N	\N
1266	nm0168504	Juan María Codina	\N	\N
533	nm0169871	Émile Cohl	1857-01-01	1938-01-01
1594	nm0172731	Ulric Blair Collins	\N	\N
129	nm0177862	Arthur Melbourne Cooper	1874-01-01	1961-01-01
784	nm0178126	James Fenimore Cooper	1789-01-01	1851-01-01
1668	nm0178450	William C. Cooper	\N	\N
1541	nm0179557	Mia Cordes	\N	\N
369	nm0180860	João Freire Correia	\N	\N
803	nm0182537	Dolores Costello	1903-01-01	1979-01-01
297	nm0183817	Helen Courtenay	\N	\N
15	nm0183823	William Courtenay	1875-01-01	1933-01-01
1241	nm0185179	Olive Cox	\N	\N
945	nm0185714	William James Craft	1886-01-01	1931-01-01
871	nm0186345	Frank Hall Crane	1873-01-01	1948-01-01
567	nm0187981	Donald Crisp	1882-01-01	1974-01-01
1321	nm0190516	James Cruze	1884-01-01	1942-01-01
385	nm0191133	Antonio Cuesta	\N	\N
1761	nm0193005	Frank Currier	1857-01-01	1928-01-01
1228	nm0197062	Fredrik August Dahlgren	1816-01-01	1895-01-01
1522	nm0197596	Camille Dalberg	1870-01-01	1968-01-01
1340	nm0198972	Lily Dampier	1868-01-01	1915-01-01
962	nm0199841	Bebe Daniels	1901-01-01	1971-01-01
1302	nm0202562	Alice Davenport	1864-01-01	1936-01-01
761	nm0202590	Dorothy Davenport	1895-01-01	1977-01-01
544	nm0205986	J. Searle Dawley	1877-01-01	1949-01-01
1619	nm0207207	Suzanne de Baere	\N	\N
109	nm0207305	Jeanne-Marie Leprince de Beaumont	1711-01-01	1780-01-01
1611	nm0213989	Pierre Decourcelle	1856-01-01	1926-01-01
418	nm0215516	Ubaldo Maria Del Colle	1883-01-01	1958-01-01
264	nm0215752	Antonio del Pozo	\N	\N
1306	nm0216311	Leo Delaney	1885-01-01	1920-01-01
1023	nm0216582	Casimir Delavigne	1793-01-01	1843-01-01
797	nm0220460	Germaine Dermoz	1888-01-01	1966-01-01
623	nm0221883	Otto Detlefsen	1881-01-01	1963-01-01
1719	nm0226295	Hedvig Dietrichson	\N	\N
1351	nm0227020	John Francis Dillon	1884-01-01	1934-01-01
884	nm0227602	Robert Dinesen	1874-01-01	1972-01-01
1534	nm0230188	Anna Dodge	1867-01-01	1945-01-01
1238	nm0232681	Anthony Donnelly	\N	\N
1676	nm0233530	Georges Dorival	1871-01-01	1939-01-01
102	nm0238900	George L. Du Maurier	1834-01-01	1896-01-01
382	nm0241414	Alexandre Dumas fils	1824-01-01	1895-01-01
722	nm0243017	Erich Dunskus	1890-01-01	1967-01-01
228	nm0243651	Durafour	\N	\N
1502	nm0249187	Robert Edeson	1868-01-01	1931-01-01
10	nm0249379	Thomas A. Edison	1847-01-01	1931-01-01
593	nm0250635	María Ega	\N	\N
295	nm0250983	Ann Eggleston	1866-01-01	1934-01-01
653	nm0251436	N. Eiberg	\N	\N
1602	nm0253151	Charles Eldridge	1854-01-01	1922-01-01
252	nm0259860	Margery Bonney Erskine	1864-01-01	1949-01-01
1413	nm0260771	Juan Espantaleón	1885-01-01	1966-01-01
330	nm0261789	Antonia Estrada	\N	\N
1467	nm0264286	Bessie Eyton	1890-01-01	1965-01-01
655	nm0264569	Kate Fabian	1870-01-01	1929-01-01
836	nm0266080	Ugo Falena	1875-01-01	1931-01-01
1066	nm0266714	Dorothy Fane	1889-01-01	1976-01-01
1210	nm0279038	Margarita Fischer	1886-01-01	1975-01-01
1323	nm0279475	Edna Fisher	1891-01-01	1978-01-01
254	nm0280432	Lewin Fitzhamon	1869-01-01	1961-01-01
75	nm0280615	Bob Fitzsimmons	1863-01-01	1917-01-01
868	nm0280746	Solborg Fjeldsøe Rasmussen	\N	\N
1524	nm0282348	Hugo Flink	1879-01-01	1947-01-01
762	nm0285961	Victoria Forde	1896-01-01	1964-01-01
1785	nm0289317	Earle Foxe	1887-01-01	1973-01-01
788	nm0294022	Elvira Fremont	\N	\N
486	nm0294276	Theo Frenkel	1871-01-01	1956-01-01
1144	nm0295457	Berta Friedrichová	1892-01-01	1975-01-01
465	nm0298301	Mary Fuller	1888-01-01	1973-01-01
832	nm0304862	Ferruccio Garavaglia	1868-01-01	1912-01-01
1207	nm0308551	Claude Garry	1877-01-01	1918-01-01
1054	nm0309163	Louis J. Gasnier	1875-01-01	1963-01-01
1285	nm0310375	Théophile Gautier	1811-01-01	1872-01-01
507	nm0311375	George Gebhardt	1879-01-01	1919-01-01
1492	nm0314521	Edward German	1862-01-01	1936-01-01
719	nm0316220	Joseph Giampietro	1866-01-01	1913-01-01
1166	nm0316995	Hoot Gibson	1892-01-01	1962-01-01
362	nm0317210	W.A. Gibson	1870-01-01	1929-01-01
930	nm0319483	Pauline Gilmer	1899-01-01	1993-01-01
1290	nm0320681	Joseph W. Girard	1871-01-01	1949-01-01
193	nm0324073	Nicolas Godin	1969-01-01	\N
1764	nm0325670	Sidney M. Goldin	1878-01-01	1937-01-01
1477	nm0326341	Zina Goldsztejn	\N	\N
1599	nm0329822	Georges Gorby	1862-01-01	1948-01-01
524	nm0331049	Charles Gorman	1865-01-01	1928-01-01
1253	nm0334873	Ethel Grandin	1894-01-01	1988-01-01
960	nm0336910	Robert Gray	1881-01-01	1963-01-01
92	nm0338379	Tom Green	1852-01-01	1942-01-01
755	nm0339765	Carl Gregory	1882-01-01	1951-01-01
1223	nm0340045	Frida Greiff	\N	\N
1365	nm0342303	Wilhelm Grimm	1786-01-01	1859-01-01
463	nm0347320	Àngel Guimerà	1847-01-01	1924-01-01
569	nm0349492	Eliseo Gutiérrez	1885-01-01	1929-01-01
977	nm0352726	William F. Haddock	1877-01-01	1969-01-01
195	nm0353576	William Haggar	1851-01-01	1925-01-01
117	nm0353584	H. Rider Haggard	1856-01-01	1925-01-01
351	nm0354726	Louis Halberstadt	1880-01-01	1961-01-01
1050	nm0359688	Octavia Handworth	1887-01-01	1978-01-01
1720	nm0361343	Olaf Hanson	\N	\N
821	nm0364516	Caroline Harris	1866-01-01	1937-01-01
1510	nm0365121	Mildred Harris	1901-01-01	1944-01-01
1378	nm0365428	Wadsworth Harris	1864-01-01	1942-01-01
772	nm0366511	Ruth Hart	1886-01-01	1952-01-01
426	nm0366609	Betty Harte	1882-01-01	1965-01-01
1796	nm0368563	Carey L. Hastings	1867-01-01	1944-01-01
692	nm0369058	Raymond Hatton	1887-01-01	1971-01-01
1079	nm0370426	Nathaniel Hawthorne	1804-01-01	1864-01-01
1553	nm0375568	Anna-Lisa Hellström	1887-01-01	1949-01-01
599	nm0376396	Dell Henderson	1883-01-01	1956-01-01
935	nm0376833	Ernest Hendrie	1859-01-01	1929-01-01
253	nm0378407	Barbara Hepworth	1904-01-01	1997-01-01
1062	nm0381005	Aage Hertel	1873-01-01	1944-01-01
1343	nm0383382	Ernest Higgins	1871-01-01	1945-01-01
1586	nm0386853	Charles Hitchcock	1876-01-01	1960-01-01
1239	nm0392059	Stuart Holmes	1884-01-01	1971-01-01
1613	nm0394399	E. Mason Hopper	1885-01-01	1967-01-01
765	nm0395438	David Horsley	1873-01-01	1933-01-01
621	nm0401368	Gladys Hulette	1896-01-01	1991-01-01
1494	nm0404980	Harry Hyde	\N	\N
48	nm0410331	Washington Irving	1783-01-01	1859-01-01
277	nm0419327	Victorin-Hippolyte Jasset	1862-01-01	1913-01-01
1093	nm0421443	Frederik Jensen	1863-01-01	1934-01-01
339	nm0421454	Gerda Jensen	\N	\N
1397	nm0421656	Richard Jensen	1883-01-01	1935-01-01
839	nm0421945	Rigmor Jerichau	1887-01-01	1960-01-01
469	nm0424530	Arthur V. Johnson	1876-01-01	1916-01-01
1653	nm0426790	Moffat Johnston	1886-01-01	1935-01-01
39	nm0435118	Kaiser Wilhelm II	1859-01-01	1941-01-01
1478	nm0436704	Ester Rachel Kaminska	1870-01-01	1925-01-01
490	nm0448667	Betty Kent	\N	\N
1203	nm0449857	J. Warren Kerrigan	1879-01-01	1947-01-01
336	nm0454375	King Frederik VIII	1843-01-01	1912-01-01
1646	nm0454936	Karl King	\N	\N
1104	nm0455544	Pierce Kingsley	1872-01-01	1936-01-01
684	nm0456804	James Kirkwood	1876-01-01	1963-01-01
1773	nm0459142	Frank E. Kleinschmidt	1871-01-01	1949-01-01
160	nm0462306	Geneviève Koch	\N	\N
1374	nm0470307	Henry Krauss	1866-01-01	1935-01-01
1138	nm0471787	Vladimir Krivtsov	\N	\N
96	nm0471818	Jan Krízenecký	1868-01-01	1921-01-01
1226	nm0478753	Axel de la Motte	1879-01-01	1937-01-01
495	nm0483056	Albert Lambert	1865-01-01	1941-01-01
1487	nm0483846	William Lampe	\N	\N
1681	nm0483943	Fritz Lamprecht	1883-01-01	1941-01-01
1008	nm0486197	Sven Lange	1862-01-01	1930-01-01
1190	nm0492280	Albin Lavén	1861-01-01	1917-01-01
494	nm0494039	Charles Le Bargy	1858-01-01	1936-01-01
424	nm0502752	Robert Z. Leonard	1889-01-01	1968-01-01
833	nm0503227	Vittoria Lepanto	1885-01-01	1965-01-01
1042	nm0504353	George Lessey	1875-01-01	1947-01-01
1631	nm0504490	Louise Lester	1867-01-01	1952-01-01
1286	nm0505354	Joseph Levering	1874-01-01	1943-01-01
1481	nm0508870	Zalmen Libin	\N	\N
1614	nm0511143	W.J. Lincoln	1870-01-01	1917-01-01
1186	nm0511602	Gustaf Linden	1875-01-01	1936-01-01
773	nm0511729	Max Linder	1883-01-01	1925-01-01
1509	nm0514517	Ann Little	1891-01-01	1984-01-01
566	nm0518711	Jack London	1876-01-01	1916-01-01
220	nm0519303	Henry Wadsworth Longfellow	1807-01-01	1882-01-01
1341	nm0519315	Raymond Longford	1878-01-01	1959-01-01
1457	nm0519675	Charles Battell Loomis	1861-01-01	1911-01-01
41	nm0525907	Antoine Lumière	1840-01-01	1911-01-01
1192	nm0526189	Jutta Lund	1875-01-01	1971-01-01
1768	nm0526606	Birger Lundstedt	1882-01-01	1916-01-01
769	nm0531584	Marc McDermott	1871-01-01	1929-01-01
1089	nm0532072	Fred Mace	1878-01-01	1917-01-01
818	nm0532622	Alfred Machin	1877-01-01	1929-01-01
1335	nm0533000	Hughie Mack	1884-01-01	1927-01-01
1648	nm0533829	James Maclean	\N	\N
444	nm0533958	Charles MacMahon	1861-01-01	1917-01-01
934	nm0535508	Maurice Maeterlinck	1862-01-01	1949-01-01
139	nm0536252	Pierre Magnier	1869-01-01	1959-01-01
641	nm0538186	Charles Major	1856-01-01	1913-01-01
159	nm0542567	Charles Manley	1830-01-01	1916-01-01
562	nm0542903	Nathaniel D. Mann	\N	\N
1480	nm0546378	Andrzej Marek	1880-01-01	1943-01-01
1625	nm0548987	Willis Marks	1865-01-01	1952-01-01
1400	nm0558869	Maurice Mathieu	1906-01-01	\N
822	nm0560943	Guy de Maupassant	1850-01-01	1893-01-01
141	nm0561109	Clément Maurice	1853-01-01	1933-01-01
965	nm0561126	Mary Maurice	1844-01-01	1918-01-01
589	nm0561489	Édouard de Max	1869-01-01	1924-01-01
1652	nm0561616	Eric Maxon	1882-01-01	1963-01-01
1793	nm0561637	Max Maxudian	1881-01-01	1976-01-01
1152	nm0569466	Frank McGlynn Sr.	1866-01-01	1951-01-01
1565	nm0573137	George McManus	1884-01-01	1954-01-01
280	nm0579494	Henri Ménessier	1882-01-01	1948-01-01
982	nm0580197	Louis Mercanton	1879-01-01	1932-01-01
1616	nm0582212	Howard Missimer	1867-01-01	1917-01-01
324	nm0582268	Oskar Messter	1866-01-01	1943-01-01
852	nm0584273	Sophus Michaëlis	1865-01-01	1932-01-01
643	nm0587134	Herbert Miles	\N	\N
1355	nm0587929	Ashley Miller	1867-01-01	1949-01-01
1274	nm0589616	Bertram Millhauser	1892-01-01	1958-01-01
1439	nm0595713	Victor Mogens	\N	\N
531	nm0600341	Carlo Montuori	1885-01-01	1968-01-01
345	nm0601940	Thomas Moore	1779-01-01	1852-01-01
795	nm0603447	Émile Moreau	1877-01-01	1959-01-01
751	nm0609814	Jean Mounet-Sully	1841-01-01	1916-01-01
1174	nm0612071	Johnnie Mullens	1884-01-01	1978-01-01
672	nm0613286	Señora Muntal	\N	\N
1697	nm0615670	George Musgrove	1854-01-01	1916-01-01
170	nm0617272	Emilia Márkus	1860-01-01	1949-01-01
46	nm0617588	Georges Méliès	1861-01-01	1938-01-01
1349	nm0617737	Prosper Mérimée	1803-01-01	1870-01-01
826	nm0618000	Valdemar Møller	1885-01-01	1947-01-01
1391	nm0623344	Ernesto Nazareth	1863-01-01	1934-01-01
421	nm0624446	Fernanda Negri Pouget	1889-01-01	1955-01-01
835	nm0626131	Alberto Nepoti	1876-01-01	1937-01-01
1061	nm0627274	Alwin Neuß	1879-01-01	1935-01-01
516	nm0629589	George Nichols	1864-01-01	1927-01-01
899	nm0630641	Marie Niedermann	1880-01-01	1967-01-01
1328	nm0630927	Mathilde Nielsen	1858-01-01	1945-01-01
172	nm0632577	Emilia Nirschy	1889-01-01	1976-01-01
1161	nm0633690	Dolly Nobles	1861-01-01	1930-01-01
1279	nm0640311	Edward O'Connor	1862-01-01	1932-01-01
393	nm0642722	Anthony O'Sullivan	1855-01-01	1920-01-01
1227	nm0645095	Wilgot Ohlsson	1859-01-01	\N
660	nm0646844	Francisco Oliver	\N	\N
1714	nm0647682	Jerome J. Olsen	\N	\N
1046	nm0653174	Rasmus Ottesen	1871-01-01	1957-01-01
1504	nm0653253	Henry Otto	1877-01-01	1952-01-01
619	nm0656425	Alfred Paget	1879-01-01	1919-01-01
926	nm0657635	William 'Daddy' Paley	1843-01-01	1924-01-01
236	nm0659947	Paul Panzer	1872-01-01	1958-01-01
1779	nm0662900	Al Parks	\N	\N
367	nm0665572	Charles Pathé	1863-01-01	1957-01-01
37	nm0666972	Robert W. Paul	1869-01-01	1943-01-01
726	nm0674185	Charles Perley	1885-01-01	1933-01-01
157	nm0675239	Orrie Perry	1888-01-01	1950-01-01
867	nm0675241	Pansy Perry	1887-01-01	1952-01-01
158	nm0675260	Reg Perry	1890-01-01	1981-01-01
844	nm0677609	Valentine Petit	1873-01-01	1951-01-01
1265	nm0679170	Gerardo Peña	\N	\N
1038	nm0680232	Augustus Phillips	1874-01-01	1952-01-01
845	nm0681927	Jack Pickford	1895-01-01	1933-01-01
601	nm0681933	Mary Pickford	1892-01-01	1979-01-01
1465	nm0682784	Leo Pierson	1888-01-01	1943-01-01
1124	nm0684208	António Pinheiro	1867-01-01	1943-01-01
1583	nm0688764	Juana Pola	\N	\N
321	nm0691995	Henny Porten	1890-01-01	1960-01-01
98	nm0692105	Edwin S. Porter	1870-01-01	1941-01-01
993	nm0693685	Adam Poulsen	1879-01-01	1969-01-01
313	nm0696078	Eugene Wiley Presbrey	1853-01-01	1931-01-01
971	nm0697512	Suzy Prim	1896-01-01	1991-01-01
996	nm0699807	Dolores Puchol	\N	\N
740	nm0701090	Alexander Pushkin	1799-01-01	1837-01-01
451	nm0706854	Teppo Raikas	1883-01-01	1916-01-01
827	nm0711337	Holger Rasmussen	1870-01-01	1926-01-01
1549	nm0711688	Guy Rathbone	1884-01-01	1916-01-01
1409	nm0713748	Isabel Rea	1889-01-01	\N
78	nm0714557	Enoch J. Rector	1863-01-01	1957-01-01
1544	nm0723801	Frida Richard	1873-01-01	1946-01-01
1593	nm0725520	Mrs. Tom Ricketts	1868-01-01	1939-01-01
1303	nm0725529	Tom Ricketts	1853-01-01	1939-01-01
1111	nm0727482	Ellen Rindom	1877-01-01	1922-01-01
403	nm0727622	Viking Ringheim	1880-01-01	1954-01-01
1410	nm0728158	Antonio Riquelme	1894-01-01	1968-01-01
555	nm0729044	Duque de Rivas	1791-01-01	1865-01-01
564	nm0732651	Gertrude Robinson	1890-01-01	1962-01-01
906	nm0733735	Madeleine Roch	1883-01-01	1930-01-01
947	nm0735628	Ricardo Rodríguez Flores	\N	\N
1325	nm0740351	Patrick Rooney	1889-01-01	1933-01-01
377	nm0741382	Frank Oakes Rose	1849-01-01	1922-01-01
1065	nm0742120	Carl Rosenbaum	1885-01-01	1961-01-01
659	nm0749659	Emilio Ruiz Santiago	\N	\N
1711	nm0751291	Lillian Russell	1860-01-01	1922-01-01
1200	nm0752754	Mrs. James H. Ryan	\N	\N
1168	nm0764002	Carlos Santos	1871-01-01	1949-01-01
796	nm0765026	Victorien Sardou	1831-01-01	1908-01-01
545	nm0768187	Laura Sawyer	1885-01-01	1970-01-01
1751	nm0768233	Warren Sawyer	1877-01-01	1952-01-01
1461	nm0769584	Anne Schaefer	1870-01-01	1957-01-01
851	nm0772797	Albrecht Schmidt	1870-01-01	1945-01-01
1300	nm0773654	Eduard Schnedler-Sørensen	1886-01-01	1947-01-01
412	nm0777939	Bernhard Schwidewski	1885-01-01	1966-01-01
785	nm0779797	Walter Scott	1771-01-01	1832-01-01
200	nm0783152	William Nicholas Selig	1864-01-01	1948-01-01
122	nm0784327	Dora Tulloch	1878-01-01	1945-01-01
583	nm0786076	Ernest Thompson Seton	1860-01-01	1946-01-01
1632	nm0789401	Vladimir Shaternikov	\N	1914-01-01
1039	nm0791217	Mary Shelley	1797-01-01	1851-01-01
261	nm0792727	J. Barney Sherry	1874-01-01	1944-01-01
823	nm0797094	George Siegmann	1882-01-01	1928-01-01
20	nm0804434	Max Skladanowsky	1863-01-01	1939-01-01
1500	nm0806961	Joseph W. Smiley	1870-01-01	1945-01-01
759	nm0807358	Arthur Smith	\N	1958-01-01
91	nm0809419	Laura Bayley	1862-01-01	1938-01-01
286	nm0813578	Juan Solsona	\N	\N
405	nm0814379	Petrine Sonne	1870-01-01	1946-01-01
812	nm0817414	Georges Specht	\N	\N
1437	nm0818259	Robert Sperati	1872-01-01	1945-01-01
1100	nm0822493	Henry Stanley	1864-01-01	\N
1332	nm0823088	Wladyslaw Starewicz	1882-01-01	1965-01-01
1074	nm0829615	Lucille Lee Stewart	1889-01-01	1982-01-01
1692	nm0829692	Nellie Stewart	1858-01-01	1931-01-01
512	nm0832458	Edith Storey	1892-01-01	1967-01-01
229	nm0832952	Harriet Beecher Stowe	1811-01-01	1896-01-01
1129	nm0832968	William Stowell	1885-01-01	1919-01-01
828	nm0834325	Oscar Stribolt	1873-01-01	1927-01-01
1803	nm0838052	Edward P. Sullivan	1854-01-01	1928-01-01
629	nm0839374	Marion Sunshine	1894-01-01	1963-01-01
94	nm0841389	Josef Sváb-Malostranský	1860-01-01	1932-01-01
1606	nm0842976	Louise Sydmeth	1868-01-01	1938-01-01
1036	nm0845396	Gaston Séverin	1879-01-01	1962-01-01
411	nm0845662	Axel Sørensen	\N	\N
358	nm0846894	John Tait	1871-01-01	1955-01-01
1361	nm0848065	Mabel Taliaferro	1887-01-01	1979-01-01
941	nm0852022	Belle Taylor	\N	\N
472	nm0853193	Stanner E.V. Taylor	1877-01-01	1948-01-01
1251	nm0854948	Marie Tener	1891-01-01	\N
1466	nm0856842	William Makepeace Thackeray	1811-01-01	1863-01-01
1214	nm0864931	Genevieve Tobin	1899-01-01	1995-01-01
1350	nm0867118	Kate Toncray	1867-01-01	1927-01-01
546	nm0872279	Francisco Tressols	\N	\N
642	nm0874364	Mabel Trunnelle	1879-01-01	1981-01-01
59	nm0874746	Tsarina Alexandra	1872-01-01	1918-01-01
1707	nm0878039	Carrie Turpin	1882-01-01	1925-01-01
181	nm0881616	Charles Urban	1867-01-01	1942-01-01
454	nm0882755	J. V-s	\N	\N
1733	nm0883519	Robert Valberg	1884-01-01	1955-01-01
1148	nm0885818	Mabel Van Buren	1878-01-01	1947-01-01
1489	nm0888482	Violet Vanbrugh	1867-01-01	1942-01-01
799	nm0888708	Jacques Vandenne	\N	\N
974	nm0890993	Simone Vaudry	1906-01-01	1993-01-01
704	nm0892682	Luz Veloso	1880-01-01	1962-01-01
287	nm0896066	José Vico	\N	\N
606	nm0897085	Robert G. Vignola	1882-01-01	1953-01-01
636	nm0900111	Giovanni Vitrotti	1874-01-01	1966-01-01
1379	nm0905629	William Wadsworth	1874-01-01	1950-01-01
394	nm0906197	Georges Wague	1874-01-01	1965-01-01
1587	nm0910388	William Walters	1884-01-01	1944-01-01
616	nm0910400	Henry B. Walthall	1878-01-01	1936-01-01
933	nm0911311	E.A. Warburton	1867-01-01	1914-01-01
1556	nm0914772	Leonide Watson	\N	\N
1506	nm0916904	Harry McRae Webster	1872-01-01	1940-01-01
1337	nm0917232	Frank Weed	1869-01-01	1944-01-01
1698	nm0917744	Fritz Weidemann	1871-01-01	1919-01-01
881	nm0923603	Theodore Wharton	1875-01-01	1931-01-01
223	nm0924475	Arthur White	1881-01-01	1924-01-01
74	nm0924920	James H. White	1872-01-01	1944-01-01
1334	nm0925404	Roger White	\N	\N
1053	nm0928108	Crane Wilbur	1886-01-01	1973-01-01
513	nm0930504	Earle Williams	1880-01-01	1927-01-01
1057	nm0931031	Kathlyn Williams	1879-01-01	1960-01-01
1732	nm0932878	Max Wilmsen	1885-01-01	1953-01-01
1130	nm0935879	Carl Winterhoff	1874-01-01	1937-01-01
1701	nm0937377	Max Wogritsch	1880-01-01	1951-01-01
915	nm0941542	Jean Worms	1884-01-01	1943-01-01
577	nm0949133	Barry O'Moore	1879-01-01	1945-01-01
1472	nm0949565	George Young	\N	\N
1626	nm0949841	Lucille Young	1883-01-01	1934-01-01
1353	nm0956070	Marison Ziegfeld	\N	\N
187	nm0957652	Émile Zola	1840-01-01	1902-01-01
661	nm0959358	Serafín Álvarez Quintero	1871-01-01	1938-01-01
413	nm1003261	Alexander Christian	1881-01-01	1937-01-01
154	nm1012621	John Jones	\N	\N
1031	nm1014493	Alfredo Bracci	\N	\N
1346	nm1014629	Charles Cozens Spencer	1874-01-01	1930-01-01
230	nm10342565	Randolph Feelgood	\N	\N
1240	nm1037251	Caldwell	\N	\N
135	nm10501864	Mme. Ondine	\N	\N
825	nm1069398	Edvard Jacobsen	1879-01-01	1941-01-01
748	nm1069712	Agnes Lorentzen	1874-01-01	1947-01-01
1014	nm1071728	Victoria Petersen	1865-01-01	1944-01-01
1665	nm1092681	Lassie	\N	\N
674	nm1102226	Walter E. Seig	\N	\N
1533	nm1166458	F.E. Montgomery	\N	\N
237	nm1173635	H. Kyrle Bellew	1850-01-01	1911-01-01
1271	nm1190291	Albert McGovern	1882-01-01	\N
628	nm12011828	Suzanne Faes	\N	\N
332	nm1210247	J.H. Martin	1874-01-01	\N
715	nm1234058	F. Reinhardt	\N	\N
711	nm1234552	S. Tarasov	\N	\N
1107	nm1234686	Walter Turszinsky	1874-01-01	1915-01-01
886	nm1261170	Hans Neergaard	1865-01-01	1926-01-01
1064	nm1266292	Oscar Langkilde	1874-01-01	1953-01-01
608	nm1266491	Mrs. Wallace McCutcheon	1866-01-01	1936-01-01
140	nm1267013	Suzanne Seylor	\N	\N
1595	nm1287215	Florence Fitzroy	\N	\N
16	nm1309758	Chauncey Depew	1834-01-01	1928-01-01
1740	nm1322742	Suzanne Erandis	\N	\N
908	nm1335492	Mademoiselle Rianza	\N	\N
227	nm1340310	Madame d'Aulnoy	\N	\N
1545	nm1356916	Grete Weixler	\N	\N
1045	nm1358884	Ellen Aggerholm	1882-01-01	1963-01-01
1384	nm1364707	Virginia K. Tucker	\N	\N
1666	nm1384776	Imp the Dog	\N	\N
968	nm1398184	Fred Ilenstine	1889-01-01	1968-01-01
756	nm1399761	George Creel	1876-01-01	1953-01-01
1163	nm1403670	Elmer Thompson	\N	\N
359	nm1431224	Nicholas Brierley	1880-01-01	1935-01-01
518	nm1459190	Otto Lagoni	1868-01-01	1944-01-01
1	nm1588970	Carmencita	1868-01-01	1910-01-01
1728	nm1627778	Holger Hofmann	1868-01-01	1929-01-01
343	nm1669708	H.L. Bascomb	\N	\N
337	nm1678676	I.C. Christensen	1856-01-01	1930-01-01
743	nm1747784	Francisco I. Madero	1873-01-01	1913-01-01
1371	nm1760275	Gertrudes Lima	\N	\N
6	nm1770680	Julien Pappé	1920-01-01	2005-01-01
1081	nm1833881	Doris Langkilde	1874-01-01	1946-01-01
402	nm1834127	Maggi Zinn	1873-01-01	\N
903	nm1834296	Axel Garde	1876-01-01	1958-01-01
1235	nm1851951	Oda Nielsen	1851-01-01	1936-01-01
214	nm1854449	Victor Betzonich	1864-01-01	1901-01-01
614	nm1865342	Miss Earle	\N	\N
106	nm1997201	Maria Christina of Austria	1858-01-01	1929-01-01
342	nm2014119	Walter Griswoll	\N	\N
955	nm2080582	Júlio Santos	\N	\N
585	nm2088653	Augustus Marvin	\N	\N
737	nm2161079	Mariya Korolyova	\N	\N
123	nm2259742	Charles Sefton	1884-01-01	1971-01-01
210	nm2313241	John Manus Dougherty Sr.	1885-01-01	\N
1686	nm2325688	Mary Hagen	\N	\N
305	nm2332493	Sarah Haggar	1851-01-01	1909-01-01
1198	nm2421318	Ingeborg Rasmussen	1868-01-01	1926-01-01
1088	nm2558325	Alfi Zangenberg	1882-01-01	1966-01-01
391	nm2718103	Agnes Nørlund Seemann	1882-01-01	1973-01-01
1479	nm2786180	Mojzesz Szpiro	\N	\N
21	nm2880396	Madeleine Koehler	1895-01-01	1970-01-01
666	nm2931813	Anton Seitzberg	1863-01-01	1917-01-01
50	nm2960633	Scoops Carey	\N	\N
45	nm3692479	Ancion	\N	\N
1122	nm4022057	Agostinho de Gouvea	\N	\N
76	nm4082222	Billy Madden	1852-01-01	1918-01-01
194	nm4491570	Octavio Vázquez	\N	\N
639	nm4536361	Cameron highlanders' Band	\N	\N
1729	nm4798267	Ljut Steensgaard	\N	\N
350	nm4824625	Idon Hartvig	1888-01-01	1974-01-01
233	nm5121475	René Serand	\N	\N
1005	nm5164103	Johanne Dinesen	1882-01-01	1930-01-01
898	nm5190017	Th.S. Hermansen	\N	\N
649	nm5217821	Trine Wulff	\N	\N
1194	nm5223669	Vilhelm Poss-Nielsen	1866-01-01	1943-01-01
1420	nm5239866	Ane Marie Christiansen	\N	\N
120	nm6010696	Percy Anderson	1851-01-01	1928-01-01
1671	nm7625270	Charles White	\N	\N
70	nm9342429	Octavie Huvier	\N	\N
22	nm9735580	Marcel Koehler	\N	\N
952	nm9880573	Isabel Ferreira	\N	\N
\.


--
-- Data for Name: movies_personmovie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_personmovie (id, "order", category, job, characters, movie_id, person_id) FROM stdin;
1	1	self	\\N	{Self}	1	1
2	2	director	\\N	{}	1	2
3	3	cinematographer	director of photography	{}	1	3
4	1	director	\\N	{}	2	4
5	2	composer	\\N	{}	2	5
6	1	director	\\N	{}	3	4
7	2	producer	producer	{}	3	6
8	3	composer	\\N	{}	3	5
9	4	editor	\\N	{}	3	7
10	1	director	\\N	{}	4	4
11	2	composer	\\N	{}	4	5
12	1	actor	\\N	{Blacksmith}	5	8
13	2	actor	\\N	{Assistant}	5	9
14	3	director	\\N	{}	5	2
15	4	producer	producer	{}	5	10
16	1	director	\\N	{}	6	2
17	1	actor	\\N	{}	7	11
18	2	actor	\\N	{}	7	12
19	3	director	\\N	{}	7	2
20	4	director	\\N	{}	7	3
21	5	producer	producer	{}	7	10
22	1	actor	\\N	{"Sneezing Man"}	8	13
23	2	director	\\N	{}	8	2
24	3	cinematographer	\\N	{}	8	3
25	1	actress	\\N	{"Miss Geraldine Holbrook (Miss Jerry)"}	9	14
26	2	actor	\\N	{"Mr. Hamilton"}	9	15
27	3	actor	\\N	{"Chauncey Depew - the Director of the New York Central Railroad"}	9	16
28	4	director	\\N	{}	9	17
29	1	director	\\N	{}	10	18
30	1	actor	\\N	{Acrobats}	11	19
31	2	director	\\N	{}	11	20
32	1	self	\\N	{Self}	12	21
33	2	self	\\N	{Self}	12	22
34	3	self	\\N	{Self}	12	23
35	4	self	\\N	{Self}	12	24
36	5	director	\\N	{}	12	25
37	6	director	\\N	{}	12	18
38	7	self	\\N	{Self}	12	26
39	8	self	\\N	{Self}	12	27
40	1	self	\\N	{Self}	13	25
41	2	self	\\N	{Self}	13	28
42	3	director	\\N	{}	13	18
43	1	actor	\\N	{"The Gardener"}	14	29
44	2	actor	\\N	{"The Boy"}	14	30
45	3	director	\\N	{}	14	18
46	1	director	\\N	{}	15	4
47	1	self	\\N	{"Self (on the pier)"}	16	23
48	2	self	\\N	{"Self (on the pier)"}	16	24
49	3	director	\\N	{}	16	18
50	1	actor	\\N	{"The boy"}	17	31
51	2	actress	\\N	{"The girl"}	17	32
52	3	director	\\N	{}	17	33
53	4	director	\\N	{}	17	20
54	1	actor	\\N	{"The Boxer"}	18	34
55	2	director	\\N	{}	18	20
56	1	director	\\N	{}	19	35
57	1	director	\\N	{}	20	36
58	2	producer	producer	{}	20	37
59	1	director	\\N	{}	21	18
60	1	director	\\N	{}	22	18
61	1	self	\\N	{"Self - Empress of Gemany"}	23	38
62	2	self	\\N	{"Self - Emperor of Germany"}	23	39
63	3	director	\\N	{}	23	36
64	4	producer	producer	{}	23	37
65	1	director	\\N	{}	24	36
66	2	producer	producer	{}	24	37
67	1	actor	\\N	{Valet}	25	40
68	2	actor	\\N	{"Man playing cards, seated on the left"}	25	41
69	3	actor	\\N	{"Man playing cards, seated on the right"}	25	42
70	4	actor	\\N	{"Man playing cards, seated in the middle"}	25	43
71	5	director	\\N	{}	25	18
72	1	director	\\N	{}	26	18
73	1	self	\\N	{Self}	27	44
74	2	self	\\N	{Self}	27	25
75	3	director	\\N	{}	27	18
76	1	self	\\N	{Self}	28	25
77	2	self	\\N	{Self}	28	23
78	3	self	\\N	{Self}	28	44
79	4	director	\\N	{}	28	18
80	1	director	\\N	{}	29	36
81	2	director	\\N	{}	29	37
82	1	director	\\N	{}	30	18
83	1	actress	\\N	{"The dancer"}	31	45
84	2	director	\\N	{}	31	20
85	1	director	\\N	{}	32	18
86	1	director	\\N	{}	33	46
87	1	director	\\N	{}	34	46
88	1	actor	\\N	{"Rip Van Winkle"}	35	47
89	2	director	\\N	{}	35	2
90	3	writer	story "Rip Van Winkle"	{}	35	48
91	4	cinematographer	\\N	{}	35	49
92	1	director	\\N	{}	36	46
93	1	self	\\N	{"Self - First baseman"}	37	50
94	2	self	\\N	{Self}	37	51
95	3	self	\\N	{Self}	37	52
96	4	director	\\N	{}	37	3
97	1	producer	producer	{}	38	37
98	1	director	\\N	{}	39	46
99	1	director	\\N	{}	40	18
100	2	producer	producer	{}	40	25
101	1	director	\\N	{}	41	46
102	1	director	\\N	{}	42	46
103	1	director	\\N	{}	43	46
104	1	director	\\N	{}	44	46
105	1	director	\\N	{}	45	46
106	1	director	\\N	{}	46	46
107	1	director	\\N	{}	47	36
108	1	director	\\N	{}	48	36
109	1	self	\\N	{Self}	49	53
110	2	director	\\N	{}	49	46
111	1	director	\\N	{}	50	46
112	1	director	\\N	{}	51	54
113	2	cinematographer	\\N	{}	51	55
114	1	director	\\N	{}	52	56
115	1	director	\\N	{}	53	46
116	1	director	\\N	{}	54	46
117	1	director	\\N	{}	55	57
118	1	self	\\N	{"Self (Tsar of Russia)"}	56	58
119	2	self	\\N	{"Self (Tsarina of Russia)"}	56	59
120	3	director	\\N	{}	56	46
121	1	self	\\N	{"Self (Tsar of Russia)"}	57	58
122	2	director	\\N	{}	57	46
123	1	director	\\N	{}	58	46
124	1	director	\\N	{}	59	2
125	2	cinematographer	\\N	{}	59	49
126	1	actress	\\N	{}	60	60
127	2	director	\\N	{}	60	36
128	3	producer	producer	{}	60	37
129	1	director	\\N	{}	61	46
130	1	actor	\\N	{"Georges Méliès"}	62	46
131	1	actor	\\N	{"Lightening Sketch Artist"}	63	46
132	1	actor	\\N	{"Lightening Sketch Artist"}	64	46
133	1	actor	\\N	{"Lightening Sketch Artist"}	65	46
134	1	director	\\N	{}	66	46
135	1	director	\\N	{}	67	46
136	1	director	\\N	{}	68	46
137	1	actor	\\N	{}	69	25
138	2	director	\\N	{}	69	18
139	1	director	\\N	{}	70	46
140	1	director	\\N	{}	71	46
141	1	director	\\N	{}	72	46
142	1	director	\\N	{}	73	46
143	1	actress	\\N	{Woman}	74	61
144	2	actor	\\N	{Magician}	74	46
145	1	actor	\\N	{"Rip Van Winkle"}	75	47
146	2	director	\\N	{}	75	2
147	3	writer	story "Rip Van Winkle"	{}	75	48
148	4	cinematographer	\\N	{}	75	49
149	1	director	\\N	{}	76	46
150	1	director	\\N	{}	77	62
151	1	director	\\N	{}	78	46
152	1	director	\\N	{}	79	46
153	1	director	\\N	{}	80	46
154	1	director	\\N	{}	81	2
155	2	cinematographer	\\N	{}	81	49
156	1	director	\\N	{}	82	46
157	1	director	\\N	{}	83	46
158	1	director	\\N	{}	84	46
159	1	director	\\N	{}	85	46
160	1	director	\\N	{}	86	46
161	1	director	\\N	{}	87	46
162	1	director	\\N	{}	88	25
163	2	director	\\N	{}	88	63
164	3	producer	producer	{}	88	18
165	1	director	\\N	{}	89	46
166	1	actress	\\N	{"Young woman"}	90	61
167	2	actor	\\N	{Mephistopheles}	90	64
168	3	actor	\\N	{Mephistopheles}	90	46
169	1	director	\\N	{}	91	46
170	1	director	\\N	{}	92	25
171	2	director	\\N	{}	92	18
172	1	self	\\N	{Self}	93	65
173	2	director	\\N	{}	93	46
174	1	director	\\N	{}	94	46
175	1	director	\\N	{}	95	46
176	1	director	\\N	{}	96	46
177	1	director	\\N	{}	97	46
178	1	director	\\N	{}	98	46
179	1	director	\\N	{}	99	46
180	1	director	\\N	{}	100	46
181	1	director	\\N	{}	101	46
182	1	director	\\N	{}	102	46
183	1	producer	producer	{}	103	18
184	1	director	\\N	{}	104	46
185	1	director	\\N	{}	105	46
186	1	director	\\N	{}	106	46
187	1	actor	\\N	{"Rip Van Winkle"}	107	47
188	2	director	\\N	{}	107	2
189	3	writer	story "Rip Van Winkle"	{}	107	48
190	4	cinematographer	\\N	{}	107	49
191	1	actor	\\N	{"Rip Van Winkle"}	108	47
192	2	director	\\N	{}	108	2
193	3	writer	story "Rip Van Winkle"	{}	108	48
194	4	cinematographer	\\N	{}	108	49
195	1	actor	\\N	{"Rip Van Winkle"}	109	47
196	2	director	\\N	{}	109	2
197	3	writer	story "Rip Van Winkle"	{}	109	48
198	4	cinematographer	\\N	{}	109	49
199	1	actor	\\N	{"Rip Van Winkle"}	110	47
200	2	director	\\N	{}	110	2
201	3	writer	story "Rip Van Winkle"	{}	110	48
202	4	cinematographer	\\N	{}	110	49
203	1	actor	\\N	{"Rip Van Winkle"}	111	47
204	2	director	\\N	{}	111	2
205	3	writer	story "Rip Van Winkle"	{}	111	48
206	4	cinematographer	\\N	{}	111	49
207	1	actor	\\N	{"Rip Van Winkle"}	112	47
208	2	director	\\N	{}	112	2
209	3	writer	story "Rip Van Winkle"	{}	112	48
210	4	cinematographer	\\N	{}	112	49
211	1	director	\\N	{}	113	46
212	1	director	\\N	{}	114	46
213	1	director	\\N	{}	115	46
214	1	director	\\N	{}	116	62
215	1	director	\\N	{}	117	46
216	1	director	\\N	{}	118	46
217	1	director	\\N	{}	119	46
218	1	actor	\\N	{"The Soldier"}	120	66
219	2	actress	\\N	{"The Girl"}	120	67
220	3	actress	\\N	{"The Woman"}	120	68
221	4	director	\\N	{}	120	69
222	5	producer	producer	{}	120	37
223	1	director	\\N	{}	121	46
224	1	self	\\N	{"Self (stage magician)"}	122	46
225	1	director	\\N	{}	123	46
226	1	producer	producer	{}	124	37
227	1	director	\\N	{}	125	46
228	1	director	\\N	{}	126	46
229	1	director	\\N	{}	127	46
230	1	director	\\N	{}	128	46
231	1	director	\\N	{}	129	46
232	1	actor	\\N	{"L'homme qui essaie de dormir"}	130	46
233	1	actress	\\N	{"La Serveuse"}	131	70
234	2	actor	\\N	{"Un joueur de cartes"}	131	71
235	3	actor	\\N	{"Un joueur de cartes"}	131	46
236	4	actress	\\N	{"La petite fille"}	131	53
237	1	director	\\N	{}	132	46
238	1	director	\\N	{}	134	2
239	2	cinematographer	\\N	{}	134	49
240	1	director	\\N	{}	135	72
241	1	actor	\\N	{"Inn Guest"}	136	46
242	1	director	\\N	{}	137	72
243	1	director	\\N	{}	138	72
244	1	director	\\N	{}	139	72
245	1	actor	\\N	{}	140	73
246	2	director	\\N	{}	140	74
247	3	cinematographer	\\N	{}	140	3
248	1	director	\\N	{}	141	72
249	1	director	\\N	{}	142	72
250	1	director	\\N	{}	143	72
251	1	director	\\N	{}	144	72
252	1	self	\\N	{Self}	145	11
253	2	self	\\N	{Self}	145	75
254	3	self	\\N	{"Self - Sullivan's Manager"}	145	76
255	4	self	\\N	{"Self - Referee"}	145	77
256	5	director	\\N	{}	145	78
257	6	producer	producer	{}	145	79
258	7	self	\\N	{"Self - Master of Ceremonies"}	145	80
259	1	director	\\N	{}	146	72
260	1	director	\\N	{}	147	46
261	1	director	\\N	{}	148	72
262	1	actress	\\N	{}	149	61
263	2	director	\\N	{}	149	46
264	1	actor	\\N	{}	150	46
265	1	director	\\N	{}	151	81
266	1	director	\\N	{}	152	36
267	1	director	\\N	{}	153	46
268	1	director	\\N	{}	154	46
269	1	director	\\N	{}	155	72
270	1	director	\\N	{}	156	72
271	1	director	\\N	{}	157	46
272	1	director	\\N	{}	158	82
273	2	producer	producer	{}	158	37
274	1	director	\\N	{}	159	72
275	1	director	\\N	{}	160	63
276	2	producer	producer	{}	160	25
277	3	producer	producer	{}	160	18
278	1	director	\\N	{}	161	72
279	1	director	\\N	{}	162	72
280	1	actor	\\N	{}	163	83
281	2	actor	\\N	{}	163	84
282	3	actor	\\N	{}	163	85
283	4	actor	\\N	{}	163	86
284	5	cinematographer	\\N	{}	163	87
285	6	actor	\\N	{}	163	88
286	1	director	\\N	{}	164	85
287	1	director	\\N	{}	165	89
288	1	director	\\N	{}	166	85
289	1	director	\\N	{}	167	63
290	2	producer	producer	{}	167	90
291	1	director	\\N	{}	168	37
292	1	director	\\N	{}	169	72
293	1	actress	\\N	{}	170	91
294	2	actor	\\N	{Professor}	170	92
295	3	director	\\N	{}	170	81
296	1	director	\\N	{}	171	93
297	1	actor	\\N	{"Sausage Vendor"}	172	94
298	2	actor	\\N	{Sticker}	172	95
299	3	director	\\N	{}	172	96
300	1	director	\\N	{}	173	57
301	2	producer	producer	{}	173	37
302	1	producer	producer	{}	174	37
303	1	actor	\\N	{"The Burglar"}	175	93
304	2	cinematographer	\\N	{}	175	97
305	1	director	\\N	{}	176	98
306	1	director	\\N	{}	177	46
307	1	director	\\N	{}	178	72
308	1	actress	\\N	{Cinderella}	179	91
309	2	director	\\N	{}	179	81
310	3	writer	story "Cendrillon"	{}	179	99
311	1	director	\\N	{}	180	37
312	1	director	\\N	{}	181	81
313	2	writer	novel	{}	181	100
314	1	director	\\N	{}	182	74
315	1	director	\\N	{}	183	72
316	1	director	\\N	{}	184	46
317	1	director	\\N	{}	185	72
318	1	director	\\N	{}	186	37
319	1	director	\\N	{}	187	85
320	1	actor	\\N	{"Old Philanderer"}	188	94
321	2	actor	\\N	{"Man with Broom"}	188	95
322	3	director	\\N	{}	188	96
323	1	director	\\N	{}	189	72
324	1	self	\\N	{Self}	190	101
325	2	director	\\N	{}	190	74
326	3	writer	novel "Trilby"	{}	190	102
327	4	cinematographer	\\N	{}	190	3
328	1	director	\\N	{}	191	72
329	1	director	\\N	{}	192	103
330	1	director	\\N	{}	193	72
331	1	director	\\N	{}	194	81
332	2	writer	novel	{}	194	104
333	1	director	\\N	{}	195	72
334	1	director	\\N	{}	196	72
335	1	producer	producer	{}	197	37
336	1	self	\\N	{Self}	198	105
337	1	self	\\N	{Self}	199	73
338	2	director	\\N	{}	199	2
339	3	producer	producer	{}	199	10
340	1	director	\\N	{}	200	72
341	1	director	\\N	{}	201	72
342	1	director	\\N	{}	202	72
343	1	director	\\N	{}	203	72
344	1	director	\\N	{}	204	85
345	1	producer	producer	{}	205	37
346	1	director	\\N	{}	206	81
347	1	director	\\N	{}	207	81
348	1	actor	\\N	{}	208	46
349	1	actress	\\N	{"Phoebe - la bonne fée"}	209	61
350	2	actor	\\N	{L'astronome}	209	46
351	1	director	\\N	{}	210	57
352	1	director	\\N	{}	211	72
353	1	actor	\\N	{"Hand that tears down the Spanish flag"}	212	93
354	2	producer	producer	{}	212	97
355	1	actor	\\N	{}	213	94
356	2	director	\\N	{}	213	96
357	1	self	\\N	{Self}	214	106
358	2	self	\\N	{Self}	214	107
359	3	director	\\N	{}	214	85
360	1	director	\\N	{}	215	81
361	1	actor	\\N	{"Fernand Labori"}	216	46
362	1	director	\\N	{}	217	81
363	1	producer	producer	{}	218	37
364	1	director	\\N	{}	219	108
365	1	director	\\N	{}	220	72
366	1	director	\\N	{}	221	72
367	1	producer	producer	{}	222	37
368	1	writer	story	{}	223	109
369	1	producer	producer	{}	224	103
370	1	director	\\N	{}	225	110
371	2	producer	producer	{}	225	37
372	1	director	\\N	{}	226	72
373	1	writer	poem	{}	227	111
374	2	producer	producer	{}	227	74
375	3	composer	\\N	{}	227	112
376	1	actress	\\N	{Cinderella}	228	113
377	2	actress	\\N	{"The Fairy Godmother"}	228	114
378	3	actor	\\N	{"Prince Charming"}	228	115
379	4	actress	\\N	{"Fairy Godmother"}	228	61
380	5	director	\\N	{}	228	46
381	6	writer	story "Cinderella"	{}	228	99
382	7	actor	\\N	{"Party Guest"}	228	116
383	1	director	\\N	{}	229	57
384	2	producer	producer	{}	229	37
385	1	director	\\N	{}	230	72
386	1	director	\\N	{}	231	85
387	1	actress	\\N	{Cleopatre}	232	61
388	2	actor	\\N	{"Tomb Digger"}	232	46
389	1	actress	\\N	{Ayesha}	233	61
390	2	actor	\\N	{"The Devil"}	233	46
391	3	writer	novel "She"	{}	233	117
392	1	director	\\N	{}	234	72
393	1	director	\\N	{}	235	72
394	1	director	\\N	{}	236	72
395	1	director	\\N	{}	237	72
396	1	cinematographer	\\N	{}	238	49
397	2	cinematographer	\\N	{}	238	118
398	1	director	\\N	{}	239	72
399	1	actor	\\N	{"The Devil"}	240	46
400	1	director	\\N	{}	241	72
401	1	director	\\N	{}	242	72
402	1	producer	producer	{}	243	119
403	1	actor	\\N	{Magician}	244	46
404	10	production_designer	\\N	{}	245	120
405	1	actor	\\N	{"King John"}	245	121
406	2	actor	\\N	{"Prince Henry"}	245	122
407	3	actor	\\N	{Arthur}	245	123
408	4	actor	\\N	{"Earl of Pembroke"}	245	124
409	5	director	\\N	{}	245	125
410	6	director	\\N	{}	245	2
411	7	writer	play	{}	245	126
412	8	composer	\\N	{}	245	127
413	9	composer	\\N	{}	245	128
414	1	actress	\\N	{Wife}	246	91
415	2	actor	\\N	{Husband}	246	81
416	1	director	\\N	{}	247	81
417	1	director	\\N	{}	248	85
418	1	director	\\N	{}	249	129
419	1	director	\\N	{}	250	72
420	1	director	\\N	{}	251	82
421	2	producer	producer	{}	251	37
422	1	director	\\N	{}	252	72
423	1	director	\\N	{}	253	72
424	1	cinematographer	\\N	{}	254	49
425	1	director	\\N	{}	255	72
426	1	director	\\N	{}	256	72
427	1	director	\\N	{}	257	72
428	1	director	\\N	{}	258	72
429	1	actor	\\N	{"The Sleeping Man"}	259	46
430	1	director	\\N	{}	260	72
431	1	actor	\\N	{L'illusioniste}	262	46
432	1	actor	\\N	{"Chimmie Hicks"}	263	130
433	2	cinematographer	\\N	{}	263	131
434	1	cinematographer	\\N	{}	264	131
435	1	director	\\N	{}	265	72
436	1	director	\\N	{}	266	72
437	1	director	\\N	{}	267	37
438	1	director	\\N	{}	268	72
439	1	director	\\N	{}	269	72
440	1	director	\\N	{}	270	81
441	1	actor	\\N	{"The Officer"}	271	132
442	2	actor	\\N	{"The Missionary"}	271	133
443	3	actress	\\N	{"The Girl"}	271	134
444	4	director	\\N	{}	271	35
445	1	director	\\N	{}	272	72
446	1	director	\\N	{}	273	72
447	1	director	\\N	{}	274	72
448	1	director	\\N	{}	275	72
449	1	self	\\N	{Self}	276	73
450	1	actor	\\N	{}	277	73
451	2	cinematographer	\\N	{}	277	118
452	1	actor	\\N	{}	278	73
453	2	cinematographer	\\N	{}	278	118
454	1	actor	\\N	{}	279	73
455	2	cinematographer	\\N	{}	279	131
456	1	director	\\N	{}	280	72
457	1	director	\\N	{}	281	72
458	1	director	\\N	{}	282	72
459	1	director	\\N	{}	283	82
460	2	producer	producer	{}	283	37
461	1	director	\\N	{}	284	72
462	1	director	\\N	{}	285	93
463	2	director	\\N	{}	285	97
464	1	director	\\N	{}	286	72
465	1	director	\\N	{}	287	72
466	1	director	\\N	{}	288	72
467	1	director	\\N	{}	289	72
468	1	director	\\N	{}	290	72
469	1	director	\\N	{}	291	72
470	1	director	\\N	{}	292	72
471	1	director	\\N	{}	293	72
472	1	actress	\\N	{Dancer}	294	135
473	2	director	\\N	{}	294	72
474	1	director	\\N	{}	295	72
475	1	director	\\N	{}	296	72
476	1	director	\\N	{}	297	72
477	1	actor	\\N	{"Chalk-Talk Artist"}	298	93
478	2	producer	producer	{}	298	97
479	1	director	\\N	{}	299	98
480	2	writer	play	{}	299	104
481	1	director	\\N	{}	300	72
482	1	director	\\N	{}	301	72
483	1	actor	\\N	{"Willy - the little grandson"}	302	136
484	2	director	\\N	{}	302	81
485	1	actress	\\N	{}	303	137
486	2	director	\\N	{}	303	72
487	1	actress	\\N	{Hamlet}	304	138
488	2	actor	\\N	{Laertes}	304	139
489	3	actress	\\N	{"A page"}	304	140
490	4	director	\\N	{}	304	141
491	5	writer	play "Hamlet"	{}	304	126
492	6	producer	producer	{}	304	142
493	1	actor	\\N	{"Happy Hooligan"}	305	93
494	2	writer	comic strip "Happy Hooligan"	{}	305	143
495	1	actress	\\N	{"Little girl"}	306	144
496	2	actor	\\N	{"Little brother"}	306	136
497	3	director	\\N	{}	306	81
498	1	actress	\\N	{Passenger}	307	145
499	2	actor	\\N	{Driver}	307	103
500	1	actor	\\N	{"Chimmie Hicks"}	308	130
501	2	actress	\\N	{}	308	146
502	3	cinematographer	\\N	{}	308	131
503	1	director	\\N	{}	309	72
504	1	actress	\\N	{"Young woman"}	310	91
505	2	actor	\\N	{Man}	310	92
506	3	director	\\N	{}	310	81
507	1	director	\\N	{}	311	72
508	1	director	\\N	{}	312	72
509	1	director	\\N	{}	313	72
510	1	director	\\N	{}	314	72
511	1	actor	\\N	{Koechin}	315	147
512	2	director	\\N	{}	315	20
513	1	actor	\\N	{}	316	148
514	2	actor	\\N	{}	316	149
515	3	director	\\N	{}	316	150
516	1	director	\\N	{}	317	72
517	1	director	\\N	{}	318	98
518	1	director	\\N	{}	319	85
519	1	director	\\N	{}	320	72
520	1	director	\\N	{}	321	72
521	1	actress	\\N	{}	322	137
522	2	director	\\N	{}	322	72
523	1	actress	\\N	{}	323	137
524	2	director	\\N	{}	323	72
525	1	director	\\N	{}	324	72
526	1	director	\\N	{}	325	72
527	1	director	\\N	{}	326	72
528	1	director	\\N	{}	327	72
529	1	director	\\N	{}	328	72
530	1	director	\\N	{}	329	72
531	1	director	\\N	{}	330	72
532	1	director	\\N	{}	331	72
533	1	actress	\\N	{}	332	151
534	2	actor	\\N	{}	332	152
535	3	actor	\\N	{}	332	153
536	4	actor	\\N	{}	332	154
537	5	director	\\N	{}	332	155
538	6	director	\\N	{}	332	156
539	7	actor	\\N	{Lion}	332	157
540	8	actor	\\N	{Lion}	332	158
541	1	director	\\N	{}	333	72
542	1	producer	producer	{}	334	18
543	1	director	\\N	{}	335	72
544	1	director	\\N	{}	336	72
545	1	actor	\\N	{"Uncle Josh"}	337	159
546	2	director	\\N	{}	337	98
547	1	actor	\\N	{"Uncle Josh"}	338	159
548	2	director	\\N	{}	338	98
549	1	director	\\N	{}	339	72
550	1	director	\\N	{}	340	72
551	1	director	\\N	{}	341	72
552	1	director	\\N	{}	342	72
553	1	director	\\N	{}	343	98
554	1	actor	\\N	{}	344	73
555	2	cinematographer	\\N	{}	344	131
556	1	director	\\N	{}	345	72
557	1	director	\\N	{}	346	82
558	2	producer	producer	{}	346	37
559	1	director	\\N	{}	347	37
560	1	actress	\\N	{}	348	160
561	2	actress	\\N	{}	348	161
562	3	director	\\N	{}	348	72
563	1	director	\\N	{}	349	98
564	1	director	\\N	{}	350	98
565	1	director	\\N	{}	351	108
566	1	director	\\N	{}	352	35
567	1	director	\\N	{}	353	72
568	1	director	\\N	{}	354	82
569	2	producer	producer	{}	354	37
570	1	actor	\\N	{}	355	162
571	2	actor	\\N	{}	355	163
572	3	actor	\\N	{}	355	164
573	1	actor	\\N	{"The Chemist","The India Rubber Head"}	356	46
574	1	actress	\\N	{"La Grisette"}	357	160
575	2	actress	\\N	{"Le Hussard"}	357	161
576	3	director	\\N	{}	357	72
577	1	director	\\N	{}	358	72
578	1	director	\\N	{}	359	72
579	1	director	\\N	{}	360	82
580	2	producer	producer	{}	360	37
581	1	director	\\N	{}	361	98
582	2	cinematographer	\\N	{}	361	74
583	1	director	\\N	{}	362	108
584	1	director	\\N	{}	363	108
585	1	director	\\N	{}	364	72
586	1	actress	\\N	{"Little Red Riding Hood"}	365	165
587	2	director	\\N	{}	365	46
588	3	writer	story "Le petit chaperon rouge"	{}	365	99
589	1	director	\\N	{}	366	85
590	1	actor	\\N	{"Ebenezer Scrooge"}	367	166
591	2	director	\\N	{}	367	82
592	3	writer	play 'Scrooge'	{}	367	167
593	4	writer	novel "A Christmas Carol"	{}	367	168
594	5	producer	producer	{}	367	37
595	1	director	\\N	{}	368	72
596	1	director	\\N	{}	369	72
597	1	director	\\N	{}	370	164
598	1	director	\\N	{}	371	72
599	1	director	\\N	{}	372	108
600	10	actor	\\N	{}	373	169
601	1	actress	\\N	{Salome}	373	170
602	2	actress	\\N	{}	373	171
603	3	actress	\\N	{}	373	172
604	4	actress	\\N	{}	373	173
605	5	director	\\N	{}	373	174
606	6	writer	\\N	{}	373	175
607	7	composer	\\N	{}	373	176
608	8	actress	\\N	{Táncos}	373	177
609	9	actress	\\N	{}	373	178
610	1	director	\\N	{}	374	82
611	2	producer	producer	{}	374	37
612	1	actress	\\N	{}	375	160
613	2	actress	\\N	{}	375	161
614	3	director	\\N	{}	375	72
615	1	director	\\N	{}	376	85
616	1	director	co-director	{}	377	179
617	2	director	co-director	{}	377	164
618	3	writer	tale	{}	377	99
619	1	actor	\\N	{}	378	73
620	2	producer	producer	{}	378	119
621	1	director	\\N	{}	379	85
622	1	director	\\N	{}	380	85
623	1	director	\\N	{}	381	72
624	1	director	\\N	{}	382	72
625	1	director	\\N	{}	383	72
626	1	actor	\\N	{"Attendant Bearing King Edward's Sword"}	384	180
627	2	director	\\N	{}	384	46
628	3	director	\\N	{}	384	181
629	1	actress	\\N	{}	385	182
630	2	director	\\N	{}	385	72
631	1	director	\\N	{}	386	72
632	1	director	\\N	{}	387	72
633	1	director	\\N	{}	388	72
634	1	director	\\N	{}	389	82
635	2	producer	producer	{}	389	37
636	1	director	\\N	{}	390	72
637	1	director	\\N	{}	391	72
638	1	director	\\N	{}	392	72
639	1	director	\\N	{}	393	72
640	1	director	\\N	{}	394	72
641	1	director	\\N	{}	395	72
642	1	actor	\\N	{Farmer}	396	74
643	2	actor	\\N	{Jack}	396	183
644	3	director	\\N	{}	396	184
645	4	director	\\N	{}	396	98
646	1	director	\\N	{}	397	72
647	1	director	\\N	{}	398	72
648	1	actor	\\N	{}	399	92
649	2	director	\\N	{}	399	81
650	1	director	\\N	{}	400	72
651	1	director	\\N	{}	401	72
652	1	director	\\N	{}	402	72
653	1	cinematographer	\\N	{}	403	131
654	1	director	\\N	{}	404	85
655	1	director	\\N	{}	405	72
656	1	actress	\\N	{}	406	72
657	2	actress	\\N	{}	406	185
658	3	actress	\\N	{}	406	186
659	1	director	\\N	{}	407	131
660	1	director	\\N	{}	408	72
661	1	director	\\N	{}	409	118
662	1	actor	\\N	{"The Blonde Miser",Thief}	410	46
663	1	actor	\\N	{"Uncle Josh"}	411	159
664	2	director	\\N	{}	411	98
665	1	director	\\N	{}	412	72
666	1	director	\\N	{}	413	164
667	2	writer	novel "L'Assommoir"	{}	413	187
668	1	actor	\\N	{"Prof. Barbenfouillis","The Moon"}	414	46
669	2	actor	\\N	{Astronomer}	414	188
670	3	actress	\\N	{"Lady in the Moon"}	414	114
671	4	actor	\\N	{Astronomer}	414	189
672	5	writer	novel "De la Terre à la Lune"	{}	414	190
673	6	writer	novel "First Men in the Moon"	{}	414	191
674	7	composer	\\N	{}	414	192
675	8	composer	\\N	{}	414	193
676	9	composer	\\N	{}	414	194
677	1	director	\\N	{}	415	195
678	1	director	\\N	{}	416	72
679	1	actress	\\N	{Alice}	417	145
680	2	actor	\\N	{Frog}	417	103
681	3	actor	\\N	{"Large Dog"}	417	196
682	4	actor	\\N	{Card}	417	197
683	5	director	\\N	{}	417	198
684	6	writer	novel "Alice's Adventures in Wonderland"	{}	417	199
685	1	actor	\\N	{}	418	164
686	2	director	\\N	{}	418	72
687	1	actor	\\N	{Traveler}	419	164
688	2	director	\\N	{}	419	72
689	1	actor	\\N	{}	420	46
690	1	director	\\N	{}	421	72
691	1	actor	\\N	{}	422	73
692	2	producer	producer	{}	422	200
693	1	actor	\\N	{}	423	73
694	2	producer	producer	{}	423	119
695	1	director	\\N	{}	424	72
696	1	director	\\N	{}	425	85
697	1	director	\\N	{}	426	72
698	1	actor	\\N	{"Chess Player"}	427	201
699	2	director	\\N	{}	427	37
700	1	director	\\N	{}	428	72
701	1	actor	\\N	{}	429	164
702	2	director	\\N	{}	429	72
703	1	director	\\N	{}	430	72
704	1	actress	\\N	{Dorothy}	431	144
705	2	director	\\N	{}	431	81
706	1	director	\\N	{}	432	72
707	1	director	\\N	{}	433	82
708	2	director	\\N	{}	433	37
709	1	director	\\N	{}	434	72
710	1	director	\\N	{}	435	72
711	10	actor	\\N	{"Little Boy"}	436	202
712	1	actor	\\N	{Bandit,"Shot Passenger","Tenderfoot Dancer"}	436	203
713	2	actor	\\N	{Sheriff}	436	204
714	3	actor	\\N	{}	436	205
715	4	actor	\\N	{"Bandit Who Fires at Camera"}	436	206
716	5	director	\\N	{}	436	98
717	6	writer	story	{}	436	207
718	7	cinematographer	\\N	{}	436	208
719	8	actor	\\N	{Sheriff}	436	209
720	9	actor	\\N	{"Fourth Bandit"}	436	210
721	1	actor	\\N	{Musketeer}	437	46
722	1	director	\\N	{}	438	211
723	2	writer	novel "The Travels of Gulliver"	{}	438	212
724	1	actress	\\N	{Barnemordersken}	439	213
725	2	actor	\\N	{}	439	214
726	3	director	\\N	{}	439	215
727	4	writer	writer	{}	439	216
728	5	writer	writer	{}	439	217
729	1	director	\\N	{}	440	218
730	2	writer	scenario	{}	440	219
731	3	writer	poem "The Song of Hiawatha"	{}	440	220
732	1	actor	\\N	{Magician}	441	164
733	2	director	\\N	{}	441	72
734	1	director	\\N	{}	442	72
735	1	director	\\N	{}	443	221
736	1	actor	\\N	{Policeman}	444	98
737	2	actress	\\N	{"The Girl"}	444	222
738	3	actor	\\N	{"The Fireman"}	444	223
739	4	actor	\\N	{"Fire Chief"}	444	74
740	5	director	\\N	{}	444	184
741	1	director	\\N	{}	445	72
742	1	director	\\N	{}	446	72
743	1	director	\\N	{}	447	72
744	1	actress	\\N	{"Mary Jane"}	448	91
745	2	director	\\N	{}	448	81
746	1	actor	\\N	{"Messenger Boy"}	449	203
747	2	director	\\N	{}	449	98
748	1	director	\\N	{}	450	72
749	1	director	\\N	{}	451	72
750	1	actor	\\N	{"The Melomaniac"}	452	46
751	1	cinematographer	\\N	{}	453	49
752	1	director	\\N	{}	454	72
753	1	director	\\N	{}	455	72
754	1	cinematographer	\\N	{}	456	98
755	1	director	\\N	{}	457	221
756	1	director	\\N	{}	458	72
757	1	director	\\N	{}	459	72
758	1	director	\\N	{}	460	85
759	1	actor	\\N	{"Rip Van Winkle"}	461	47
760	2	director	\\N	{}	461	2
761	3	writer	play	{}	461	224
762	4	writer	story	{}	461	48
763	1	actor	\\N	{"Prince Bel-Azor"}	462	46
764	2	actress	\\N	{"Princess Azurine"}	462	225
765	3	actress	\\N	{Aurora}	462	114
766	4	actor	\\N	{Role}	462	226
767	5	writer	story "La Biche au bois"	{}	462	227
768	6	actor	\\N	{Extra}	462	228
769	1	director	\\N	{}	463	72
770	1	director	\\N	{}	464	72
771	1	director	\\N	{}	465	72
772	1	director	\\N	{}	466	81
773	1	director	\\N	{}	467	72
774	1	director	\\N	{}	468	98
775	2	writer	novel "Uncle Tom's Cabin"	{}	468	229
776	1	actor	\\N	{"Arthur Shelby"}	469	230
777	2	actor	\\N	{"Simon Legree"}	469	119
778	3	writer	novel "Uncle Tom's Cabin"	{}	469	229
779	1	director	\\N	{}	470	72
780	1	director	\\N	{}	471	72
781	1	actor	\\N	{}	472	231
782	2	director	\\N	{}	472	82
783	3	producer	producer	{}	472	37
784	1	director	\\N	{}	473	72
785	1	actor	\\N	{}	474	232
786	2	actor	\\N	{}	474	233
787	3	actor	\\N	{}	474	234
788	4	director	\\N	{}	474	72
789	1	director	\\N	{}	475	235
790	1	director	\\N	{}	476	37
791	1	actor	\\N	{}	477	46
792	1	producer	producer	{}	478	37
793	1	director	\\N	{}	479	72
794	1	director	\\N	{}	480	72
795	1	director	\\N	{}	481	72
796	1	director	\\N	{}	482	72
797	1	actor	\\N	{"Monsieur Beaucaire"}	483	236
798	2	actor	\\N	{}	483	237
799	3	actress	\\N	{}	483	238
800	4	actor	\\N	{}	483	93
801	5	writer	novel	{}	483	239
802	6	actress	\\N	{}	483	240
803	1	actress	\\N	{"Little Girl (Telegrapher's daughter)"}	484	241
804	2	director	\\N	{}	484	119
805	3	cinematographer	\\N	{}	484	242
806	10	actor	\\N	{"The Minister"}	485	243
807	1	actor	\\N	{"Joe, the Newsboy"}	485	244
808	2	actress	\\N	{"Joe's Grandmother"}	485	245
809	3	actor	\\N	{"Manager of the Fresh Air Fund"}	485	246
810	4	actress	\\N	{"Committee Woman"}	485	247
811	5	director	\\N	{}	485	248
812	6	writer	\\N	{}	485	249
813	7	actress	\\N	{"Committee Woman"}	485	250
814	8	actress	\\N	{"Committee Woman"}	485	251
815	9	actress	\\N	{"Committee Woman"}	485	252
816	1	director	\\N	{}	486	72
817	1	director	\\N	{}	487	72
818	1	cinematographer	\\N	{}	488	49
819	1	director	\\N	{}	489	221
820	2	cinematographer	\\N	{}	489	49
821	1	director	\\N	{}	490	72
822	1	director	\\N	{}	491	72
823	1	director	\\N	{}	492	164
824	2	cinematographer	\\N	{}	492	211
825	1	cinematographer	\\N	{}	493	204
826	2	cinematographer	\\N	{}	493	98
827	1	actor	\\N	{"Rover the dog"}	495	196
828	2	actress	\\N	{Nursemaid}	495	145
829	3	actress	\\N	{"The baby"}	495	253
830	4	actor	\\N	{"Harassed father"}	495	103
831	5	director	\\N	{}	495	254
832	6	writer	story	{}	495	255
833	7	actress	\\N	{"Gypsy woman"}	495	256
834	8	actor	\\N	{Soldier}	495	257
835	1	actor	\\N	{Mabouloff}	496	46
836	2	actress	\\N	{"Madame Latrouille"}	496	258
837	3	actress	\\N	{"Villager at seaport"}	496	61
838	4	actress	\\N	{"Nurse in Swiss hospital"}	496	259
839	5	writer	play "Le Voyage a travers l'Impossible"	{}	496	190
840	6	writer	play "Le Voyage a travers l'Impossible"	{}	496	260
841	1	cinematographer	\\N	{}	497	49
842	1	actor	\\N	{"Sherlock Holmes"}	498	203
843	2	actor	\\N	{"John H. Watson, M.D."}	498	237
844	3	actor	\\N	{Bandit}	498	236
845	4	actor	\\N	{Bandit}	498	261
846	5	director	\\N	{}	498	93
847	6	writer	story	{}	498	262
848	7	writer	scenario	{}	498	263
849	1	actor	\\N	{}	499	264
850	2	actor	\\N	{}	499	265
851	3	director	\\N	{}	499	266
852	4	writer	\\N	{}	499	267
853	5	writer	\\N	{}	499	268
854	1	director	\\N	{}	500	269
855	1	director	\\N	{}	501	269
856	1	actor	\\N	{}	502	226
857	2	actor	\\N	{}	502	270
858	3	actor	\\N	{}	502	271
859	4	actor	\\N	{}	502	272
860	5	director	\\N	{}	502	273
861	6	director	\\N	{}	502	274
862	1	director	\\N	{}	503	195
863	1	cinematographer	\\N	{}	504	49
864	1	director	\\N	{}	505	269
865	1	actor	\\N	{}	506	226
866	2	director	\\N	{}	506	273
867	3	writer	\\N	{}	506	274
868	4	cinematographer	\\N	{}	506	211
869	1	director	\\N	{}	507	266
870	1	actress	\\N	{Esmeralda}	508	275
871	2	actor	\\N	{Quasimodo}	508	276
872	3	director	\\N	{}	508	72
873	4	director	co-director	{}	508	277
874	5	writer	novel "Notre Dame de Paris"	{}	508	278
875	6	cinematographer	\\N	{}	508	279
876	7	production_designer	\\N	{}	508	280
877	1	cinematographer	\\N	{}	509	49
878	1	director	\\N	{}	510	269
879	1	actor	\\N	{}	511	281
880	2	actor	\\N	{}	511	282
881	3	actor	\\N	{}	511	283
882	4	actor	\\N	{}	511	284
883	5	director	\\N	{}	511	85
884	6	actor	\\N	{}	511	285
885	7	actor	\\N	{}	511	286
886	8	actor	\\N	{}	511	287
887	9	actress	\\N	{}	511	288
888	1	director	\\N	{}	512	211
889	1	actor	\\N	{Bertrand}	513	211
890	2	actress	\\N	{Laure}	513	289
891	1	director	\\N	{}	514	266
892	1	actor	\\N	{}	515	290
893	2	writer	\\N	{}	515	211
894	1	actress	\\N	{"The Kleptomaniac, Mrs. Banker"}	516	291
895	2	actor	\\N	{"Store Detective"}	516	292
896	3	actress	\\N	{"Female Detective"}	516	293
897	4	actor	\\N	{"Superintendant, Department Store"}	516	294
898	5	director	\\N	{}	516	98
899	6	actress	\\N	{"The Thief"}	516	295
900	7	actor	\\N	{"Police Court Judge"}	516	296
901	8	actress	\\N	{Justice}	516	297
902	1	actor	\\N	{"Charles Peace"}	517	298
903	2	actress	\\N	{"Mrs. Dyson"}	517	299
904	3	actress	\\N	{"Peace's accomplice"}	517	300
905	4	actor	\\N	{Dyson}	517	301
906	5	director	\\N	{}	517	195
907	6	actor	\\N	{"First policeman"}	517	302
908	7	actor	\\N	{"Second policeman"}	517	303
909	8	actor	\\N	{"Third policeman"}	517	304
910	9	actress	\\N	{"Peace's mother"}	517	305
911	1	director	\\N	{}	518	98
912	1	cinematographer	\\N	{}	519	49
913	1	cinematographer	\\N	{}	520	49
914	1	director	\\N	{}	521	49
915	1	actor	\\N	{"Joe - le cow-boy"}	522	306
916	2	actor	\\N	{}	522	307
917	3	actress	\\N	{}	522	308
918	4	actor	\\N	{}	522	309
919	5	director	\\N	{}	522	310
920	6	actor	\\N	{}	522	311
921	7	actor	\\N	{}	522	312
922	1	cinematographer	\\N	{}	523	49
923	1	director	\\N	{}	524	269
924	1	actor	\\N	{Raffles}	525	261
925	2	actress	\\N	{}	525	240
926	3	director	\\N	{}	525	203
927	4	writer	play "Raffles, the Amateur Cracksman"	{}	525	313
928	5	writer	novel	{}	525	314
929	6	producer	producer	{}	525	315
930	7	cinematographer	\\N	{}	525	316
931	1	cinematographer	\\N	{}	526	49
932	1	director	\\N	{}	527	211
933	1	actor	\\N	{}	528	290
934	2	director	\\N	{}	528	211
935	1	director	\\N	{}	529	269
936	1	producer	producer	{}	530	200
937	1	director	\\N	{}	531	82
938	2	producer	producer	{}	531	37
939	1	actress	\\N	{"Anarkistens kone"}	532	317
940	2	actor	\\N	{Anarkisten}	532	318
941	3	cinematographer	\\N	{}	532	319
942	4	production_designer	\\N	{}	532	320
943	1	actress	\\N	{}	533	321
944	2	actress	\\N	{}	533	322
945	3	director	\\N	{}	533	323
946	4	director	\\N	{}	533	324
947	1	cinematographer	\\N	{}	534	49
948	1	director	\\N	{}	535	85
949	1	director	\\N	{}	536	325
950	1	actress	\\N	{}	538	317
951	2	actor	\\N	{}	538	326
952	3	actor	\\N	{}	538	327
953	4	actor	\\N	{}	538	318
954	5	writer	\\N	{}	538	328
955	6	cinematographer	\\N	{}	538	329
956	1	actress	\\N	{}	539	330
957	2	actor	\\N	{}	539	282
958	3	actor	\\N	{}	539	287
959	4	actor	\\N	{}	539	331
960	5	director	\\N	{}	539	85
961	1	director	\\N	{}	540	325
962	2	cinematographer	\\N	{}	540	329
963	3	cinematographer	\\N	{}	540	319
964	1	director	\\N	{}	541	332
965	2	producer	producer	{}	541	37
966	1	cinematographer	\\N	{}	542	49
967	1	actor	\\N	{"The Rarebit Fiend"}	543	333
968	2	director	\\N	{}	543	221
969	3	director	\\N	{}	543	98
970	4	writer	comic strip	{}	543	334
971	1	director	\\N	{}	544	85
972	1	actor	\\N	{Fisker}	545	318
973	2	actress	\\N	{"hans Kone"}	545	317
974	3	actor	\\N	{}	545	335
975	4	writer	\\N	{}	545	325
976	5	cinematographer	\\N	{}	545	319
977	1	actor	\\N	{Petersen}	546	327
978	2	director	\\N	{}	546	318
979	3	cinematographer	\\N	{}	546	319
980	1	self	\\N	{"Self - King of Denmark"}	547	336
981	2	self	\\N	{Self}	547	337
982	3	director	\\N	{}	547	325
983	4	cinematographer	\\N	{}	547	329
984	1	director	\\N	{}	549	82
985	2	producer	producer	{}	549	37
986	1	actor	\\N	{}	550	236
987	2	actor	\\N	{}	550	338
988	3	director	\\N	{}	550	93
989	1	actor	\\N	{Cartoonist}	551	93
990	1	actress	\\N	{Pigen}	552	339
991	2	actor	\\N	{"Den unge mand"}	552	318
992	3	actor	\\N	{"Pigens far"}	552	335
993	4	writer	\\N	{}	552	328
994	5	cinematographer	\\N	{}	552	319
995	6	production_designer	\\N	{}	552	320
996	1	actress	\\N	{"Young Lady"}	553	317
997	2	actor	\\N	{Boyfriend}	553	318
998	3	actor	\\N	{Seducer}	553	327
999	4	cinematographer	\\N	{}	553	325
1000	10	actor	\\N	{}	554	340
1001	1	actress	\\N	{Kathleen}	554	341
1002	2	actor	\\N	{"Terence O'Moore"}	554	342
1003	3	actor	\\N	{"Captain Clearfield"}	554	343
1004	4	actor	\\N	{Dugan}	554	344
1005	5	director	\\N	{}	554	98
1006	6	writer	poem	{}	554	345
1007	7	actor	\\N	{"David O'Connor"}	554	346
1008	8	actor	\\N	{"Father O'Cassidy"}	554	347
1009	9	actor	\\N	{"Danny O'Lavey"}	554	348
1010	1	director	\\N	{}	555	85
1011	1	actor	\\N	{}	556	349
1012	2	actor	\\N	{}	556	350
1013	3	director	\\N	{}	556	351
1014	4	cinematographer	\\N	{}	556	329
1015	1	director	\\N	{}	557	85
1016	1	director	\\N	{}	558	98
1017	1	director	\\N	{}	561	93
1018	2	writer	novel	{}	561	168
1019	1	director	\\N	{}	562	98
1020	2	writer	poem "The Night Before Christmas"	{}	562	352
1021	1	actor	\\N	{Professor}	563	353
1022	2	actor	\\N	{}	563	349
1023	3	actor	\\N	{}	563	350
1024	4	actor	\\N	{}	563	354
1025	5	director	\\N	{}	563	351
1026	6	director	\\N	{}	563	318
1027	7	cinematographer	\\N	{}	563	329
1028	1	actor	\\N	{Satan}	564	46
1029	2	writer	play "Le Quatre Cents Coups du diable"	{}	564	355
1030	3	writer	play "Le Quatre Cents Coups de diable"	{}	564	356
1031	1	director	\\N	{}	566	318
1032	2	cinematographer	\\N	{}	566	319
1033	1	cinematographer	\\N	{}	567	49
1034	1	director	\\N	{}	568	93
1035	1	director	\\N	{}	569	266
1036	1	actor	\\N	{}	570	335
1037	2	actor	\\N	{}	570	327
1038	3	director	\\N	{}	570	318
1039	4	cinematographer	\\N	{}	570	319
1040	10	cinematographer	director of photography	{}	571	157
1041	1	actress	\\N	{"Kate Kelly"}	571	357
1042	2	actor	\\N	{"School Master"}	571	358
1043	3	actor	\\N	{"Joe Byrne"}	571	359
1044	4	actor	\\N	{"Steve Hart"}	571	360
1045	5	director	\\N	{}	571	361
1046	6	producer	producer	{}	571	362
1047	7	producer	producer	{}	571	363
1048	8	producer	producer	{}	571	364
1049	9	composer	\\N	{}	571	365
1050	1	actor	\\N	{"Ives, the Fisherman"}	572	366
1051	2	actor	\\N	{}	572	46
1052	3	writer	novel "Vingt Mille Lieues sous les mers"	{}	572	190
1053	1	director	\\N	{}	573	211
1054	2	producer	producer	{}	573	367
1055	1	actor	\\N	{}	574	318
1056	2	actor	\\N	{}	574	335
1057	3	cinematographer	\\N	{}	574	319
1058	1	actor	\\N	{"The Hobo"}	575	368
1059	2	director	\\N	{}	575	203
1060	1	actor	\\N	{}	576	203
1061	1	director	\\N	{}	577	369
1062	2	producer	producer	{}	577	370
1063	1	actor	\\N	{}	578	371
1064	1	actress	\\N	{}	579	372
1065	2	actor	\\N	{}	579	373
1066	3	actor	\\N	{Messala}	579	374
1067	4	actor	\\N	{"Ben Hur"}	579	375
1068	5	director	\\N	{}	579	376
1069	6	director	\\N	{}	579	377
1070	7	writer	novel	{}	579	378
1071	8	cinematographer	\\N	{}	579	379
1072	10	actor	\\N	{Gustave}	580	327
1073	1	actor	\\N	{}	580	380
1074	2	actress	\\N	{"Marguerite Gauthier, 'Kameliadamen'"}	580	381
1075	3	actor	\\N	{"Armand Duval"}	580	318
1076	4	actor	\\N	{"Armand Duvals fader"}	580	335
1077	5	writer	novel and play "La dame aux camélias"	{}	580	382
1078	6	cinematographer	\\N	{}	580	319
1079	7	production_designer	\\N	{}	580	320
1080	8	actress	\\N	{}	580	383
1081	9	actor	\\N	{"En kavaler"}	580	384
1082	1	director	\\N	{}	581	385
1083	2	director	\\N	{}	581	386
1084	3	cinematographer	\\N	{}	581	387
1085	1	director	\\N	{}	582	85
1086	1	actor	\\N	{"Mark Twain"}	583	388
1087	2	director	\\N	{}	583	93
1088	1	actress	\\N	{}	584	389
1089	1	actress	\\N	{}	585	339
1090	2	actor	\\N	{Prinsen}	585	318
1091	3	actor	\\N	{"Kasper Røghat"}	585	335
1092	4	actress	\\N	{}	585	390
1093	5	cinematographer	\\N	{}	585	319
1094	6	actor	\\N	{Kongen}	585	327
1095	7	actress	\\N	{Prinsessen}	585	391
1096	1	actor	\\N	{"Boy at Door"}	587	392
1097	2	actor	\\N	{"Female Assistant"}	587	393
1098	3	director	\\N	{}	587	221
1099	4	cinematographer	\\N	{}	587	49
1100	1	actor	\\N	{}	588	394
1101	2	actor	\\N	{}	588	395
1102	3	actress	\\N	{}	588	396
1103	4	actress	\\N	{}	588	397
1104	5	director	\\N	{}	588	398
1105	1	director	\\N	{}	589	399
1106	2	director	\\N	{}	589	400
1107	1	director	\\N	{}	590	85
1108	1	actor	\\N	{}	591	318
1109	2	actor	\\N	{}	591	335
1110	3	actress	\\N	{}	591	390
1111	4	actor	\\N	{}	591	401
1112	5	cinematographer	\\N	{}	591	319
1113	6	actress	\\N	{}	591	402
1114	1	actor	\\N	{Frier}	592	318
1115	2	actor	\\N	{Kongen}	592	335
1116	3	actress	\\N	{}	592	390
1117	4	actor	\\N	{}	592	327
1118	5	cinematographer	\\N	{}	592	319
1119	6	actor	\\N	{Frier}	592	403
1120	1	actress	\\N	{Prinsesse}	593	381
1121	2	actor	\\N	{Soldat}	593	318
1122	3	actor	\\N	{}	593	335
1123	4	actor	\\N	{Tjener}	593	327
1124	5	writer	from the story by	{}	593	404
1125	6	cinematographer	\\N	{}	593	319
1126	7	actor	\\N	{Tjener}	593	401
1127	8	actress	\\N	{Heksen}	593	405
1128	1	actress	\\N	{}	594	289
1129	2	director	\\N	{}	594	211
1130	3	director	\\N	{}	594	164
1131	1	actor	\\N	{Hamlet}	595	46
1132	2	writer	play	{}	595	126
1133	1	actor	\\N	{Jæger}	596	319
1134	2	actor	\\N	{Jæger}	596	318
1135	3	actor	\\N	{Jæger}	596	325
1136	1	actress	\\N	{Elsa}	597	321
1137	2	actor	\\N	{Lohengrin}	597	406
1138	3	actor	\\N	{}	597	407
1139	4	writer	opera	{}	597	408
1140	5	producer	producer	{}	597	324
1141	1	actor	\\N	{}	598	319
1142	2	actor	\\N	{Løvejæger}	598	318
1143	3	actor	\\N	{Løvejæger}	598	409
1144	4	actor	\\N	{"Black Bearer"}	598	410
1145	5	writer	\\N	{}	598	328
1146	6	producer	producer	{}	598	325
1147	1	actor	\\N	{}	599	93
1148	1	director	\\N	{}	600	318
1149	2	cinematographer	\\N	{}	600	319
1150	3	cinematographer	\\N	{}	600	411
1151	4	production_designer	\\N	{}	600	412
1152	1	actor	\\N	{}	601	327
1153	2	writer	screenplay	{}	601	413
1154	3	cinematographer	\\N	{}	601	319
1155	1	actress	\\N	{Manicurist}	602	414
1156	2	actor	\\N	{Messenger}	602	392
1157	3	actor	\\N	{Waiter}	602	393
1158	4	cinematographer	\\N	{}	602	49
1159	5	cinematographer	\\N	{}	602	118
1160	1	actor	\\N	{}	603	415
1161	2	actress	\\N	{}	603	416
1162	3	director	\\N	{}	603	417
1163	1	actor	\\N	{}	604	349
1164	2	director	\\N	{}	604	318
1165	3	cinematographer	\\N	{}	604	319
1166	1	actor	\\N	{Othello}	605	418
1167	2	actress	\\N	{Desdemona}	605	419
1168	3	actor	\\N	{Iago}	605	420
1169	4	actress	\\N	{}	605	421
1170	5	director	\\N	{}	605	422
1171	6	writer	play "Othello"	{}	605	126
1172	7	cinematographer	\\N	{}	605	423
1173	1	actor	\\N	{Othello}	606	407
1174	2	actress	\\N	{Desdemona}	606	321
1175	3	actress	\\N	{Emilia}	606	322
1176	4	writer	play	{}	606	126
1177	5	producer	producer	{}	606	324
1178	10	actor	\\N	{}	607	424
1179	1	actor	\\N	{}	607	425
1180	2	actress	\\N	{}	607	426
1181	3	actor	\\N	{}	607	427
1182	4	actress	\\N	{}	607	428
1183	5	director	\\N	{}	607	429
1184	6	producer	producer	{}	607	200
1185	7	cinematographer	\\N	{}	607	430
1186	8	actor	\\N	{}	607	431
1187	9	actor	\\N	{}	607	432
1188	1	director	\\N	{}	608	85
1189	1	actress	\\N	{"Casal Fugitivo"}	609	433
1190	2	actor	\\N	{"Casal Fugitivo"}	609	434
1191	3	actor	\\N	{"Policia Salalidade"}	609	435
1192	4	actor	\\N	{}	609	436
1193	5	director	\\N	{}	609	437
1194	6	cinematographer	\\N	{}	609	369
1195	7	actor	\\N	{}	609	438
1196	8	actor	\\N	{}	609	439
1197	1	actress	\\N	{}	610	289
1198	2	director	\\N	{}	610	211
1199	3	director	co-director	{}	610	164
1200	1	actor	\\N	{Warrigal}	611	440
1201	2	actor	\\N	{Warder}	611	441
1202	3	actor	\\N	{"Inspector of Police"}	611	442
1203	4	actor	\\N	{Trooper}	611	443
1204	5	director	\\N	{}	611	444
1205	6	writer	novel	{}	611	445
1206	7	cinematographer	\\N	{}	611	446
1207	8	actor	\\N	{Curate}	611	447
1208	9	actress	\\N	{}	611	448
1209	1	director	\\N	{}	612	85
1210	1	actor	\\N	{"Roever, cowboy"}	613	327
1211	2	actress	\\N	{"Roeverens kone"}	613	390
1212	3	actor	\\N	{}	613	318
1213	4	actress	\\N	{}	613	381
1214	5	writer	\\N	{}	613	328
1215	6	cinematographer	\\N	{}	613	319
1216	7	production_designer	\\N	{}	613	320
1217	1	actor	\\N	{Salapolttaja}	614	449
1218	2	actor	\\N	{Junkkari}	614	450
1219	3	actor	\\N	{Salapolttaja}	614	451
1220	4	actor	\\N	{"Nimismiehen apulainen"}	614	452
1221	5	director	\\N	{}	614	453
1222	6	writer	\\N	{}	614	454
1223	7	producer	producer	{}	614	455
1224	8	cinematographer	\\N	{}	614	456
1225	1	cinematographer	\\N	{}	615	457
1226	1	actor	\\N	{}	616	318
1227	2	cinematographer	\\N	{}	616	319
1228	1	actor	\\N	{Uncle}	617	458
1229	2	actress	\\N	{Nephew}	617	459
1230	3	director	\\N	{}	617	254
1231	4	producer	producer	{}	617	103
1232	1	actress	\\N	{}	618	460
1233	2	actor	\\N	{}	618	461
1234	3	actress	\\N	{}	618	462
1235	4	actor	\\N	{}	618	415
1236	5	director	\\N	{}	618	417
1237	6	director	\\N	{}	618	85
1238	7	writer	play "Terra baixa"	{}	618	463
1239	8	actress	\\N	{}	618	464
1240	1	director	\\N	{}	619	318
1241	2	cinematographer	\\N	{}	619	319
1242	1	actress	\\N	{}	620	465
1243	1	director	\\N	{}	621	85
1244	1	actor	\\N	{Ole}	622	393
1245	2	cinematographer	\\N	{}	622	49
1246	1	actor	\\N	{Husband}	623	466
1247	2	actor	\\N	{Lover}	623	467
1248	3	actor	\\N	{"Wedding Guest"}	623	393
1249	4	actor	\\N	{"Wedding Guest"}	623	468
1250	5	director	\\N	{}	623	221
1251	6	cinematographer	\\N	{}	623	49
1252	1	actor	\\N	{Father}	624	469
1253	2	actress	\\N	{Mother}	624	414
1254	3	actress	\\N	{Dollie}	624	470
1255	4	actor	\\N	{Gypsy}	624	471
1256	5	director	\\N	{}	624	467
1257	6	director	\\N	{}	624	49
1258	7	writer	writer	{}	624	472
1259	8	cinematographer	\\N	{}	624	118
1260	9	actress	\\N	{"Gypsy's Wife"}	624	473
1261	10	actress	\\N	{}	625	414
1262	1	actor	\\N	{"John Davis"}	625	471
1263	2	actress	\\N	{"Mrs. John Davis"}	625	474
1264	3	actor	\\N	{"Tom Foster"}	625	468
1265	4	actress	\\N	{"The Davis' Daughter"}	625	470
1266	5	director	\\N	{}	625	467
1267	6	writer	story "Enoch Arden"	{}	625	475
1268	7	writer	writer	{}	625	476
1269	8	cinematographer	\\N	{}	625	49
1270	9	cinematographer	\\N	{}	625	118
1271	1	actress	\\N	{Ofelia}	626	421
1272	2	director	\\N	{}	626	420
1273	3	writer	play "Hamlet"	{}	626	126
1274	4	producer	producer	{}	626	477
1275	1	director	\\N	{}	627	478
1276	2	writer	play "Hamlet"	{}	627	126
1277	1	actor	\\N	{}	628	479
1278	2	actor	\\N	{}	628	290
1279	3	actress	\\N	{}	628	480
1280	4	actress	\\N	{}	628	481
1281	5	director	\\N	{}	628	85
1282	6	writer	play	{}	628	482
1283	7	actress	\\N	{}	628	483
1284	8	actor	\\N	{}	628	484
1285	9	actor	\\N	{}	628	485
1286	1	director	\\N	{}	629	486
1287	2	producer	producer	{}	629	103
1288	10	actor	\\N	{"Lieutenant to Octavius Caesar"}	630	236
1289	1	actor	\\N	{"Marc Antony"}	630	487
1290	2	actress	\\N	{Cleopatra}	630	474
1291	3	actor	\\N	{"Octavius Caesar"}	630	338
1292	4	actor	\\N	{"Mark Anthony"}	630	488
1293	5	director	\\N	{}	630	93
1294	6	director	\\N	{}	630	489
1295	7	writer	play	{}	630	126
1296	8	actress	\\N	{Cleopatra}	630	490
1297	9	actor	\\N	{"Octavius Caesar"}	630	491
1298	1	actress	\\N	{}	631	372
1299	2	director	\\N	{}	631	492
1300	3	writer	play	{}	631	126
1301	10	composer	\\N	{}	632	493
1302	1	actor	\\N	{"Henri III"}	632	494
1303	2	actor	\\N	{"Le duc de Guise"}	632	495
1304	3	actress	\\N	{"Marquise de Noirmoutier, maîtresse du duc"}	632	496
1305	4	actress	\\N	{"Le page"}	632	497
1306	5	director	co-director	{}	632	498
1307	6	writer	writer	{}	632	499
1308	7	producer	producer	{}	632	500
1309	8	producer	producer	{}	632	501
1310	9	producer	producer	{}	632	502
1311	10	actress	\\N	{Daughter}	633	503
1312	1	actress	\\N	{}	633	414
1313	2	actress	\\N	{Daughter}	633	504
1314	3	actor	\\N	{Manager}	633	466
1315	4	actor	\\N	{Suitor}	633	467
1316	5	director	\\N	{}	633	505
1317	6	cinematographer	\\N	{}	633	49
1318	7	cinematographer	\\N	{}	633	118
1319	8	actor	\\N	{Messenger}	633	392
1320	9	actor	\\N	{Singer}	633	471
1321	1	actor	\\N	{Husband}	634	467
1322	2	actress	\\N	{Wife}	634	414
1323	3	actor	\\N	{Extra}	634	466
1324	4	actor	\\N	{Extra}	634	392
1325	5	director	\\N	{}	634	221
1326	6	cinematographer	\\N	{}	634	49
1327	10	actress	\\N	{}	635	506
1328	1	actor	\\N	{"Matteo Rettazzi",Policeman}	635	507
1329	2	actress	\\N	{"Fiammetta - Matteo's Wife"}	635	503
1330	3	actor	\\N	{"Judge Mowbray"}	635	468
1331	4	actress	\\N	{"Mrs. Mowbray"}	635	474
1332	5	director	\\N	{}	635	467
1333	6	cinematographer	\\N	{}	635	118
1334	7	actress	\\N	{"The Mowbrays' Daughter"}	635	470
1335	8	actress	\\N	{"The Maid"}	635	414
1336	9	actress	\\N	{}	635	508
1337	1	actress	\\N	{"Artemesia Sophia Stebbins"}	636	509
1338	2	actress	\\N	{}	636	414
1339	3	actor	\\N	{}	636	507
1340	4	actor	\\N	{}	636	467
1341	5	cinematographer	\\N	{}	636	118
1342	6	actor	\\N	{}	636	392
1343	7	actor	\\N	{}	636	469
1344	8	actor	\\N	{}	636	510
1345	9	actor	\\N	{}	636	468
1346	1	actor	\\N	{"Bandit Leader"}	637	471
1347	2	actress	\\N	{Accomplice,"Woman at Inn"}	637	414
1348	3	actress	\\N	{"Kidnapped Woman"}	637	503
1349	4	actor	\\N	{"Police Sergeant"}	637	468
1350	5	director	\\N	{}	637	467
1351	6	cinematographer	\\N	{}	637	118
1352	7	actor	\\N	{}	637	469
1353	8	actress	\\N	{}	637	474
1354	1	actress	\\N	{}	638	511
1355	2	actress	\\N	{}	638	512
1356	3	actor	\\N	{}	638	513
1357	4	director	\\N	{}	638	93
1358	5	writer	poem	{}	638	514
1359	6	writer	\\N	{}	638	263
1360	10	actor	\\N	{"Backstage Man"}	639	510
1361	1	actress	\\N	{"Mrs. Bailey"}	639	474
1362	2	actress	\\N	{"Mrs. Bailey's Daughter"}	639	470
1363	3	actress	\\N	{}	639	515
1364	4	actor	\\N	{"Member of Audience","Backstage Man"}	639	507
1365	5	director	\\N	{}	639	467
1366	6	cinematographer	\\N	{}	639	118
1367	7	actor	\\N	{Messenger}	639	392
1368	8	actor	\\N	{Manager}	639	471
1369	9	actor	\\N	{"The Doctor"}	639	516
1370	10	actor	\\N	{"The Butler"}	640	510
1371	1	actress	\\N	{"Myrtle Vane"}	640	474
1372	2	actor	\\N	{"Mr. Wharton"}	640	468
1373	3	actress	\\N	{"The Maid","Party Guest"}	640	414
1374	4	actress	\\N	{"Mrs. Wharton (unconfirmed)"}	640	515
1375	5	director	\\N	{}	640	467
1376	6	cinematographer	\\N	{}	640	49
1377	7	cinematographer	\\N	{}	640	118
1378	8	actress	\\N	{"Party Guest"}	640	372
1379	9	actor	\\N	{"The Palmister"}	640	507
1380	1	producer	producer	{}	641	37
1381	1	actor	\\N	{}	642	517
1382	2	actor	\\N	{}	642	518
1383	3	cinematographer	\\N	{}	642	319
1384	1	actor	\\N	{Mike}	643	466
1385	2	actor	\\N	{"The Black Viper"}	643	507
1386	3	actor	\\N	{Rescuer}	643	467
1387	4	actor	\\N	{"Gang Member"}	643	393
1388	5	director	\\N	{}	643	505
1389	6	cinematographer	\\N	{}	643	49
1390	7	cinematographer	\\N	{}	643	118
1391	8	actor	\\N	{Rescuer}	643	510
1392	1	actor	\\N	{Father}	644	466
1393	2	actor	\\N	{Son}	644	392
1394	3	director	\\N	{}	644	221
1395	4	cinematographer	\\N	{}	644	49
1396	1	actor	\\N	{}	645	519
1397	2	actor	\\N	{}	645	520
1398	3	director	\\N	{}	645	98
1399	4	writer	\\N	{}	645	521
1400	5	cinematographer	\\N	{}	645	131
1401	1	actor	\\N	{Swifty}	646	392
1402	2	actor	\\N	{Villain}	646	466
1403	3	director	\\N	{}	646	221
1404	4	cinematographer	\\N	{}	646	49
1405	10	actor	\\N	{}	647	393
1406	1	actor	\\N	{Frank}	647	468
1407	2	actress	\\N	{Jennie}	647	414
1408	3	actor	\\N	{"Jennie's Father"}	647	471
1409	4	actor	\\N	{"Bill - a Thief"}	647	507
1410	5	director	\\N	{}	647	467
1411	6	cinematographer	\\N	{}	647	49
1412	7	cinematographer	\\N	{}	647	118
1413	8	actor	\\N	{}	647	522
1414	9	actor	\\N	{Bellboy}	647	392
1415	10	actress	\\N	{"Party Guest"}	648	523
1416	1	actor	\\N	{"George Redfeather"}	648	471
1417	2	actor	\\N	{"Lieutenant Penrose"}	648	468
1418	3	actress	\\N	{"Gladys Penrose"}	648	474
1419	4	actor	\\N	{"Indian Agent",Indian}	648	507
1420	5	director	\\N	{}	648	467
1421	6	cinematographer	\\N	{}	648	118
1422	7	actor	\\N	{"Chinese Servant"}	648	522
1423	8	actor	\\N	{}	648	524
1424	9	actor	\\N	{"Party Guest",Indian}	648	469
1425	1	actor	\\N	{}	649	525
1426	2	actress	\\N	{}	649	526
1427	3	actor	\\N	{}	649	527
1428	4	actor	\\N	{}	649	528
1429	5	director	\\N	{}	649	85
1430	6	actor	\\N	{}	649	529
1431	7	actor	\\N	{}	649	530
1432	8	actor	\\N	{}	649	485
1433	9	actor	\\N	{}	649	482
1434	1	director	\\N	{}	650	531
1435	2	producer	producer	{}	650	532
1436	1	director	\\N	{}	651	85
1437	1	director	\\N	{}	652	533
1438	1	actor	\\N	{"Paddy - the Policeman"}	653	467
1439	2	actor	\\N	{"Rent Collector"}	653	466
1440	3	director	\\N	{}	653	221
1441	4	cinematographer	\\N	{}	653	49
1442	10	actress	\\N	{Customer}	654	503
1443	1	actress	\\N	{"Mrs. Martin"}	654	474
1444	2	actress	\\N	{"Margie - Mrs. Martin's Daughter"}	654	534
1445	3	actor	\\N	{"Mike McLaren"}	654	471
1446	4	actor	\\N	{}	654	522
1447	5	director	\\N	{}	654	467
1448	6	cinematographer	\\N	{}	654	49
1449	7	actress	\\N	{}	654	470
1450	8	actor	\\N	{"One of Mike's Assistants"}	654	507
1451	9	actor	\\N	{"One of Mike's Assistants"}	654	469
1452	1	actor	\\N	{Druid,"Judge in the Spanish Inquisition"}	655	46
1453	1	actor	\\N	{"A Classmate"}	656	466
1454	2	actress	\\N	{Extra}	656	414
1455	3	actor	\\N	{Extra}	656	467
1456	4	director	\\N	{}	656	221
1457	5	cinematographer	\\N	{}	656	49
1458	6	cinematographer	\\N	{}	656	118
1459	10	actor	\\N	{"Dinner Guest",Policeman}	657	510
1460	1	actress	\\N	{Bridget,"Dinner Guest"}	657	474
1461	2	actress	\\N	{"Dinner Guest"}	657	414
1462	3	actor	\\N	{}	657	522
1463	4	actor	\\N	{Waiter}	657	507
1464	5	director	\\N	{}	657	467
1465	6	cinematographer	\\N	{}	657	49
1466	7	actor	\\N	{"Man on Street"}	657	392
1467	8	actor	\\N	{"Dinner Guest",Moneylender}	657	469
1468	9	actress	\\N	{"Dinner Guest"}	657	535
1469	1	actor	\\N	{}	658	536
1470	2	actor	\\N	{}	658	537
1471	3	actor	\\N	{}	658	538
1472	4	actor	\\N	{}	658	539
1473	5	director	\\N	{}	658	85
1474	10	actor	\\N	{"The Waiter","A Policeman"}	659	510
1475	1	actor	\\N	{"Mr. Brown"}	659	469
1476	2	actress	\\N	{"Mrs. Brown"}	659	474
1477	3	actor	\\N	{"Mr. Wells"}	659	468
1478	4	actress	\\N	{}	659	414
1479	5	director	\\N	{}	659	467
1480	6	cinematographer	\\N	{}	659	49
1481	7	actor	\\N	{"Dinner Guest"}	659	507
1482	8	actor	\\N	{Valet}	659	392
1483	9	actress	\\N	{"Dinner Guest"}	659	535
1484	1	director	\\N	{}	660	85
1485	1	director	\\N	{}	661	85
1486	1	actor	\\N	{"Edmond Dantes"}	662	425
1487	2	actor	\\N	{}	662	429
1488	3	director	\\N	{}	662	540
1489	4	writer	novel	{}	662	100
1490	5	producer	producer	{}	662	200
1491	1	actress	\\N	{Cupid}	663	541
1492	2	actor	\\N	{}	663	542
1493	3	actress	\\N	{Woman}	663	543
1494	4	actor	\\N	{}	663	292
1495	5	director	\\N	{}	663	544
1496	6	cinematographer	\\N	{}	663	98
1497	7	actress	\\N	{}	663	545
1498	8	actor	\\N	{"Extra at Ball"}	663	467
1499	1	actor	\\N	{}	664	290
1500	2	actor	\\N	{}	664	546
1501	3	director	\\N	{}	664	417
1502	4	writer	novella	{}	664	547
1503	1	actress	\\N	{}	665	321
1504	2	director	\\N	{}	665	407
1505	3	producer	producer	{}	665	324
1506	1	actor	\\N	{"Harold Thornton"}	666	468
1507	2	actress	\\N	{"Mrs. Harold Thornton"}	666	523
1508	3	actor	\\N	{"The Devil"}	666	507
1509	4	actor	\\N	{"The Wife's Companion"}	666	469
1510	5	director	\\N	{}	666	467
1511	6	cinematographer	\\N	{}	666	49
1512	7	actress	\\N	{"A Model"}	666	474
1513	8	actor	\\N	{"The Waiter"}	666	510
1514	9	actress	\\N	{}	666	535
1515	1	actor	\\N	{}	667	290
1516	2	actor	\\N	{Lázaro}	667	548
1517	3	actor	\\N	{Melchor}	667	415
1518	4	actor	\\N	{}	667	549
1519	5	director	\\N	{}	667	85
1520	6	writer	play	{}	667	550
1521	7	actor	\\N	{}	667	485
1522	8	actor	\\N	{}	667	482
1523	1	actor	\\N	{"Don Juan Tenorio"}	668	551
1524	2	director	\\N	{}	668	266
1525	3	director	\\N	{}	668	552
1526	4	writer	play	{}	668	553
1527	1	director	\\N	{}	669	417
1528	2	writer	novel	{}	669	547
1529	1	actor	\\N	{}	670	554
1530	2	actor	\\N	{}	670	290
1531	3	director	\\N	{}	670	417
1532	4	writer	play	{}	670	555
1533	1	actor	\\N	{}	671	487
1534	2	actor	\\N	{}	671	519
1535	3	actor	\\N	{}	671	520
1536	4	actress	\\N	{}	671	556
1537	5	director	\\N	{}	671	98
1538	1	director	\\N	{}	672	85
1539	1	actor	\\N	{"The Wizard of Oz Man"}	673	557
1540	2	actor	\\N	{"His Majesty the Scarecrow","Para Bruin - the Rubber Bear"}	673	558
1541	3	actor	\\N	{"Nick Chopper - Tin Woodman","The White Rabbit"}	673	559
1542	4	actor	\\N	{"Tik-Tok - the Machine Man"}	673	560
1543	5	director	\\N	{}	673	429
1544	6	director	\\N	{}	673	561
1545	7	composer	\\N	{}	673	562
1546	1	actor	\\N	{Inventor}	674	466
1547	2	actor	\\N	{"Cop in Court"}	674	467
1548	3	director	\\N	{}	674	221
1549	4	cinematographer	\\N	{}	674	49
1550	1	actor	\\N	{"Prison Guard"}	675	468
1551	2	actor	\\N	{Prisoner}	675	467
1552	3	actor	\\N	{Prisoner}	675	393
1553	4	director	\\N	{}	675	221
1554	5	cinematographer	\\N	{}	675	49
1555	1	director	\\N	{}	676	533
1556	10	actress	\\N	{}	677	535
1557	1	actor	\\N	{Hendricks}	677	507
1558	2	actor	\\N	{"Pong Lee"}	677	468
1559	3	actress	\\N	{"Kidnapped Woman"}	677	414
1560	4	actress	\\N	{}	677	504
1561	5	director	\\N	{}	677	467
1562	6	producer	producer	{}	677	98
1563	7	cinematographer	\\N	{}	677	118
1564	8	actor	\\N	{}	677	524
1565	9	actress	\\N	{Detective}	677	503
1566	10	actress	\\N	{"First Couple"}	678	474
1567	1	actor	\\N	{"Bill Wilkins"}	678	510
1568	2	actor	\\N	{"Wilkins' Son"}	678	468
1569	3	actor	\\N	{"Professor Dyem","First Couple"}	678	507
1570	4	actress	\\N	{}	678	414
1571	5	director	\\N	{}	678	467
1572	6	cinematographer	\\N	{}	678	49
1573	7	actor	\\N	{"The Butler"}	678	563
1574	8	actor	\\N	{}	678	524
1575	9	actor	\\N	{"Clumsy Waiter"}	678	471
1576	10	actress	\\N	{"Nellie Caufield as a Child"}	679	564
1577	1	actor	\\N	{"Mr. Caufield"}	679	468
1578	2	actress	\\N	{"Mrs. Caufield"}	679	414
1579	3	actor	\\N	{"Colonel Wilkinson"}	679	469
1580	4	actor	\\N	{"George Wilkinson"}	679	392
1581	5	director	\\N	{}	679	467
1582	6	cinematographer	\\N	{}	679	49
1583	7	cinematographer	\\N	{}	679	118
1584	8	actor	\\N	{"Bobby Wilkinson as an Adult"}	679	507
1585	9	actress	\\N	{"Nellie Caufield as an Adult"}	679	503
1586	1	director	\\N	{}	680	85
1587	1	director	\\N	{}	681	376
1588	1	actress	\\N	{}	682	465
1589	2	director	\\N	{}	682	565
1590	1	actor	\\N	{Thief,Butler}	683	468
1591	2	actor	\\N	{Thief}	683	507
1592	3	actor	\\N	{}	683	524
1593	4	actor	\\N	{}	683	471
1594	5	director	\\N	{}	683	467
1595	6	writer	story "Just Meat"	{}	683	566
1596	7	cinematographer	\\N	{}	683	118
1597	1	actor	\\N	{"Irving Robertson"}	684	471
1598	2	actor	\\N	{"Frank Wilson"}	684	468
1599	3	actor	\\N	{"Henderson - the Manager"}	684	507
1600	4	actress	\\N	{"The Maid"}	684	414
1601	5	director	\\N	{}	684	467
1602	6	cinematographer	\\N	{}	684	118
1603	7	actor	\\N	{}	684	524
1604	8	actor	\\N	{}	684	469
1605	1	actor	\\N	{}	685	567
1606	1	actor	\\N	{}	686	568
1607	2	actor	\\N	{}	686	569
1608	3	actor	\\N	{}	686	570
1609	4	director	\\N	{}	686	571
1610	1	director	\\N	{}	687	85
1611	10	actor	\\N	{Indian}	688	510
1612	1	actor	\\N	{"Bill Preston"}	688	471
1613	2	actor	\\N	{"Nellie's Father"}	688	468
1614	3	actress	\\N	{"Nellie Carson"}	688	372
1615	4	actor	\\N	{Indian}	688	507
1616	5	director	\\N	{}	688	467
1617	6	cinematographer	\\N	{}	688	118
1618	7	actor	\\N	{Indian}	688	469
1619	8	actress	\\N	{Woman}	688	474
1620	9	actor	\\N	{}	688	572
1621	10	actor	\\N	{}	689	573
1622	1	actor	\\N	{Jose}	689	572
1623	2	actor	\\N	{"Tom Berkeley"}	689	469
1624	3	actress	\\N	{"Mildred West"}	689	503
1625	4	actor	\\N	{"Bill Gates"}	689	471
1626	5	director	\\N	{}	689	467
1627	6	writer	writer	{}	689	472
1628	7	cinematographer	\\N	{}	689	118
1629	8	actress	\\N	{"Woman on Street","Party Guest"}	689	414
1630	9	actress	\\N	{}	689	515
1631	1	actor	\\N	{}	690	282
1632	2	actor	\\N	{}	690	539
1633	3	actor	\\N	{}	690	574
1634	4	actor	\\N	{}	690	331
1635	5	director	\\N	{}	690	85
1636	10	actor	\\N	{"Confederate Soldier","Union Soldier"}	691	510
1637	1	actor	\\N	{"Jack Stanford"}	691	469
1638	2	actress	\\N	{Dorothy}	691	575
1639	3	actor	\\N	{"Confederate Soldier"}	691	507
1640	4	actor	\\N	{Servant}	691	471
1641	5	director	\\N	{}	691	467
1642	6	cinematographer	\\N	{}	691	49
1643	7	cinematographer	\\N	{}	691	118
1644	8	actor	\\N	{}	691	576
1645	9	actor	\\N	{}	691	577
1646	1	actress	\\N	{O'Yama}	692	474
1647	2	actor	\\N	{"O'Yama's Lover"}	692	507
1648	3	actor	\\N	{Footman}	692	467
1649	4	actor	\\N	{"Grand Daimio"}	692	516
1650	5	writer	novel	{}	692	578
1651	6	cinematographer	\\N	{}	692	118
1652	7	actor	\\N	{Footman}	692	510
1653	8	actor	\\N	{Spy}	692	468
1654	10	actor	\\N	{Messenger}	693	392
1655	1	actress	\\N	{"Mrs. Harcourt"}	693	579
1656	2	actress	\\N	{"Daisy Harcourt"}	693	414
1657	3	actress	\\N	{"Jessie Marshall"}	693	580
1658	4	actor	\\N	{"Bill Wolfe"}	693	468
1659	5	director	\\N	{}	693	467
1660	6	cinematographer	\\N	{}	693	118
1661	7	actor	\\N	{"Mr. Miller"}	693	469
1662	8	actor	\\N	{"At Brothel"}	693	563
1663	9	actor	\\N	{"The Man with the Letter","At Brothel","Wedding Guest"}	693	507
1664	1	actor	\\N	{Father}	694	467
1665	2	actor	\\N	{"Extra in Crowd"}	694	392
1666	3	director	\\N	{}	694	221
1667	4	cinematographer	\\N	{}	694	49
1668	1	actor	\\N	{"Mr. Jones"}	695	466
1669	2	director	\\N	{}	695	221
1670	3	writer	writer	{}	695	476
1671	4	cinematographer	\\N	{}	695	49
1672	1	actor	\\N	{}	696	466
1673	2	actress	\\N	{Hulda}	696	372
1674	3	actor	\\N	{"Handy Hank"}	696	467
1675	4	actor	\\N	{}	696	581
1676	5	director	\\N	{}	696	221
1677	6	cinematographer	\\N	{}	696	49
1678	7	actor	\\N	{Extra}	696	393
1679	8	actor	\\N	{Extra}	696	468
1680	1	director	\\N	{}	697	93
1681	2	director	\\N	{}	697	97
1682	3	cinematographer	\\N	{}	697	457
1683	1	director	\\N	{}	698	269
1684	2	cinematographer	\\N	{}	698	582
1685	10	actor	\\N	{}	699	572
1686	1	actor	\\N	{Ingomar}	699	471
1687	2	actor	\\N	{Myron}	699	468
1688	3	actress	\\N	{Parthenia}	699	474
1689	4	actor	\\N	{"Polydor - the Merchant"}	699	507
1690	5	director	\\N	{}	699	467
1691	6	writer	novel	{}	699	583
1692	7	cinematographer	\\N	{}	699	49
1693	8	actress	\\N	{}	699	414
1694	9	actor	\\N	{Barbarian}	699	469
1695	1	actor	\\N	{"The Trapper"}	700	469
1696	2	actress	\\N	{"The Trapper's Wife"}	700	474
1697	3	actor	\\N	{"The Canuck"}	700	507
1698	4	actor	\\N	{}	700	577
1699	5	director	\\N	{}	700	467
1700	6	cinematographer	\\N	{}	700	49
1701	7	cinematographer	\\N	{}	700	118
1702	1	actor	\\N	{Messenger}	701	466
1703	2	actor	\\N	{Mailman}	701	467
1704	3	actor	\\N	{"Fruit Vendor"}	701	393
1705	4	actor	\\N	{Mover}	701	510
1706	5	director	\\N	{}	701	221
1707	6	cinematographer	\\N	{}	701	49
1708	1	actor	\\N	{"Julius Caesar"}	702	489
1709	2	actor	\\N	{"First Citizen"}	702	584
1710	3	actor	\\N	{}	702	487
1711	4	actor	\\N	{"Gaius Cassius"}	702	338
1712	5	director	\\N	{}	702	93
1713	6	writer	scenario	{}	702	263
1714	7	writer	play	{}	702	126
1715	10	actor	\\N	{}	703	468
1716	1	actor	\\N	{"Ward Fatherly"}	703	466
1717	2	actress	\\N	{}	703	504
1718	3	actor	\\N	{"Card Sharp"}	703	467
1719	4	actor	\\N	{}	703	507
1720	5	director	\\N	{}	703	221
1721	6	writer	play	{}	703	585
1722	7	writer	scenario	{}	703	472
1723	8	cinematographer	\\N	{}	703	49
1724	9	cinematographer	\\N	{}	703	118
1725	1	actor	\\N	{"Heinie Holtzmeyer"}	704	468
1726	2	actor	\\N	{"Cannibal in Top Hat"}	704	467
1727	3	actress	\\N	{"Extra in Chase"}	704	414
1728	4	actor	\\N	{"Extra in Bar"}	704	393
1729	5	director	\\N	{}	704	221
1730	6	cinematographer	\\N	{}	704	49
1731	1	actor	\\N	{Messenger}	705	467
1732	2	actress	\\N	{"Person in Court"}	705	414
1733	3	actor	\\N	{Soldier}	705	510
1734	4	director	\\N	{}	705	221
1735	5	cinematographer	\\N	{}	705	49
1736	1	actor	\\N	{}	706	487
1737	2	actress	\\N	{Leah}	706	465
1738	3	director	\\N	{}	706	565
1739	4	writer	story	{}	706	586
1740	1	actor	\\N	{}	707	203
1741	2	director	\\N	{}	707	98
1742	1	actor	\\N	{Bandit}	708	466
1743	2	actor	\\N	{Englishman}	708	573
1744	3	actor	\\N	{"Heinrich Spitzelperger"}	708	393
1745	4	cinematographer	\\N	{}	708	49
1746	10	actress	\\N	{"Banquet Guest"}	709	556
1747	1	actor	\\N	{Macbeth}	709	338
1748	2	actress	\\N	{"Lady Macbeth"}	709	587
1749	3	actor	\\N	{Macduff}	709	236
1750	4	actor	\\N	{Banquo,"King Duncan"}	709	489
1751	5	director	\\N	{}	709	93
1752	6	writer	play	{}	709	126
1753	7	production_designer	\\N	{}	709	588
1754	8	actor	\\N	{}	709	589
1755	9	actress	\\N	{"Banquet Guest"}	709	474
1756	1	director	\\N	{}	710	93
1757	1	director	\\N	{}	711	85
1758	1	actor	\\N	{"Tom Wilkins"}	712	507
1759	2	actress	\\N	{Gladys}	712	414
1760	3	actor	\\N	{"False Clergyman"}	712	471
1761	4	actor	\\N	{Priest}	712	468
1762	5	director	\\N	{}	712	467
1763	6	cinematographer	\\N	{}	712	49
1764	7	cinematographer	\\N	{}	712	118
1765	1	actor	\\N	{"Bank Clerk"}	713	466
1766	2	actor	\\N	{"Station Agent",Messenger}	713	467
1767	3	actor	\\N	{"Wells Fargo Clerk"}	713	507
1768	4	actress	\\N	{"Gang Member"}	713	372
1769	5	director	\\N	{}	713	221
1770	6	cinematographer	\\N	{}	713	49
1771	7	cinematographer	\\N	{}	713	118
1772	8	actor	\\N	{"Gang Member"}	713	393
1773	9	actor	\\N	{"Gang Member"}	713	510
1774	1	actress	\\N	{"Maria Marten"}	714	299
1775	2	actor	\\N	{"William Corder"}	714	298
1776	3	director	\\N	{}	714	195
1777	10	actor	\\N	{}	715	590
1778	1	actress	\\N	{}	715	591
1779	2	actor	\\N	{}	715	592
1780	3	actress	\\N	{}	715	593
1781	4	actress	\\N	{}	715	594
1782	5	director	\\N	{}	715	595
1783	6	director	\\N	{}	715	85
1784	7	writer	writer	{}	715	596
1785	8	writer	play	{}	715	463
1786	9	actor	\\N	{}	715	597
1787	1	actress	\\N	{Portia}	716	598
1788	2	actor	\\N	{Shylock}	716	338
1789	3	actress	\\N	{Jessica}	716	556
1790	4	actor	\\N	{"Undetermined Role"}	716	487
1791	5	director	\\N	{}	716	93
1792	6	writer	scenario	{}	716	263
1793	7	writer	play	{}	716	126
1794	8	actor	\\N	{"Undetermined Role"}	716	236
1795	1	actor	\\N	{Father}	717	466
1796	2	actor	\\N	{"Boy in Front of Store"}	717	392
1797	3	director	\\N	{}	717	221
1798	4	writer	writer	{}	717	467
1799	5	cinematographer	\\N	{}	717	49
1800	1	director	\\N	{}	718	85
1801	10	actor	\\N	{"Undetermined Secondary Role"}	719	393
1802	1	actor	\\N	{"Honorable Patrick McPheeney"}	719	522
1803	2	actor	\\N	{"McPheeney's Aide"}	719	468
1804	3	actor	\\N	{}	719	466
1805	4	actor	\\N	{"Happy Hooligan Character"}	719	507
1806	5	director	\\N	{}	719	467
1807	6	writer	writer	{}	719	510
1808	7	cinematographer	\\N	{}	719	49
1809	8	actor	\\N	{"Young Man"}	719	392
1810	9	actor	\\N	{}	719	599
1811	1	actor	\\N	{"The Miser"}	720	471
1812	2	actor	\\N	{"First Villain"}	720	468
1813	3	actor	\\N	{"Second Villain"}	720	507
1814	4	actor	\\N	{"Bank Clerk"}	720	469
1815	5	director	\\N	{}	720	467
1816	6	cinematographer	\\N	{}	720	49
1817	7	actress	\\N	{"Bank Customer",Landlady}	720	474
1818	8	actress	\\N	{"Bank Customer"}	720	535
1819	9	actor	\\N	{"Man on the Street"}	720	510
1982	9	actress	\\N	{}	745	621
1820	10	actress	\\N	{"Guest at Ball"}	722	535
1821	1	actor	\\N	{"Mr. Jones"}	722	522
1822	2	actress	\\N	{"Mrs. Jones"}	722	474
1823	3	actor	\\N	{Butler,Policeman}	722	510
1824	4	actor	\\N	{"Man in Blackface","Guest at Ball"}	722	507
1825	5	director	\\N	{}	722	467
1826	6	composer	\\N	{}	722	600
1827	7	cinematographer	\\N	{}	722	49
1828	8	actor	\\N	{"Guest at Ball"}	722	471
1829	9	actor	\\N	{"Guest at Ball"}	722	469
1830	10	actress	\\N	{}	723	601
1831	1	actor	\\N	{"Mr. Jones"}	723	522
1832	2	actress	\\N	{"Mrs. Jones"}	723	474
1833	3	actress	\\N	{"The Maid"}	723	535
1834	4	actress	\\N	{"Leader of Temperance League"}	723	579
1835	5	director	\\N	{}	723	467
1836	6	writer	writer	{}	723	476
1837	7	cinematographer	\\N	{}	723	49
1838	8	actress	\\N	{}	723	414
1839	9	actor	\\N	{}	723	393
1840	1	actor	\\N	{}	724	467
1841	2	director	\\N	{}	724	221
1842	3	cinematographer	\\N	{}	724	49
1843	1	actor	\\N	{"Debt Collector"}	725	466
1844	2	actor	\\N	{"Doctor, Charity Worker"}	725	467
1845	3	actor	\\N	{"Charity Worker"}	725	510
1846	4	director	\\N	{}	725	221
1847	5	cinematographer	\\N	{}	725	49
1848	1	actor	\\N	{Othello}	726	338
1849	2	actress	\\N	{Desdemona}	726	598
1850	3	actor	\\N	{Iago}	726	602
1851	4	actor	\\N	{Cassio}	726	236
1852	5	writer	play	{}	726	126
1853	6	actor	\\N	{Roderigo}	726	603
1854	7	actor	\\N	{Soldier}	726	488
1855	8	actor	\\N	{Soldier}	726	604
1856	9	actor	\\N	{}	726	605
1857	1	actor	\\N	{"Dick Stanley - Stage Driver"}	727	466
1858	2	director	\\N	{}	727	221
1859	3	writer	writer	{}	727	467
1860	4	cinematographer	\\N	{}	727	49
1861	10	actor	\\N	{}	728	606
1862	1	actress	\\N	{"Old Woman"}	728	504
1863	2	actor	\\N	{Son}	728	466
1864	3	actor	\\N	{"Barroom Patron"}	728	510
1865	4	actor	\\N	{Bailiff}	728	393
1866	5	director	\\N	{}	728	472
1867	6	writer	poem	{}	728	607
1868	7	cinematographer	\\N	{}	728	49
1869	8	actor	\\N	{}	728	505
1870	9	actress	\\N	{}	728	608
1871	1	actor	\\N	{}	729	609
1872	1	director	\\N	{}	730	385
1873	2	cinematographer	\\N	{}	730	387
1874	10	actor	\\N	{}	731	516
1875	1	actor	\\N	{"Young Wilkinson"}	731	507
1876	2	actress	\\N	{"Mrs. Wilkinson"}	731	414
1877	3	actor	\\N	{"A Creditor"}	731	471
1878	4	actor	\\N	{}	731	469
1879	5	director	\\N	{}	731	467
1880	6	writer	writer	{}	731	472
1881	7	cinematographer	\\N	{}	731	49
1882	8	cinematographer	\\N	{}	731	118
1883	9	actress	\\N	{}	731	474
1884	1	actor	\\N	{"John Holland"}	732	469
1885	2	actress	\\N	{"Mrs. John Holland"}	732	523
1886	3	actor	\\N	{"Tom Roland"}	732	468
1887	4	actress	\\N	{"Tomboy Nellie"}	732	474
1888	5	director	\\N	{}	732	467
1889	6	cinematographer	\\N	{}	732	49
1890	7	actor	\\N	{Boatman}	732	507
1891	8	actress	\\N	{}	732	414
1892	9	actor	\\N	{}	732	471
1893	1	director	\\N	{}	733	486
1894	2	producer	producer	{}	733	103
1895	1	actor	\\N	{Lover}	734	467
1896	2	actor	\\N	{Waiter}	734	466
1897	3	actress	\\N	{Lady-in-Waiting}	734	414
1898	4	director	\\N	{}	734	221
1899	5	cinematographer	\\N	{}	734	49
1900	1	actor	\\N	{"Backstage Messenger"}	735	392
1901	2	actor	\\N	{"Stage Manager"}	735	393
1902	3	actor	\\N	{"Extra on Stage"}	735	467
1903	4	director	\\N	{}	735	221
1904	5	cinematographer	\\N	{}	735	49
1905	6	cinematographer	\\N	{}	735	118
1906	1	writer	writer	{}	736	203
1907	1	actor	\\N	{"The Husband"}	737	468
1908	2	actress	\\N	{"The Wife"}	737	474
1909	3	actor	\\N	{"The Lover"}	737	510
1910	4	actor	\\N	{}	737	466
1911	5	director	\\N	{}	737	467
1912	6	writer	novel	{}	737	610
1913	7	writer	story	{}	737	611
1914	8	writer	writer	{}	737	476
1915	9	cinematographer	\\N	{}	737	49
1916	10	actor	\\N	{}	738	393
1917	1	actress	\\N	{"The Red Girl"}	738	474
1918	2	actor	\\N	{"The Red Girl's Husband"}	738	471
1919	3	actress	\\N	{"Woman in Second Bar"}	738	414
1920	4	actress	\\N	{}	738	612
1921	5	director	\\N	{}	738	467
1922	6	writer	writer	{}	738	472
1923	7	cinematographer	\\N	{}	738	118
1924	8	actor	\\N	{Indian,"Man in First Bar","Man in Second Bar"}	738	507
1925	9	actor	\\N	{}	738	469
1926	1	actor	\\N	{"The Sioux"}	739	471
1927	2	actor	\\N	{"The Child"}	739	613
1928	3	actress	\\N	{Woman}	739	414
1929	4	actor	\\N	{Villain}	739	507
1930	5	director	\\N	{}	739	467
1931	6	writer	novel	{}	739	578
1932	7	cinematographer	\\N	{}	739	49
1933	8	cinematographer	\\N	{}	739	118
1934	9	actor	\\N	{Villain}	739	468
1935	1	actress	\\N	{Mother}	740	614
1936	2	actress	\\N	{Baby}	740	615
1937	3	actor	\\N	{Father}	740	467
1938	4	actor	\\N	{Woodsman}	740	616
1939	5	director	\\N	{}	740	544
1940	6	cinematographer	\\N	{}	740	98
1941	10	actor	\\N	{}	741	468
1942	1	actor	\\N	{"Richard III"}	741	338
1943	2	actress	\\N	{}	741	504
1944	3	actor	\\N	{}	741	487
1945	4	actress	\\N	{}	741	598
1946	5	director	\\N	{}	741	93
1947	6	writer	play	{}	741	126
1948	7	actor	\\N	{}	741	617
1949	8	actress	\\N	{}	741	474
1950	9	actor	\\N	{}	741	236
1951	1	actor	\\N	{}	742	425
1952	2	actress	\\N	{}	742	426
1953	3	actor	\\N	{}	742	424
1954	4	actor	\\N	{}	742	427
1955	5	director	\\N	{}	742	429
1956	6	writer	story	{}	742	618
1957	7	writer	scenario	{}	742	561
1958	8	producer	producer	{}	742	200
1959	10	actor	\\N	{}	743	619
1960	1	actress	\\N	{"Ruth Simonson"}	743	474
1961	2	actor	\\N	{"Soloman Bimberg"}	743	507
1962	3	actress	\\N	{"The Daughter"}	743	470
1963	4	actor	\\N	{Customer}	743	522
1964	5	director	\\N	{}	743	467
1965	6	cinematographer	\\N	{}	743	49
1966	7	actor	\\N	{}	743	581
1967	8	actor	\\N	{}	743	471
1968	9	actor	\\N	{"In Bookstore",Matchmaker}	743	469
1969	1	actor	\\N	{"Si Green"}	744	466
1970	2	actress	\\N	{"College Student"}	744	372
1971	3	director	\\N	{}	744	221
1972	4	cinematographer	\\N	{}	744	49
1973	10	actor	\\N	{Capulet}	745	489
1974	1	actor	\\N	{Romeo}	745	236
1975	2	actress	\\N	{Juliet}	745	474
1976	3	actor	\\N	{Tybalt}	745	603
1977	4	actress	\\N	{Bit}	745	620
1978	5	director	\\N	{}	745	93
1979	6	writer	play	{}	745	126
1980	7	actress	\\N	{Nurse}	745	587
1981	8	actor	\\N	{Montague}	745	488
1983	1	actress	\\N	{"The Maidservant"}	746	622
1984	2	actor	\\N	{"The Chinese Opium Den Attendant"}	746	46
1985	1	actress	\\N	{Model}	747	504
1986	2	actor	\\N	{}	747	466
1987	3	actor	\\N	{}	747	467
1988	4	actor	\\N	{Extra}	747	393
1989	5	director	\\N	{}	747	221
1990	6	cinematographer	\\N	{}	747	49
1991	7	actor	\\N	{Extra}	747	510
1992	8	actor	\\N	{Extra}	747	468
1993	1	actress	\\N	{She}	748	504
1994	2	actor	\\N	{}	748	338
1995	3	director	\\N	{}	748	98
1996	4	writer	novel	{}	748	117
1997	1	actor	\\N	{}	749	623
1998	2	actor	\\N	{Raffles}	749	624
1999	3	actor	\\N	{"Sherlock Holmes"}	749	318
2000	4	actor	\\N	{Moriarty}	749	335
2001	5	cinematographer	\\N	{}	749	319
2002	1	actor	\\N	{"Sherlock Holmes"}	750	318
2003	2	actor	\\N	{}	750	624
2004	3	cinematographer	\\N	{}	750	319
2005	1	actor	\\N	{"Sherlock Holmes"}	751	318
2006	2	actress	\\N	{}	751	625
2007	3	actor	\\N	{}	751	624
2008	4	actor	\\N	{}	751	626
2009	5	cinematographer	\\N	{}	751	319
2010	1	director	\\N	{}	752	85
2011	10	actor	\\N	{}	753	619
2012	1	actor	\\N	{"Mr. Bibbs"}	753	522
2013	2	actress	\\N	{"Mrs. Bibbs"}	753	474
2014	3	actress	\\N	{Maid}	753	414
2015	4	actor	\\N	{"Man in Top Hat"}	753	507
2016	5	director	\\N	{}	753	467
2017	6	cinematographer	\\N	{}	753	49
2018	7	actor	\\N	{Messenger}	753	392
2019	8	actor	\\N	{Policeman}	753	469
2020	9	actor	\\N	{}	753	516
2021	1	actress	\\N	{}	754	504
2022	2	actor	\\N	{"A Child"}	754	392
2023	3	director	\\N	{}	754	221
2024	4	cinematographer	\\N	{}	754	49
2025	10	actor	\\N	{"In Office",Waiter}	755	507
2026	1	actress	\\N	{"Working Woman - 1st Sister"}	755	474
2027	2	actress	\\N	{"Dying Woman - 2nd Sister"}	755	414
2028	3	actor	\\N	{"Stock Boy"}	755	392
2029	4	actor	\\N	{Foreman,"In Office","In Second Restaurant"}	755	510
2030	5	director	\\N	{}	755	467
2031	6	writer	story	{}	755	627
2032	7	writer	writer	{}	755	476
2033	8	cinematographer	\\N	{}	755	49
2034	9	actor	\\N	{Employer,"In Second Restaurant"}	755	468
2035	10	actor	\\N	{"Man in Bar"}	756	510
2036	1	actor	\\N	{"Phil Bowen"}	756	467
2037	2	actor	\\N	{"Sam Lewis - Bowen's Accomplice"}	756	466
2038	3	actress	\\N	{"Mother on Street"}	756	414
2039	4	actress	\\N	{"Roulette Sue"}	756	372
2040	5	director	\\N	{}	756	221
2041	6	cinematographer	\\N	{}	756	49
2042	7	cinematographer	\\N	{}	756	118
2043	8	actor	\\N	{"Man in Bar","Posse Member"}	756	507
2044	9	actor	\\N	{"Man in Bar"}	756	393
2045	1	actress	\\N	{}	757	465
2046	2	director	\\N	{}	757	565
2047	1	actor	\\N	{"Mr. Jenkins"}	758	468
2048	2	actress	\\N	{"Mrs. Jenkins"}	758	474
2049	3	actress	\\N	{"The Nurse"}	758	414
2050	4	actress	\\N	{"The Child"}	758	470
2051	5	director	\\N	{}	758	467
2052	6	cinematographer	\\N	{}	758	49
2053	7	actor	\\N	{"The Detective","The Mover"}	758	507
2054	8	actor	\\N	{Smithson,"Man at Broker's"}	758	522
2055	9	actor	\\N	{"Man at Broker's"}	758	471
2056	1	actor	\\N	{}	759	624
2057	2	actor	\\N	{"The Father"}	759	318
2058	3	actor	\\N	{Priest}	759	335
2059	4	actor	\\N	{}	759	384
2060	5	cinematographer	\\N	{}	759	319
2061	6	actor	\\N	{}	759	401
2062	7	actress	\\N	{Nanny}	759	391
2063	8	actress	\\N	{"The Mother"}	759	405
2064	1	actress	\\N	{Woman}	760	628
2065	2	actor	\\N	{"The Magician's Assistant"}	760	366
2066	3	actor	\\N	{"The Knight of Black Art"}	760	46
2067	1	actress	\\N	{Katharina}	761	474
2068	2	actor	\\N	{Petruchio}	761	469
2069	3	actress	\\N	{Bianca}	761	414
2070	4	actor	\\N	{"Katharina's Father"}	761	468
2071	5	director	\\N	{}	761	467
2072	6	writer	play	{}	761	126
2073	7	cinematographer	\\N	{}	761	49
2074	8	cinematographer	\\N	{}	761	118
2075	1	actor	\\N	{Mexican}	762	507
2076	2	actor	\\N	{Father}	762	466
2077	3	actress	\\N	{Mother}	762	504
2078	4	actress	\\N	{Daughter}	762	503
2079	5	director	\\N	{}	762	467
2080	6	cinematographer	\\N	{}	762	118
2081	7	actor	\\N	{"Old Man"}	762	468
2082	8	actress	\\N	{}	762	629
2083	10	actress	\\N	{Guest,"Woman at Wigmaker's"}	763	503
2084	1	actor	\\N	{"Edward Ross"}	763	469
2085	2	actress	\\N	{"Jennie Colman"}	763	474
2086	3	actor	\\N	{"The Butler",Foreman}	763	468
2087	4	actor	\\N	{"The Valet"}	763	507
2088	5	director	\\N	{}	763	467
2089	6	cinematographer	\\N	{}	763	49
2090	7	actress	\\N	{Guest,"Woman at Wigmaker's"}	763	414
2091	8	actor	\\N	{"Man Leaving Factory"}	763	392
2092	9	actor	\\N	{Employer,Guest}	763	471
2093	1	actor	\\N	{"William Thompson"}	764	393
2094	2	actor	\\N	{"John Smith"}	764	466
2095	3	actress	\\N	{"Mrs. Smith"}	764	372
2096	4	actor	\\N	{"Sign Changer"}	764	392
2097	5	director	\\N	{}	764	221
2098	6	cinematographer	\\N	{}	764	49
2099	7	actor	\\N	{"Theatre Bouncer"}	764	510
2100	8	actor	\\N	{"Theatre Patron"}	764	468
2101	1	director	\\N	{}	765	486
2102	2	producer	producer	{}	765	103
2103	1	actor	\\N	{}	766	309
2104	2	actor	\\N	{}	766	630
2105	3	director	\\N	{}	766	310
2106	1	actor	\\N	{Arbace}	767	631
2107	2	actress	\\N	{Nidia}	767	632
2108	3	actor	\\N	{Glauco}	767	633
2109	4	actress	\\N	{}	767	634
2110	5	director	\\N	{}	767	532
2111	6	writer	\\N	{}	767	618
2112	7	writer	adaptation	{}	767	635
2113	8	cinematographer	\\N	{}	767	636
2114	1	actor	\\N	{}	768	519
2115	2	actress	\\N	{}	768	556
2116	3	director	\\N	{}	768	98
2117	10	actress	\\N	{Nurse}	769	474
2118	1	actor	\\N	{"Reggie Van Twiller"}	769	510
2119	2	actor	\\N	{"Reverend Haddock"}	769	469
2120	3	actor	\\N	{"The Valet"}	769	392
2121	4	actor	\\N	{"Mr. Tubbs"}	769	563
2122	5	director	\\N	{}	769	467
2123	6	cinematographer	\\N	{}	769	49
2124	7	cinematographer	\\N	{}	769	118
2125	8	actor	\\N	{"Dinner Guest"}	769	507
2126	9	actor	\\N	{}	769	581
2127	10	actress	\\N	{"Wedding Party","In Bar"}	770	474
2128	1	actor	\\N	{Renaldo}	770	471
2129	2	actor	\\N	{Gonzales}	770	468
2130	3	actress	\\N	{}	770	414
2131	4	actress	\\N	{"Little Girl"}	770	470
2132	5	director	\\N	{}	770	467
2133	6	cinematographer	\\N	{}	770	49
2134	7	actor	\\N	{}	770	637
2135	8	actor	\\N	{"Wedding Party",Bartender}	770	507
2136	9	actor	\\N	{"Wedding Party","In Bar"}	770	469
2137	1	actor	\\N	{}	771	638
2138	2	actor	\\N	{}	771	624
2139	3	actor	\\N	{}	771	318
2140	4	actor	\\N	{}	771	409
2141	5	cinematographer	\\N	{}	771	319
2142	6	actress	\\N	{}	771	391
2143	7	actress	\\N	{}	771	405
2144	1	actress	\\N	{"Theckla, the Viking's Daughter"}	772	474
2145	2	director	\\N	{}	772	93
2146	1	self	\\N	{Themselves}	773	639
2147	2	self	\\N	{Themselves}	773	640
2148	3	director	\\N	{}	773	81
2149	1	actress	\\N	{}	774	414
2150	2	actor	\\N	{}	774	467
2151	3	director	\\N	{}	774	221
2152	4	writer	novel	{}	774	641
2153	1	actress	\\N	{}	775	414
2154	2	actor	\\N	{}	775	467
2155	3	actor	\\N	{Nobleman}	775	468
2156	4	director	\\N	{}	775	221
2157	5	cinematographer	\\N	{}	775	49
2158	10	actor	\\N	{"On Boardwalk"}	776	392
2159	1	actor	\\N	{"Tom Hudson"}	776	469
2160	2	actress	\\N	{"Alice Fairchild"}	776	414
2161	3	actor	\\N	{"The Villain"}	776	471
2162	4	actor	\\N	{Policeman}	776	466
2163	5	director	\\N	{}	776	467
2164	6	writer	writer	{}	776	472
2165	7	cinematographer	\\N	{}	776	49
2166	8	cinematographer	\\N	{}	776	118
2167	9	actor	\\N	{"At the Beach","Assaulted Man"}	776	507
2168	1	actress	\\N	{}	777	321
2169	10	actress	\\N	{"The Woodsman's Daughter"}	778	642
2170	1	actor	\\N	{"A Woodsman"}	778	507
2171	2	actor	\\N	{"A Camper"}	778	468
2172	3	actress	\\N	{"The Camper's Wife"}	778	414
2173	4	actress	\\N	{}	778	506
2174	5	director	\\N	{}	778	467
2175	6	cinematographer	\\N	{}	778	118
2176	7	actor	\\N	{"Man with Rifle"}	778	469
2177	8	actress	\\N	{}	778	474
2178	9	actor	\\N	{}	778	643
2179	1	actor	\\N	{"Mr. Phlipp"}	779	467
2180	2	actor	\\N	{"Bridget, the Cook"}	779	393
2181	3	director	\\N	{}	779	221
2182	4	cinematographer	\\N	{}	779	49
2183	10	actor	\\N	{}	780	644
2184	1	actor	\\N	{"The Zulu Chief"}	780	471
2185	2	actor	\\N	{"A Zulu Warrior"}	780	507
2186	3	actor	\\N	{"The Boer"}	780	468
2187	4	actress	\\N	{"The Boer's Wife"}	780	474
2188	5	director	\\N	{}	780	467
2189	6	cinematographer	\\N	{}	780	49
2190	7	actress	\\N	{"The Boer's Daughter"}	780	470
2191	8	actor	\\N	{"A Zulu Warrior"}	780	522
2192	9	actor	\\N	{"A Zulu Warrior"}	780	469
2193	1	director	\\N	{}	781	82
2194	2	producer	producer	{}	781	181
2195	1	actor	\\N	{}	782	645
2196	2	director	\\N	{}	782	417
2197	10	actor	\\N	{}	783	613
2198	1	actress	\\N	{"The Mother"}	783	503
2199	2	actor	\\N	{"The Father"}	783	469
2200	3	actress	\\N	{"The Daughter"}	783	534
2201	4	actor	\\N	{"The Lawyer"}	783	646
2202	5	director	\\N	{}	783	467
2203	6	cinematographer	\\N	{}	783	49
2204	7	actress	\\N	{"The Maid"}	783	580
2205	8	actor	\\N	{"The Servant"}	783	510
2206	9	actress	\\N	{}	783	474
2207	1	actress	\\N	{Junge}	784	321
2208	2	director	\\N	{}	784	647
2209	3	director	\\N	{}	784	407
2210	4	cinematographer	\\N	{}	784	648
2211	1	actor	\\N	{"Apache Leader"}	785	380
2212	2	actress	\\N	{"His Girl Friend"}	785	649
2213	3	actress	\\N	{"Her Rival"}	785	650
2214	4	actor	\\N	{"Legation Secretary"}	785	651
2215	5	production_designer	\\N	{}	785	652
2216	6	actor	\\N	{"Police Officer"}	785	653
2217	7	actor	\\N	{Apache}	785	654
2218	8	actress	\\N	{}	785	655
2219	1	director	\\N	{}	786	565
2220	1	cinematographer	\\N	{}	787	49
2221	10	actress	\\N	{}	788	414
2222	1	actress	\\N	{"Minnie - the Daughter"}	788	503
2223	2	actor	\\N	{"Grigo - the Suitor"}	788	471
2224	3	actor	\\N	{"Giuseppe Cassella"}	788	577
2225	4	actor	\\N	{"The Father"}	788	646
2226	5	director	\\N	{}	788	467
2227	6	cinematographer	\\N	{}	788	49
2228	7	cinematographer	\\N	{}	788	118
2229	8	actress	\\N	{Mother}	788	580
2230	9	actress	\\N	{"Minnie's Friend","Dinner Guest"}	788	575
2231	1	director	\\N	{}	789	486
2232	2	producer	producer	{}	789	103
2233	1	actress	\\N	{}	790	656
2234	2	actor	\\N	{}	790	657
2235	3	actress	\\N	{}	790	658
2236	4	actor	\\N	{}	790	659
2237	5	director	\\N	{}	790	660
2238	6	writer	play "Las de Caín"	{}	790	661
2239	7	actor	\\N	{}	790	662
2240	10	actor	\\N	{"The Butler"}	791	510
2241	1	actor	\\N	{"The Major"}	791	469
2242	2	actress	\\N	{"The Widow (unconfirmed)"}	791	612
2243	3	actress	\\N	{"The Widow's Daughter"}	791	601
2244	4	actor	\\N	{"The Lawyer"}	791	393
2245	5	director	\\N	{}	791	467
2246	6	cinematographer	\\N	{}	791	49
2247	7	actress	\\N	{"The Nun"}	791	515
2248	8	actor	\\N	{"The Major's Friend"}	791	576
2249	9	actor	\\N	{"The Priest"}	791	516
2250	10	actor	\\N	{"The Doctor"}	792	469
2251	1	actress	\\N	{"The Poor Mother"}	792	474
2252	2	actor	\\N	{"The Son"}	792	576
2253	3	actress	\\N	{"The Daughter"}	792	414
2254	4	actor	\\N	{"The Priest"}	792	516
2255	5	director	\\N	{}	792	467
2256	6	cinematographer	\\N	{}	792	49
2257	7	cinematographer	\\N	{}	792	118
2258	8	actress	\\N	{"The Adoptive Mother"}	792	580
2259	9	actor	\\N	{"The Adoptive Father"}	792	468
2260	1	director	\\N	{}	793	486
2261	2	producer	producer	{}	793	103
2262	1	actor	\\N	{}	794	663
2263	2	actor	\\N	{Værtshusgæst}	794	638
2264	3	actress	\\N	{Vaskepige}	794	664
2265	4	actor	\\N	{Vagabond}	794	318
2266	5	cinematographer	\\N	{}	794	319
2267	6	actor	\\N	{Værtshusgæst}	794	665
2268	7	actor	\\N	{Værtshusgæst}	794	666
2269	8	actor	\\N	{Drengen}	794	667
2270	1	cinematographer	\\N	{}	795	269
2271	2	cinematographer	\\N	{}	795	582
2272	1	actor	\\N	{}	796	668
2273	2	actor	\\N	{}	796	669
2274	3	actor	\\N	{}	796	670
2275	4	actor	\\N	{}	796	671
2276	5	director	\\N	{}	796	85
2277	6	actress	\\N	{}	796	483
2278	7	actress	\\N	{}	796	672
2279	8	actor	\\N	{}	796	673
2280	10	actor	\\N	{}	797	674
2281	1	actor	\\N	{}	797	203
2282	2	actor	\\N	{}	797	675
2283	3	actor	\\N	{}	797	676
2284	4	actor	\\N	{}	797	677
2285	5	actor	\\N	{}	797	678
2286	6	actor	\\N	{}	797	679
2287	7	actor	\\N	{"(as Shorty Cunningham)"}	797	680
2288	8	actor	\\N	{}	797	681
2289	9	actor	\\N	{}	797	682
2290	10	actor	\\N	{Puritan}	798	469
2291	1	actress	\\N	{"Elizabeth Parker"}	798	683
2292	2	actress	\\N	{"Elizabeth's Mother"}	798	515
2293	3	actor	\\N	{"Oliver Sylvester"}	798	616
2294	4	actor	\\N	{"Squire Calvin Cartwright"}	798	684
2295	5	director	\\N	{}	798	467
2296	6	writer	writer	{}	798	472
2297	7	cinematographer	\\N	{}	798	49
2298	8	actor	\\N	{"The Squire's Father"}	798	685
2299	9	actor	\\N	{"The Minister"}	798	686
2300	1	actress	\\N	{}	799	465
2301	2	director	\\N	{}	799	565
2302	1	actor	\\N	{}	800	687
2303	2	director	\\N	{}	800	467
2304	1	actor	\\N	{}	801	203
2305	1	director	\\N	{}	802	486
2306	2	producer	producer	{}	802	103
2307	1	director	\\N	{}	803	269
2308	2	cinematographer	\\N	{}	803	582
2309	1	actor	\\N	{}	804	519
2310	2	actress	\\N	{}	804	465
2311	3	director	\\N	{}	804	544
2312	4	writer	story	{}	804	99
2313	1	director	\\N	{}	805	269
2314	2	cinematographer	\\N	{}	805	582
2315	10	actor	\\N	{}	806	466
2316	1	actor	\\N	{"A Tourist"}	806	468
2317	2	actor	\\N	{"A Guard"}	806	507
2318	3	actress	\\N	{"The Guard's Sweetheart"}	806	474
2319	4	actor	\\N	{"The Guard's Sweetheart's Father"}	806	646
2320	5	director	\\N	{}	806	467
2321	6	cinematographer	\\N	{}	806	49
2322	7	actor	\\N	{"An Unscrupulous Hindu"}	806	471
2323	8	actor	\\N	{Executioner}	806	469
2324	9	actor	\\N	{Tourist}	806	522
2325	10	actor	\\N	{"Mexican Man"}	807	616
2326	1	actor	\\N	{"George Peabody"}	807	688
2327	2	actress	\\N	{"Ruth King"}	807	601
2328	3	actress	\\N	{"Ruth's Mother"}	807	515
2329	4	actress	\\N	{"Kate's Friend"}	807	564
2330	5	director	\\N	{}	807	467
2331	6	cinematographer	\\N	{}	807	49
2332	7	actor	\\N	{"Mr. Joplin"}	807	469
2333	8	actor	\\N	{"Peabody's Companion"}	807	510
2334	9	actress	\\N	{"Mexican Woman"}	807	503
2335	1	actor	\\N	{Lefebre}	808	689
2336	2	actress	\\N	{}	808	664
2337	3	actor	\\N	{Napoleon}	808	318
2338	4	actor	\\N	{}	808	654
2339	5	cinematographer	\\N	{}	808	319
2340	6	actor	\\N	{Budbringeren}	808	690
2341	7	actor	\\N	{}	808	691
2342	1	director	\\N	{}	809	486
2343	2	producer	producer	{}	809	103
2344	10	actor	\\N	{Policeman}	810	469
2345	1	actor	\\N	{"Henry Newman"}	810	468
2346	2	actor	\\N	{"Dick Folsom"}	810	471
2347	3	actress	\\N	{"Mrs. Newman"}	810	503
2348	4	actress	\\N	{"One of the Children"}	810	534
2349	5	director	\\N	{}	810	467
2350	6	cinematographer	\\N	{}	810	49
2351	7	cinematographer	\\N	{}	810	118
2352	8	actor	\\N	{"The Messenger"}	810	392
2353	9	actor	\\N	{"At Folsom's",Secretary}	810	692
2354	1	director	\\N	{}	811	266
2355	2	cinematographer	\\N	{}	811	269
2356	3	cinematographer	\\N	{}	811	582
2357	10	actor	\\N	{"Comic Cutthroat","A Member of the Court"}	812	522
2358	1	actor	\\N	{"The Cardinal"}	812	684
2359	2	actress	\\N	{"Princess Angela"}	812	474
2360	3	actor	\\N	{"The Prince"}	812	688
2361	4	actress	\\N	{}	812	414
2362	5	director	\\N	{}	812	467
2363	6	cinematographer	\\N	{}	812	49
2364	7	actor	\\N	{}	812	693
2365	8	actor	\\N	{"A Member of the Court"}	812	563
2366	9	actress	\\N	{}	812	515
2367	1	director	\\N	{}	813	266
2368	2	director	\\N	{}	813	552
2369	3	cinematographer	\\N	{}	813	694
2370	10	actor	\\N	{}	814	524
2371	1	actor	\\N	{"Howard Norris"}	814	576
2372	2	actor	\\N	{"The Farmer"}	814	684
2373	3	actor	\\N	{"The Real Minister"}	814	469
2374	4	actor	\\N	{"The Cafe Owner"}	814	393
2375	5	director	\\N	{}	814	467
2376	6	writer	writer	{}	814	476
2377	7	cinematographer	\\N	{}	814	49
2378	8	actress	\\N	{"Howard's Mother"}	814	515
2379	9	actor	\\N	{"One of Howard's Companions"}	814	466
2380	1	actress	\\N	{}	815	465
2381	2	director	\\N	{}	815	98
2382	10	actor	\\N	{}	816	688
2383	1	actress	\\N	{}	816	414
2384	2	actor	\\N	{}	816	686
2385	3	actress	\\N	{Child}	816	534
2386	4	actress	\\N	{"Gladys - Child"}	816	470
2387	5	director	\\N	{}	816	467
2388	6	cinematographer	\\N	{}	816	49
2389	7	actress	\\N	{}	816	503
2390	8	actor	\\N	{}	816	576
2391	9	actress	\\N	{}	816	601
2392	10	actress	\\N	{"One of Gladys' Friends"}	817	695
2393	1	actress	\\N	{Gladys}	817	508
2394	2	actor	\\N	{"1st Bachelor"}	817	510
2395	3	actor	\\N	{"2nd Bachelor"}	817	696
2396	4	actor	\\N	{"3rd Bachelor"}	817	697
2397	5	director	\\N	{}	817	467
2398	6	cinematographer	\\N	{}	817	49
2399	7	actor	\\N	{"4th Bachelor"}	817	393
2400	8	actor	\\N	{"Harry - the Real Sweetheart"}	817	616
2401	9	actress	\\N	{"The Maid"}	817	515
2402	1	actor	\\N	{"Comata - the Sioux"}	818	684
2403	2	actress	\\N	{"Clear Eyes"}	818	503
2404	3	actor	\\N	{"Bud Watkins"}	818	469
2405	4	actress	\\N	{"Nellie Howe"}	818	414
2406	5	director	\\N	{}	818	467
2407	6	writer	writer	{}	818	472
2408	7	cinematographer	\\N	{}	818	49
2409	8	actor	\\N	{Father,"Indian Chief"}	818	686
2410	10	actor	\\N	{"In Bar"}	819	522
2411	1	actress	\\N	{"Nellie Burton"}	819	474
2412	2	actor	\\N	{"Jim Colt"}	819	471
2413	3	actor	\\N	{"The Doctor"}	819	469
2414	4	actress	\\N	{"Dinner Guest"}	819	414
2415	5	director	\\N	{}	819	467
2416	6	cinematographer	\\N	{}	819	49
2417	7	cinematographer	\\N	{}	819	118
2418	8	actor	\\N	{"Dinner Guest"}	819	563
2419	9	actress	\\N	{}	819	515
2420	10	actress	\\N	{}	820	506
2421	1	actor	\\N	{"The Convict"}	820	684
2422	2	actor	\\N	{"The Convict's Friend"}	820	616
2423	3	actress	\\N	{"The Convict's Friend's Wife"}	820	683
2424	4	actress	\\N	{"The Child"}	820	470
2425	5	director	\\N	{}	820	467
2426	6	cinematographer	\\N	{}	820	49
2427	7	actor	\\N	{"The Workman Who is Killed"}	820	393
2428	8	actor	\\N	{"The Foreman"}	820	468
2429	9	actress	\\N	{}	820	414
2430	1	actor	\\N	{}	821	698
2431	2	director	\\N	{}	821	85
2432	10	actress	\\N	{}	822	612
2433	1	actor	\\N	{Galora}	822	471
2434	2	actress	\\N	{"Galora's Wife"}	822	503
2435	3	actor	\\N	{Antonine}	822	507
2436	4	actress	\\N	{"Woman in Tenement"}	822	414
2437	5	director	\\N	{}	822	467
2438	6	producer	producer	{}	822	98
2439	7	cinematographer	\\N	{}	822	49
2440	8	cinematographer	\\N	{}	822	118
2441	9	actress	\\N	{}	822	506
2442	1	actor	\\N	{"The Wheat King"}	823	688
2443	2	actress	\\N	{"The Wheat King's Wife"}	823	699
2444	3	actor	\\N	{"The Farmer"}	823	684
2445	4	actress	\\N	{"The Farmer's Wife"}	823	414
2446	5	director	\\N	{}	823	467
2447	6	writer	novel "The Pit"	{}	823	700
2448	7	writer	\\N	{}	823	476
2449	8	cinematographer	\\N	{}	823	49
2450	9	editor	\\N	{}	823	701
2451	1	actor	\\N	{"Doctor Harcourt"}	824	688
2452	2	actress	\\N	{"Mrs. Harcourt"}	824	474
2453	3	actress	\\N	{"Edith Harcourt - the Daughter"}	824	470
2454	4	actress	\\N	{"The Poor Mother"}	824	515
2455	5	director	\\N	{}	824	467
2456	6	actress	\\N	{"The Poor Mother's Elder Daughter"}	824	601
2457	7	actress	\\N	{"The Poor Mother's Sick Daughter"}	824	534
2458	8	actress	\\N	{"The Maid"}	824	702
2459	1	director	\\N	{}	825	486
2460	2	producer	producer	{}	825	103
2461	10	actor	\\N	{"Caleb Plummer"}	826	646
2462	1	actor	\\N	{"Edward Plummer"}	826	576
2463	2	actress	\\N	{"May Fielding"}	826	703
2464	3	actress	\\N	{"Sister Dorothy"}	826	414
2465	4	actress	\\N	{"Sister Bertha (unconfirmed)"}	826	575
2466	5	director	\\N	{}	826	467
2467	6	writer	short story	{}	826	168
2468	7	writer	writer	{}	826	476
2469	8	cinematographer	\\N	{}	826	49
2470	9	cinematographer	\\N	{}	826	118
2471	1	actor	\\N	{"Diogo Alves"}	827	434
2472	2	actress	\\N	{"Parreirinha a Sua Amante - Diogo's lover"}	827	704
2473	3	actor	\\N	{"Luger-tenente de Diogo Alves - Diogo's aind"}	827	435
2474	4	actor	\\N	{"Bandoleiro - bandit"}	827	437
2475	5	director	\\N	{}	827	369
2476	6	actor	\\N	{Bandoleiro}	827	705
2477	7	actor	\\N	{Bandoleiro}	827	436
2478	10	actress	\\N	{"The Maid"}	828	474
2479	1	actor	\\N	{"The Man"}	828	576
2480	2	actress	\\N	{"The Man's Fiancee"}	828	503
2481	3	actor	\\N	{"The Criminal Hypnotist"}	828	469
2482	4	actor	\\N	{"The Robbery Victim","Party Guest"}	828	646
2483	5	director	\\N	{}	828	467
2484	6	cinematographer	\\N	{}	828	49
2485	7	actor	\\N	{"The Professor","Party Guest"}	828	471
2486	8	actor	\\N	{"The Professor's Assistant","A Policeman","Party Guest"}	828	507
2487	9	actor	\\N	{"The Doctor"}	828	468
2488	1	director	\\N	{}	829	706
2489	1	director	\\N	{}	830	486
2490	2	producer	producer	{}	830	103
2491	1	actor	\\N	{"Monsieur Dupont"}	831	510
2492	2	actor	\\N	{"Mr. Edwards"}	831	468
2493	3	actress	\\N	{"Mrs. Edwards"}	831	474
2494	4	actress	\\N	{"Party Planner","Woman on Street"}	831	414
2495	5	director	\\N	{}	831	467
2496	6	writer	story	{}	831	49
2497	10	actor	\\N	{"Party Guest"}	832	684
2498	1	actor	\\N	{"Mr. Hilton"}	832	469
2499	2	actress	\\N	{"Mrs. Hilton"}	832	503
2500	3	actor	\\N	{"The Old Year"}	832	644
2501	4	actress	\\N	{"The New Year"}	832	695
2502	5	director	\\N	{}	832	467
2503	6	writer	writer	{}	832	601
2504	7	actor	\\N	{"A Friend"}	832	516
2505	8	actress	\\N	{Servant}	832	414
2506	9	actor	\\N	{"Party Guest"}	832	637
2507	1	director	\\N	{}	833	85
2508	10	actress	\\N	{}	834	414
2509	1	actor	\\N	{"The Catholic"}	834	516
2510	2	actress	\\N	{"The Catholic's Wife"}	834	503
2511	3	actress	\\N	{"The Catholic's Child"}	834	707
2512	4	actor	\\N	{"Oliver Cromwell"}	834	688
2513	5	director	\\N	{}	834	467
2514	6	writer	story	{}	834	388
2515	7	writer	writer	{}	834	476
2516	8	cinematographer	\\N	{}	834	49
2517	9	actor	\\N	{"Cromwell's Advisor"}	834	684
2518	10	production_designer	\\N	{}	835	708
2519	1	actor	\\N	{"Ivan the Terrible"}	835	709
2520	2	actress	\\N	{Tsarina}	835	710
2521	3	actor	\\N	{"Boris Godunov"}	835	711
2522	4	actor	\\N	{"Nagoy, boyar"}	835	712
2523	5	director	\\N	{}	835	713
2524	6	writer	plays	{}	835	714
2525	7	producer	producer	{}	835	715
2526	8	producer	producer	{}	835	716
2527	9	cinematographer	\\N	{}	835	717
2528	10	actress	\\N	{}	836	414
2529	1	actor	\\N	{"Harvey Colton"}	836	577
2530	2	actress	\\N	{"Mabel Colton"}	836	474
2531	3	actor	\\N	{"Harvey's Friend"}	836	468
2532	4	actor	\\N	{"The Rich Patron"}	836	576
2533	5	director	\\N	{}	836	467
2534	6	cinematographer	\\N	{}	836	49
2535	7	actor	\\N	{"The Rich Patron's Secretary","Man in Top Hat"}	836	469
2536	8	actor	\\N	{"The Doctor"}	836	510
2537	9	actor	\\N	{"The Landlord"}	836	471
2538	1	director	\\N	{}	837	718
2539	1	actor	\\N	{"The Groom"}	838	719
2540	2	actress	\\N	{"The Bride"}	838	720
2541	3	director	\\N	{}	838	721
2542	4	producer	producer	{}	838	722
2543	5	producer	producer	{}	838	723
2544	6	cinematographer	\\N	{}	838	724
2545	7	production_designer	\\N	{}	838	725
2546	1	director	\\N	{}	839	46
2547	1	director	\\N	{}	840	266
2548	2	director	\\N	{}	840	552
2549	3	cinematographer	\\N	{}	840	694
2550	1	director	\\N	{}	841	266
2551	2	director	\\N	{}	841	552
2552	3	cinematographer	\\N	{}	841	694
2553	10	actress	\\N	{"One of Mignon's Sisters"}	842	414
2554	1	actor	\\N	{"Harry Walker"}	842	469
2555	2	actress	\\N	{"Madame Lebrun"}	842	503
2556	3	actress	\\N	{Mignon}	842	474
2557	4	actress	\\N	{"Mignon's Mother"}	842	580
2558	5	director	\\N	{}	842	467
2559	6	cinematographer	\\N	{}	842	49
2560	7	cinematographer	\\N	{}	842	118
2561	8	actress	\\N	{"One of Mignon's Sisters"}	842	575
2562	9	actress	\\N	{"One of Mignon's Sisters","The Maid"}	842	564
2563	10	actress	\\N	{"Woman In the Play","Woman In the Audience"}	843	580
2564	1	actor	\\N	{"John Wharton"}	843	469
2565	2	actress	\\N	{"Mrs. John Wharton"}	843	414
2566	3	actress	\\N	{"The Wharton Daughter"}	843	534
2567	4	actor	\\N	{"Man In the Play"}	843	563
2568	5	director	\\N	{}	843	467
2569	6	cinematographer	\\N	{}	843	49
2570	7	actor	\\N	{"Man In the Orchestra","Man In the Bar"}	843	522
2571	8	actress	\\N	{}	843	470
2572	9	actor	\\N	{"Theatre Usher"}	843	392
2573	10	actress	\\N	{}	844	474
2574	1	actor	\\N	{Hidalgo}	844	471
2575	2	actor	\\N	{Manuella}	844	646
2576	3	actress	\\N	{Mercedes}	844	503
2577	4	actress	\\N	{"Mercedes' Friend"}	844	414
2578	5	director	\\N	{}	844	467
2579	6	cinematographer	\\N	{}	844	49
2580	7	cinematographer	\\N	{}	844	118
2581	8	actor	\\N	{Carlos}	844	577
2582	9	actress	\\N	{}	844	612
2583	10	actress	\\N	{}	845	612
2584	1	actor	\\N	{"Edgar Allan Poe"}	845	577
2585	2	actress	\\N	{"Virginia Poe"}	845	414
2586	3	actor	\\N	{"First Publisher"}	845	469
2587	4	actor	\\N	{"Resident Poet"}	845	726
2588	5	director	\\N	{}	845	467
2589	6	writer	writer	{}	845	476
2590	7	cinematographer	\\N	{}	845	49
2591	8	actor	\\N	{"Second Publisher"}	845	646
2592	9	actress	\\N	{"Second Publisher's Wife"}	845	580
2593	10	actress	\\N	{"In Store"}	846	703
2594	1	actress	\\N	{Margie}	846	474
2595	2	actor	\\N	{"Margie's Father"}	846	646
2596	3	actress	\\N	{Aunty}	846	580
2597	4	actor	\\N	{"The Minister","In Store"}	846	469
2598	5	director	\\N	{}	846	467
2599	6	cinematographer	\\N	{}	846	49
2600	7	cinematographer	\\N	{}	846	118
2601	8	actor	\\N	{"The Butler"}	846	393
2602	9	actress	\\N	{}	846	612
2603	1	self	\\N	{Self}	847	727
2604	2	self	\\N	{Self}	847	728
2605	3	director	\\N	{}	847	718
2606	10	actress	\\N	{"The Maid (unconfirmed)"}	848	683
2607	1	actress	\\N	{"Matilda Scroggins"}	848	504
2608	2	actress	\\N	{"Flora - Aunty's Ward"}	848	474
2609	3	actor	\\N	{"Tom Norton"}	848	576
2610	4	actor	\\N	{"Revered Joshua Wittington"}	848	469
2611	5	director	\\N	{}	848	467
2612	6	cinematographer	\\N	{}	848	49
2613	7	cinematographer	\\N	{}	848	118
2614	8	actor	\\N	{"Bill Corker"}	848	520
2615	9	actor	\\N	{Servant}	848	563
2616	10	actor	\\N	{Servant}	849	393
2617	1	actor	\\N	{"John Waterbury"}	849	576
2618	2	actress	\\N	{"Helen Waterbury - John's Wife"}	849	503
2619	3	actor	\\N	{"William Trevor"}	849	469
2620	4	actor	\\N	{Servant,"Man in Cabin"}	849	637
2621	5	director	\\N	{}	849	467
2622	6	cinematographer	\\N	{}	849	49
2623	7	actor	\\N	{"Trevor's Servant"}	849	581
2624	8	actor	\\N	{}	849	684
2625	9	actor	\\N	{"Man in Cabin"}	849	516
2626	1	director	\\N	{}	850	85
2627	10	actress	\\N	{}	851	535
2628	1	actor	\\N	{Francois}	851	646
2629	2	actor	\\N	{"The Doctor"}	851	684
2630	3	actress	\\N	{}	851	414
2631	4	actress	\\N	{}	851	508
2632	5	director	\\N	{}	851	467
2633	6	cinematographer	\\N	{}	851	49
2634	7	cinematographer	\\N	{}	851	118
2635	8	actress	\\N	{"At Party"}	851	470
2636	9	actress	\\N	{}	851	503
2637	10	actress	\\N	{"The Mother of the Child"}	852	564
2638	1	actor	\\N	{"Silas Marner"}	852	684
2639	2	actor	\\N	{"William Dane"}	852	510
2640	3	actor	\\N	{"The Peasant"}	852	616
2641	4	actor	\\N	{"The Nobleman"}	852	393
2642	5	director	\\N	{}	852	467
2643	6	writer	novel "Silas Marner"	{}	852	729
2644	7	writer	writer	{}	852	476
2645	8	cinematographer	\\N	{}	852	49
2646	9	actor	\\N	{"The Minister"}	852	686
2647	10	actor	\\N	{Doktor}	853	730
2648	1	actor	\\N	{Charles}	853	731
2649	2	actress	\\N	{Gervaise}	853	655
2650	3	actor	\\N	{"Fader Loriot"}	853	732
2651	4	actor	\\N	{Blegnæb}	853	733
2652	5	director	\\N	{}	853	651
2653	6	writer	novel "L'Assommoir"	{}	853	187
2654	7	cinematographer	\\N	{}	853	734
2655	8	production_designer	\\N	{}	853	652
2656	9	actor	\\N	{Vært}	853	735
2657	1	director	\\N	{}	854	486
2658	2	producer	producer	{}	854	103
2659	10	actor	\\N	{"Party Guest"}	855	507
2660	1	actress	\\N	{"Mrs. Francis"}	855	503
2661	2	actor	\\N	{"Young Man"}	855	577
2662	3	actress	\\N	{"Young Man's Mother"}	855	580
2663	4	actor	\\N	{"Young Man's Father"}	855	468
2664	5	director	\\N	{}	855	467
2665	6	cinematographer	\\N	{}	855	49
2666	7	actress	\\N	{"The Maid","Party Guest"}	855	564
2667	8	actress	\\N	{}	855	414
2668	9	actor	\\N	{"Party Guest"}	855	522
2669	1	director	\\N	{}	856	486
2670	2	producer	producer	{}	856	103
2671	1	director	\\N	{}	857	486
2672	2	producer	producer	{}	857	103
2673	1	director	\\N	{}	858	718
2674	1	director	\\N	{}	859	85
2675	1	director	\\N	{}	860	85
2676	10	actress	\\N	{"Fool's Accomplice"}	861	580
2677	1	actor	\\N	{"The Duke"}	861	576
2678	2	actor	\\N	{"The Fool"}	861	471
2679	3	actress	\\N	{"The Daughter"}	861	503
2680	4	actress	\\N	{"At Court"}	861	414
2681	5	director	\\N	{}	861	467
2682	6	writer	novel "Le Roi s'Amuse"	{}	861	278
2683	7	cinematographer	\\N	{}	861	49
2684	8	actor	\\N	{"At Court"}	861	522
2685	9	actor	\\N	{"At Court"}	861	692
2686	1	actor	\\N	{"Ben Webster"}	862	684
2687	2	actress	\\N	{"Fanny Webster"}	862	503
2688	3	actor	\\N	{"Ed Hilton"}	862	688
2689	4	actor	\\N	{}	862	616
2690	5	director	\\N	{}	862	467
2691	6	writer	writer	{}	862	476
2692	7	cinematographer	\\N	{}	862	49
2693	8	actor	\\N	{Extra}	862	736
2694	1	actress	\\N	{}	863	465
2695	2	director	\\N	{}	863	565
2696	10	cinematographer	\\N	{}	864	636
2697	1	actress	\\N	{}	864	737
2698	2	actor	\\N	{Vizier}	864	738
2699	3	actress	\\N	{}	864	710
2700	4	director	\\N	{}	864	739
2701	5	writer	poem "The Fountain of Bakhchisaray"	{}	864	740
2702	6	producer	producer	{}	864	715
2703	7	producer	producer	{}	864	741
2704	8	producer	producer	{}	864	716
2705	9	producer	producer	{}	864	742
2706	10	actress	\\N	{Nurse}	865	474
2707	1	actor	\\N	{"Leon Martinel"}	865	522
2708	2	actor	\\N	{"Gaston Tortoni"}	865	469
2709	3	actor	\\N	{"Alphonse de Signoles"}	865	563
2710	4	actress	\\N	{}	865	414
2711	5	director	\\N	{}	865	467
2712	6	cinematographer	\\N	{}	865	49
2713	7	cinematographer	\\N	{}	865	118
2714	8	actress	\\N	{Nurse}	865	580
2715	9	actor	\\N	{"At Duel"}	865	471
2716	1	actor	\\N	{"Jack Hudson"}	866	688
2717	2	actor	\\N	{"Robert Edmonds"}	866	576
2718	3	actress	\\N	{"Estelle Morse (unconfirmed)"}	866	703
2719	4	director	\\N	{}	866	467
2720	5	cinematographer	\\N	{}	866	49
2721	6	cinematographer	\\N	{}	866	118
2722	1	actress	\\N	{}	867	465
2723	2	actress	\\N	{}	867	556
2724	3	director	\\N	{}	867	98
2725	10	actor	\\N	{Miner}	868	522
2726	1	actor	\\N	{Bud}	868	696
2727	2	actress	\\N	{"Miss Lucy"}	868	601
2728	3	actor	\\N	{"Jim Blake"}	868	684
2729	4	actor	\\N	{}	868	693
2730	5	director	\\N	{}	868	467
2731	6	cinematographer	\\N	{}	868	49
2732	7	actress	\\N	{}	868	508
2733	8	actress	\\N	{"Party Guest"}	868	515
2734	9	actor	\\N	{"Party Guest"}	868	686
2735	10	actress	\\N	{"Woman on Sidewalk"}	869	601
2736	1	actress	\\N	{"Nanette Ranfrea"}	869	503
2737	2	actor	\\N	{"Commodore FItzmaurice"}	869	393
2738	3	actor	\\N	{"Manager of Beach House"}	869	516
2739	4	actress	\\N	{"Woman on Sidewalk"}	869	515
2740	5	director	\\N	{}	869	467
2741	6	cinematographer	\\N	{}	869	49
2742	7	actor	\\N	{"Man on Pier"}	869	637
2743	8	actor	\\N	{"An Admirer"}	869	469
2744	9	actor	\\N	{"An Admirer"}	869	684
2745	1	self	\\N	{Self}	870	743
2746	2	self	\\N	{Self}	870	744
2747	3	director	\\N	{}	870	718
2748	10	actress	\\N	{}	871	515
2749	1	actor	\\N	{"Dr. Payson"}	871	646
2750	2	actress	\\N	{"Dr. Payson's First Daughter"}	871	474
2751	3	actress	\\N	{"Dr. Payson's Second Daughter"}	871	575
2752	4	actress	\\N	{}	871	508
2753	5	director	\\N	{}	871	467
2754	6	cinematographer	\\N	{}	871	49
2755	7	cinematographer	\\N	{}	871	118
2756	8	actress	\\N	{}	871	506
2757	9	actress	\\N	{}	871	612
2758	1	writer	writer	{}	872	745
2759	10	actor	\\N	{Reveller}	873	507
2760	1	actress	\\N	{"The Mother"}	873	580
2761	2	actress	\\N	{"The Child"}	873	534
2762	3	actor	\\N	{"The Good Samaritan"}	873	576
2763	4	actor	\\N	{"The Gambler"}	873	471
2764	5	director	\\N	{}	873	467
2765	6	cinematographer	\\N	{}	873	118
2766	7	actress	\\N	{Reveller}	873	414
2767	8	actress	\\N	{}	873	515
2768	9	actress	\\N	{}	873	470
2769	1	actor	\\N	{"Sherlock Holmes"}	874	318
2770	2	actor	\\N	{"Dr. Watson"}	874	624
2771	3	actor	\\N	{"Lord Beresford"}	874	335
2772	4	actor	\\N	{Willy}	874	746
2773	5	writer	main characters	{}	874	262
2774	6	producer	producer	{}	874	325
2775	7	cinematographer	\\N	{}	874	319
2776	8	actor	\\N	{John}	874	747
2777	1	actor	\\N	{}	875	689
2778	2	actress	\\N	{}	875	664
2779	3	actor	\\N	{}	875	318
2780	4	actress	\\N	{}	875	748
2781	5	actor	\\N	{}	875	335
2782	6	actor	\\N	{}	875	746
2783	1	actor	\\N	{}	876	749
2784	2	actor	\\N	{}	876	548
2785	3	actress	\\N	{}	876	480
2786	4	actor	\\N	{}	876	750
2787	5	director	\\N	{}	876	85
2788	6	director	\\N	{}	876	415
2789	7	actor	\\N	{}	876	484
2790	8	actress	\\N	{}	876	416
2791	1	actor	\\N	{Hamlet}	877	751
2792	2	director	\\N	{}	877	752
2793	3	writer	play	{}	877	126
2794	1	actress	\\N	{Hansel}	878	753
2795	2	actress	\\N	{Gretel}	878	465
2796	3	actress	\\N	{"The Witch"}	878	754
2797	4	director	\\N	{}	878	544
2798	5	producer	producer	{}	878	98
2799	6	cinematographer	\\N	{}	878	755
2800	1	actor	\\N	{}	879	519
2801	2	actress	\\N	{}	879	556
2802	3	director	\\N	{}	879	98
2803	1	actor	\\N	{"Honest Steve"}	880	203
2804	2	actor	\\N	{"Bad Steve"}	880	756
2805	3	actress	\\N	{"Kitty Blair"}	880	757
2806	4	actor	\\N	{}	880	676
2807	5	cinematographer	\\N	{}	880	758
2808	6	actor	\\N	{}	880	759
2809	7	actor	\\N	{}	880	677
2810	8	actor	\\N	{}	880	675
2811	10	actress	\\N	{"Wedding Guest"}	881	414
2812	1	actor	\\N	{Husband,Outlaw}	881	684
2813	2	actress	\\N	{"The Outlaw's Wife"}	881	503
2814	3	actress	\\N	{"The Outlaw's Daughter - as a Child"}	881	470
2815	4	actress	\\N	{"The Outlaw's Daughter - as an Adult"}	881	601
2816	5	director	\\N	{}	881	467
2817	6	cinematographer	\\N	{}	881	49
2818	7	cinematographer	\\N	{}	881	118
2819	8	actor	\\N	{"The Mexican Lover"}	881	616
2820	9	actor	\\N	{"J. Woodford - Marshal",Guardian}	881	469
2821	1	actor	\\N	{Cyklist}	882	403
2822	2	actress	\\N	{Heks}	882	405
2823	3	director	\\N	{}	882	318
2824	4	cinematographer	\\N	{}	882	319
2825	10	actress	\\N	{}	883	579
2826	1	actor	\\N	{"Mr. Jones"}	883	522
2827	2	actress	\\N	{"Mrs. Jones"}	883	474
2828	3	actress	\\N	{}	883	414
2829	4	actor	\\N	{"Biscuit Victim"}	883	563
2830	5	director	\\N	{}	883	467
2831	6	cinematographer	\\N	{}	883	49
2832	7	actress	\\N	{}	883	506
2833	8	actress	\\N	{}	883	612
2834	9	actor	\\N	{}	883	697
2835	1	actor	\\N	{"Hal Benton"}	884	760
2836	2	actor	\\N	{"Silver Water"}	884	507
2837	3	actress	\\N	{"Veda Mead"}	884	761
2838	4	actress	\\N	{"Morning Star"}	884	762
2839	5	director	\\N	{}	884	763
2840	6	director	\\N	{}	884	764
2841	7	producer	producer	{}	884	765
2842	8	actor	\\N	{"Mr. Mead - Veda's Father"}	884	766
2843	9	actress	\\N	{"Morning Star's Mother"}	884	767
2844	1	actor	\\N	{}	885	638
2845	2	actress	\\N	{}	885	391
2846	3	director	\\N	{}	885	318
2847	4	cinematographer	\\N	{}	885	319
2848	10	actor	\\N	{Farmer}	886	392
2849	1	actor	\\N	{"Colonial Army Messenger"}	886	576
2850	2	actress	\\N	{Farmer}	886	414
2851	3	actress	\\N	{"Soldier's Family"}	886	515
2852	4	actor	\\N	{Farmer}	886	685
2853	5	director	\\N	{}	886	467
2854	6	writer	writer	{}	886	476
2855	7	cinematographer	\\N	{}	886	49
2856	8	cinematographer	\\N	{}	886	118
2857	9	actor	\\N	{Farmer}	886	686
2858	1	actor	\\N	{"Jack Windom"}	887	468
2859	2	actress	\\N	{"The Woman"}	887	503
2860	3	actor	\\N	{Tom}	887	469
2861	4	actor	\\N	{"The Woman's Second Lover"}	887	507
2862	5	director	\\N	{}	887	467
2863	6	cinematographer	\\N	{}	887	49
2864	7	actor	\\N	{"The Doctor"}	887	522
2865	8	actor	\\N	{Messenger}	887	392
2866	10	actor	\\N	{"Man in Store"}	888	469
2867	1	actress	\\N	{"Mrs. Allen"}	888	515
2868	2	actor	\\N	{"Jack Allen - the Older Brother"}	888	688
2869	3	actor	\\N	{"Bob Allen - the Younger Brother"}	888	576
2870	4	actor	\\N	{Proprietor}	888	646
2871	5	director	\\N	{}	888	467
2872	6	writer	story	{}	888	768
2873	7	cinematographer	\\N	{}	888	49
2874	8	cinematographer	\\N	{}	888	118
2875	9	actor	\\N	{"One of the Children on the Street"}	888	392
2876	10	actress	\\N	{"The Sister","At Wedding"}	889	503
2877	1	actor	\\N	{Luke}	889	684
2878	2	actor	\\N	{James}	889	576
2879	3	actress	\\N	{Mary}	889	601
2880	4	actor	\\N	{"Mary's Father"}	889	516
2881	5	director	\\N	{}	889	467
2882	6	cinematographer	\\N	{}	889	49
2883	7	actress	\\N	{"A Maid"}	889	515
2884	8	actress	\\N	{"At Wedding"}	889	470
2885	9	actor	\\N	{"At Wedding"}	889	637
2886	1	actor	\\N	{"Tom Carlton"}	890	203
2887	2	actor	\\N	{}	890	676
2888	3	actor	\\N	{}	890	679
2889	4	actor	\\N	{}	890	675
2890	5	actor	\\N	{}	890	677
2891	1	actor	\\N	{"Reverend Howson"}	891	469
2892	2	actress	\\N	{"The Reverend's Ward"}	891	474
2893	3	actor	\\N	{"General Winthrop"}	891	576
2894	4	actress	\\N	{"The Maid"}	891	414
2895	5	director	\\N	{}	891	467
2896	6	cinematographer	\\N	{}	891	49
2897	10	actor	\\N	{Waiter}	892	471
2898	1	actor	\\N	{"Mr. Jones"}	892	522
2899	2	actress	\\N	{"Mrs. Jones"}	892	474
2900	3	actress	\\N	{Maid}	892	575
2901	4	actress	\\N	{"Mrs. Jones' Mother"}	892	580
2902	5	director	\\N	{}	892	467
2903	6	cinematographer	\\N	{}	892	118
2904	7	actress	\\N	{"Restaurant Patron"}	892	414
2905	8	actress	\\N	{}	892	579
2906	9	actor	\\N	{Busboy}	892	392
2907	10	actor	\\N	{"At Club"}	893	510
2908	1	actor	\\N	{"Harry Wright"}	893	696
2909	2	actress	\\N	{"Bessie Wright"}	893	601
2910	3	actor	\\N	{"A Friend of Harry's"}	893	688
2911	4	actor	\\N	{"At Club"}	893	685
2912	5	director	\\N	{}	893	467
2913	6	cinematographer	\\N	{}	893	49
2914	7	actor	\\N	{"At Club"}	893	684
2915	8	actor	\\N	{"At Club"}	893	576
2916	9	actor	\\N	{}	893	516
2917	10	actor	\\N	{"At Dance"}	894	646
2918	1	actress	\\N	{"Rachel Einstein"}	894	474
2919	2	actor	\\N	{"Mr. Einstein"}	894	468
2920	3	actor	\\N	{"Ned Grattan"}	894	576
2921	4	actor	\\N	{Musician,Policeman}	894	507
2922	5	director	\\N	{}	894	467
2923	6	cinematographer	\\N	{}	894	49
2924	7	actress	\\N	{"At Dance"}	894	580
2925	8	actor	\\N	{Customer,Musician}	894	469
2926	9	actor	\\N	{}	894	572
2927	1	actress	\\N	{"The Girl"}	895	465
2928	2	actor	\\N	{"Tom Crawford"}	895	769
2929	3	actor	\\N	{"Sheriff Rattle Snake Jim"}	895	520
2930	4	director	\\N	{}	895	98
2931	1	actress	\\N	{"Gladys - The Little Girl"}	896	534
2932	2	actress	\\N	{"The Mother"}	896	580
2933	3	actress	\\N	{"Claude - The Little Boy"}	896	470
2934	4	actress	\\N	{"The Maid"}	896	575
2935	5	director	\\N	{}	896	467
2936	6	cinematographer	\\N	{}	896	49
2937	7	actress	\\N	{"A Visitor"}	896	414
2938	8	actor	\\N	{}	896	469
2939	9	actress	\\N	{}	896	474
2940	1	director	\\N	{}	897	486
2941	2	producer	producer	{}	897	103
2942	10	actress	\\N	{"At the Ball"}	898	515
2943	1	actress	\\N	{"Marie Cadrona"}	898	503
2944	2	actor	\\N	{"Tony Guilletto"}	898	516
2945	3	actor	\\N	{"Victor Ratazzi"}	898	616
2946	4	actor	\\N	{"The Peddler"}	898	393
2947	5	director	\\N	{}	898	467
2948	6	writer	writer	{}	898	476
2949	7	cinematographer	\\N	{}	898	49
2950	8	actor	\\N	{"The Sheriff"}	898	684
2951	9	actor	\\N	{}	898	770
2952	10	actor	\\N	{"Union Soldier",Aide}	899	685
2953	1	actor	\\N	{"Mr. Wilkinson"}	899	686
2954	2	actress	\\N	{"Mrs. Wilkinson"}	899	515
2955	3	actor	\\N	{"Robert - the Confederate Son"}	899	616
2956	4	actor	\\N	{"George - the Union Son"}	899	576
2957	5	director	\\N	{}	899	467
2958	6	writer	play	{}	899	771
2959	7	writer	writer	{}	899	472
2960	8	cinematographer	\\N	{}	899	49
2961	9	actress	\\N	{"Homecoming Party"}	899	414
2962	10	actor	\\N	{"The Young Man"}	900	392
2963	1	actress	\\N	{"The Mother"}	900	699
2964	2	actress	\\N	{"The Maid"}	900	772
2965	3	actress	\\N	{"The Daughter"}	900	575
2966	4	actress	\\N	{"The Nursemaid"}	900	515
2967	5	director	\\N	{}	900	467
2968	6	cinematographer	\\N	{}	900	49
2969	7	actress	\\N	{"One of the Children"}	900	534
2970	8	actress	\\N	{"One of the Children"}	900	470
2971	9	actress	\\N	{}	900	414
2972	10	actor	\\N	{Policeman}	901	510
2973	1	actor	\\N	{"Henry Brainard"}	901	688
2974	2	actor	\\N	{"John Whitney"}	901	516
2975	3	actress	\\N	{"Mrs. John Whitney"}	901	503
2976	4	actress	\\N	{"The Whitney Child"}	901	470
2977	5	director	\\N	{}	901	467
2978	6	cinematographer	\\N	{}	901	49
2979	7	actress	\\N	{"A Maid"}	901	515
2980	8	actor	\\N	{Policeman}	901	393
2981	9	actress	\\N	{"At Brainard's"}	901	601
2982	10	actress	\\N	{}	902	470
2983	1	actor	\\N	{"Officer Wallace"}	902	516
2984	2	actress	\\N	{"Mrs. Wallace"}	902	503
2985	3	actress	\\N	{"The Wallace Child"}	902	534
2986	4	actor	\\N	{"A Convict"}	902	684
2987	5	director	\\N	{}	902	467
2988	6	writer	writer	{}	902	476
2989	7	cinematographer	\\N	{}	902	49
2990	8	actress	\\N	{}	902	515
2991	9	actor	\\N	{}	902	686
2992	10	actor	\\N	{"At Stable"}	903	393
2993	1	actor	\\N	{"Blue Cloud"}	903	576
2994	2	actor	\\N	{"The Old Prospector"}	903	688
2995	3	actress	\\N	{"Blue Cloud's Wife"}	903	601
2996	4	actor	\\N	{Cowboy}	903	469
2997	5	director	\\N	{}	903	467
2998	6	writer	writer	{}	903	472
2999	7	cinematographer	\\N	{}	903	49
3000	8	actor	\\N	{Cowboy,"Dying Man"}	903	684
3001	9	actress	\\N	{}	903	503
3002	1	actor	\\N	{}	904	203
3003	1	director	\\N	{}	905	85
3004	1	director	\\N	{}	906	486
3005	1	actor	\\N	{}	907	773
3006	2	writer	\\N	{}	907	774
3007	1	actor	\\N	{"Jim Brooks"}	908	684
3008	2	actress	\\N	{"Mrs. Jim Brooks"}	908	474
3009	3	actress	\\N	{"The Brooks Daughter"}	908	470
3010	4	actor	\\N	{"John West - the Best Friend"}	908	393
3011	5	director	\\N	{}	908	467
3012	6	cinematographer	\\N	{}	908	49
3013	7	actor	\\N	{"A Boarder"}	908	469
3014	8	actor	\\N	{"A Boarder"}	908	576
3015	9	actor	\\N	{"Workman on Scaffold"}	908	510
3016	1	actress	\\N	{}	909	465
3017	2	director	\\N	{}	909	565
3018	10	actor	\\N	{"At College"}	910	563
3019	1	actor	\\N	{"John Hale"}	910	469
3020	2	actor	\\N	{"Frank Allison"}	910	576
3021	3	actress	\\N	{"Mary Allison - Frank's Sister"}	910	474
3022	4	actress	\\N	{"Dorothy Kirk"}	910	503
3023	5	director	\\N	{}	910	467
3024	6	cinematographer	\\N	{}	910	49
3025	7	cinematographer	\\N	{}	910	118
3026	8	actor	\\N	{"Dorothy's First Suitor",Bartender,"At Stock Exchange"}	910	510
3027	9	actress	\\N	{"Wedding Guest"}	910	414
3028	10	actress	\\N	{}	911	470
3029	1	actor	\\N	{"Mr. Jones"}	911	522
3030	2	actress	\\N	{"Mrs. Jones"}	911	474
3031	3	actress	\\N	{Neighbor}	911	580
3032	4	actor	\\N	{Policeman}	911	510
3033	5	director	\\N	{}	911	467
3034	6	cinematographer	\\N	{}	911	49
3035	7	actress	\\N	{"The Maid","In Crowd"}	911	564
3036	8	actress	\\N	{"In Crowd"}	911	414
3037	9	actor	\\N	{"In Crowd"}	911	563
3038	10	actor	\\N	{"In Office"}	912	576
3039	1	actor	\\N	{"Edward Jones"}	912	522
3040	2	actress	\\N	{"Mrs. Jones"}	912	474
3041	3	actor	\\N	{"Dick Smith"}	912	510
3042	4	actress	\\N	{"The Lady Book Agent"}	912	579
3043	5	director	\\N	{}	912	467
3044	6	cinematographer	\\N	{}	912	49
3045	7	actress	\\N	{}	912	414
3046	8	actor	\\N	{"In Office"}	912	507
3047	9	actor	\\N	{Messenger}	912	392
3048	10	actor	\\N	{"Theatre Man"}	913	646
3049	1	actor	\\N	{"Mr. Jones"}	913	522
3050	2	actress	\\N	{"Mrs. Jones"}	913	474
3051	3	actress	\\N	{"The Maid"}	913	414
3052	4	actress	\\N	{}	913	612
3053	5	director	\\N	{}	913	467
3054	6	cinematographer	\\N	{}	913	49
3055	7	actor	\\N	{"Theatre Man"}	913	507
3056	8	actress	\\N	{"Theatre Woman"}	913	580
3057	9	actress	\\N	{"Mrs. Trouble"}	913	503
3058	1	director	\\N	{}	914	266
3059	2	director	\\N	{}	914	552
3060	3	cinematographer	\\N	{}	914	694
3061	1	director	\\N	{}	915	533
3062	1	actor	\\N	{}	916	203
3063	2	actor	\\N	{"Tom Ripley"}	916	679
3064	1	director	\\N	{}	917	266
3065	2	director	\\N	{}	917	552
3066	3	cinematographer	\\N	{}	917	694
3067	4	cinematographer	\\N	{}	917	211
3068	1	director	\\N	{}	918	81
3069	10	actor	\\N	{Fool}	919	775
3070	1	actor	\\N	{"King Lear"}	919	338
3071	2	actress	\\N	{Regan}	919	511
3072	3	actress	\\N	{Goneril,Regan}	919	504
3073	4	actor	\\N	{"Undetermined role"}	919	487
3074	5	director	\\N	{}	919	93
3075	6	writer	writer	{}	919	776
3076	7	writer	play	{}	919	126
3077	8	actress	\\N	{Cordelia}	919	465
3078	9	actress	\\N	{Cordelia}	919	598
3079	1	actor	\\N	{}	920	777
3080	2	actor	\\N	{}	920	778
3081	3	actor	\\N	{}	920	371
3082	4	director	\\N	{}	920	721
3083	5	producer	producer	{}	920	723
3084	6	cinematographer	\\N	{}	920	724
3085	1	actor	\\N	{"Der kleine Detektiv"}	921	371
3086	2	director	\\N	{}	921	721
3087	3	cinematographer	\\N	{}	921	779
3088	1	actress	\\N	{}	922	780
3089	2	actress	\\N	{}	922	664
3090	3	actor	\\N	{}	922	318
3091	4	actor	\\N	{}	922	781
3092	5	actor	\\N	{}	922	690
3093	6	actress	\\N	{}	922	402
3094	7	actor	\\N	{}	922	691
3095	10	actor	\\N	{}	923	654
3096	1	actor	\\N	{}	923	689
3097	2	actress	\\N	{}	923	664
3098	3	actor	\\N	{}	923	318
3099	4	actor	\\N	{}	923	782
3100	5	writer	\\N	{}	923	783
3101	6	cinematographer	\\N	{}	923	319
3102	7	actress	\\N	{}	923	748
3103	8	actor	\\N	{}	923	335
3104	9	actor	\\N	{}	923	746
3105	10	actress	\\N	{"Second Maid (unconfirmed)"}	924	535
3106	1	actress	\\N	{"Lady Helen"}	924	474
3107	2	actress	\\N	{}	924	506
3108	3	actor	\\N	{"Dinner Guest"}	924	522
3109	4	actress	\\N	{"The Friend"}	924	580
3110	5	director	\\N	{}	924	467
3111	6	writer	writer	{}	924	472
3112	7	cinematographer	\\N	{}	924	49
3113	8	actor	\\N	{"The Father"}	924	471
3114	9	actor	\\N	{"Dinner Guest"}	924	469
3115	1	actor	\\N	{"The Colonel"}	925	516
3116	2	actress	\\N	{"One of the Colonel's Nieces"}	925	503
3117	3	actress	\\N	{"One of the Colonel's Nieces"}	925	414
3118	4	actor	\\N	{"Big Serpent"}	925	510
3119	5	director	\\N	{}	925	467
3120	6	writer	novels "The Leather-Stocking Tales"	{}	925	784
3121	7	writer	writer	{}	925	472
3122	8	cinematographer	\\N	{}	925	49
3123	9	cinematographer	\\N	{}	925	118
3124	10	actor	\\N	{"At the Ball"}	926	637
3125	1	actress	\\N	{Vivian}	926	503
3126	2	actress	\\N	{Daisy}	926	601
3127	3	actress	\\N	{Grace}	926	772
3128	4	actress	\\N	{"The Girls' Mother"}	926	515
3129	5	director	\\N	{}	926	467
3130	6	cinematographer	\\N	{}	926	49
3131	7	actor	\\N	{"Carl Wagner"}	926	576
3132	8	actor	\\N	{"The Older Doctor"}	926	516
3133	9	actor	\\N	{"The Younger Doctor","At the Ball"}	926	469
3134	10	actor	\\N	{"The Doctor"}	927	688
3135	1	actress	\\N	{Emily}	927	414
3136	2	actor	\\N	{Joe}	927	516
3137	3	actor	\\N	{Bill}	927	684
3138	4	actress	\\N	{"The Mother"}	927	515
3139	5	director	\\N	{}	927	467
3140	6	writer	writer	{}	927	472
3141	7	cinematographer	\\N	{}	927	49
3142	8	actress	\\N	{"The Second Wife"}	927	503
3143	9	actress	\\N	{"The Second Wife's Friend"}	927	575
3144	10	actor	\\N	{"In Boarding House"}	928	576
3145	1	actress	\\N	{"Little Darling"}	928	601
3146	2	actor	\\N	{"In Boarding House"}	928	563
3147	3	actor	\\N	{"In Boarding House"}	928	686
3148	4	actor	\\N	{"In Boarding House"}	928	522
3149	5	director	\\N	{}	928	467
3150	6	cinematographer	\\N	{}	928	49
3151	7	actor	\\N	{}	928	392
3152	8	actor	\\N	{"In Boarding House"}	928	469
3153	9	actor	\\N	{"In Store"}	928	684
3154	10	actor	\\N	{"Man in Schoolroom"}	929	516
3155	1	actress	\\N	{"The Little Teacher"}	929	601
3156	2	actor	\\N	{"Jack Browning"}	929	469
3157	3	actor	\\N	{"Dave - the Bully"}	929	466
3158	4	actress	\\N	{"The Mother"}	929	515
3159	5	director	\\N	{}	929	467
3160	6	cinematographer	\\N	{}	929	49
3161	7	cinematographer	\\N	{}	929	118
3162	8	actress	\\N	{Student}	929	470
3163	9	actress	\\N	{Student}	929	707
3164	1	actor	\\N	{}	930	769
3165	2	actress	\\N	{}	930	465
3166	3	actor	\\N	{}	930	248
3167	4	director	\\N	{}	930	544
3168	5	writer	story	{}	930	785
3169	1	actor	\\N	{}	931	786
3170	2	actor	\\N	{}	931	290
3171	3	actor	\\N	{}	931	787
3172	4	actress	\\N	{}	931	788
3173	5	director	\\N	{}	931	266
3174	6	director	\\N	{}	931	552
3175	7	writer	play	{}	931	789
3176	10	cinematographer	\\N	{}	932	118
3177	1	actor	\\N	{"Robert Cullison"}	932	646
3178	2	actress	\\N	{"Mrs. Robert Cullison"}	932	503
3179	3	actress	\\N	{"One of the Cullison Children"}	932	601
3180	4	actress	\\N	{"One of the Cullison Children"}	932	470
3181	5	director	\\N	{}	932	467
3182	6	writer	novel "Au Téléphone" by	{}	932	790
3183	7	writer	play	{}	932	791
3184	8	writer	writer	{}	932	510
3185	9	cinematographer	\\N	{}	932	49
3186	10	actress	\\N	{Lady-in-Waiting}	933	414
3187	1	actress	\\N	{"The Duchess"}	933	580
3188	2	actor	\\N	{"The Duke"}	933	469
3189	3	actress	\\N	{"Their Daughter"}	933	503
3190	4	actor	\\N	{"One of the Daughter's Suitors"}	933	468
3191	5	director	\\N	{}	933	467
3192	6	cinematographer	\\N	{}	933	49
3193	7	cinematographer	\\N	{}	933	118
3194	8	actor	\\N	{"One of the Daughter's Suitors"}	933	471
3195	9	actor	\\N	{Minister}	933	646
3196	1	director	\\N	{}	934	486
3197	2	producer	producer	{}	934	103
3198	10	actor	\\N	{"Jim's Friend"}	935	468
3199	1	actress	\\N	{Gertrude}	935	503
3200	2	actor	\\N	{Jack}	935	510
3201	3	actor	\\N	{"Jim - the First Husband"}	935	577
3202	4	actress	\\N	{"The Mother"}	935	580
3203	5	director	\\N	{}	935	467
3204	6	writer	writer	{}	935	472
3205	7	cinematographer	\\N	{}	935	49
3206	8	cinematographer	\\N	{}	935	118
3207	9	actor	\\N	{"The Father"}	935	646
3208	10	actress	\\N	{"Rich Woman"}	936	414
3209	1	actress	\\N	{Isabelle}	936	503
3210	2	actor	\\N	{Enrico}	936	468
3211	3	actress	\\N	{Veronica}	936	474
3212	4	actress	\\N	{"Veronica's Partner"}	936	580
3213	5	director	\\N	{}	936	467
3214	6	cinematographer	\\N	{}	936	49
3215	7	cinematographer	\\N	{}	936	118
3216	8	actor	\\N	{"Second Suitor"}	936	471
3217	9	actor	\\N	{"Rich Man"}	936	576
3218	1	actor	\\N	{}	937	318
3219	2	actress	\\N	{}	937	405
3220	1	writer	writer	{}	938	745
3221	1	actor	\\N	{Macbeth}	940	792
3222	2	actress	\\N	{"Lady Macbeth"}	940	419
3223	3	actor	\\N	{}	940	793
3224	4	actor	\\N	{}	940	794
3225	5	director	\\N	{}	940	420
3226	6	writer	play	{}	940	126
3227	1	actor	\\N	{}	941	689
3228	2	actress	\\N	{}	941	664
3229	3	actor	\\N	{"Napoleon Bonaparte"}	941	318
3230	4	actor	\\N	{}	941	781
3231	5	writer	play	{}	941	795
3232	6	writer	play	{}	941	796
3233	7	actor	\\N	{}	941	690
3234	1	actor	\\N	{General}	942	498
3235	2	actress	\\N	{"Madame de Langeais"}	942	797
3236	1	actor	\\N	{}	943	203
3237	1	director	\\N	{}	944	467
3238	1	actress	\\N	{}	945	695
3239	1	actress	\\N	{"Margie - the Cook"}	946	580
3240	2	actress	\\N	{"Mrs. Holland"}	946	503
3241	3	actor	\\N	{"Mr. Holland"}	946	468
3242	4	actress	\\N	{}	946	612
3243	5	director	\\N	{}	946	467
3244	6	cinematographer	\\N	{}	946	49
3245	7	actor	\\N	{Policeman}	946	507
3246	8	actor	\\N	{}	946	646
3247	9	actor	\\N	{Policeman}	946	510
3248	1	actor	\\N	{}	947	773
3249	2	actor	\\N	{Hochzeitsgast}	947	798
3250	3	actor	\\N	{"Oncle Gaston"}	947	799
3251	4	writer	comedy	{}	947	800
3252	10	actress	\\N	{"At Party"}	948	801
3253	1	actress	\\N	{"Mrs. Ross"}	948	474
3254	2	actress	\\N	{"Mrs. Ross's Daughter"}	948	534
3255	3	actress	\\N	{"Mrs. Parker"}	948	503
3256	4	actress	\\N	{"Telephone Operator","At Party"}	948	414
3257	5	director	\\N	{}	948	467
3258	6	cinematographer	\\N	{}	948	49
3259	7	actress	\\N	{}	948	612
3260	8	actress	\\N	{}	948	470
3261	9	actress	\\N	{"At Party"}	948	580
3262	1	director	\\N	{}	949	269
3263	2	cinematographer	\\N	{}	949	582
3264	10	actor	\\N	{Indian}	950	510
3265	1	actress	\\N	{"Rising Moon"}	950	474
3266	2	actor	\\N	{"Chief Great Elk Horn"}	950	688
3267	3	actor	\\N	{"Little Bear"}	950	576
3268	4	actor	\\N	{"Standing Rock"}	950	684
3269	5	director	\\N	{}	950	467
3270	6	writer	writer	{}	950	472
3271	7	cinematographer	\\N	{}	950	49
3272	8	actor	\\N	{Indian}	950	469
3273	9	actor	\\N	{Indian}	950	619
3274	10	actress	\\N	{}	951	535
3275	1	actor	\\N	{"Harold Woodson"}	951	688
3276	2	actor	\\N	{"David Williams"}	951	684
3277	3	actor	\\N	{"Farm Boy"}	951	392
3278	4	actress	\\N	{"In Crowd"}	951	470
3279	5	director	\\N	{}	951	467
3280	6	writer	writer	{}	951	476
3281	7	cinematographer	\\N	{}	951	49
3282	8	cinematographer	\\N	{}	951	118
3283	9	actor	\\N	{}	951	469
3284	1	actress	\\N	{"The Señorita"}	952	601
3285	2	actor	\\N	{"American Soldier"}	952	696
3286	3	actor	\\N	{"Mexican in Bar"}	952	684
3287	4	actor	\\N	{"The Señorita's Sweetheart"}	952	726
3288	5	director	\\N	{}	952	467
3289	6	cinematographer	\\N	{}	952	49
3290	7	actor	\\N	{"Mexican in Bar"}	952	510
3291	1	actor	\\N	{"The Sheriff"}	953	203
3292	2	actor	\\N	{}	953	368
3293	10	actress	\\N	{"Eleanor's Maid"}	954	772
3294	1	actor	\\N	{Frank}	954	696
3295	2	actress	\\N	{Eleanor}	954	601
3296	3	actress	\\N	{Mercedes}	954	575
3297	4	actress	\\N	{"Eleanor's Mother"}	954	515
3298	5	director	\\N	{}	954	467
3299	6	cinematographer	\\N	{}	954	49
3300	7	cinematographer	\\N	{}	954	118
3301	8	actor	\\N	{"Sergeant Reginald Vandyke Worthington"}	954	510
3302	9	actor	\\N	{"Frank's Friend"}	954	516
3303	1	actor	\\N	{"The Burglar"}	955	368
3304	2	director	\\N	{}	955	203
3305	10	actress	\\N	{Helena}	956	598
3306	1	actor	\\N	{Demetrius}	956	802
3307	2	actor	\\N	{Quince}	956	488
3308	3	actress	\\N	{Fairy}	956	803
3309	4	actress	\\N	{Fairy}	956	804
3310	5	director	\\N	{}	956	489
3311	6	director	co-director	{}	956	93
3312	7	writer	scenario	{}	956	776
3313	8	writer	play	{}	956	126
3314	9	actor	\\N	{Lysander}	956	487
3315	10	actor	\\N	{"At Party"}	957	393
3316	1	actor	\\N	{"Henry Woodson"}	957	469
3317	2	actress	\\N	{"Hulda - the Maid"}	957	414
3318	3	actress	\\N	{Nellie}	957	503
3319	4	actor	\\N	{"Delivery Man"}	957	522
3320	5	director	\\N	{}	957	467
3321	6	cinematographer	\\N	{}	957	49
3322	7	actor	\\N	{"In Editor's Office"}	957	685
3323	8	actor	\\N	{"In Editor's Office"}	957	686
3324	9	actor	\\N	{"At Party"}	957	576
3325	1	director	\\N	{}	958	486
3326	2	producer	producer	{}	958	103
3327	1	actor	\\N	{Javert}	959	338
3328	2	actor	\\N	{"Jean Valjean"}	959	487
3329	3	actress	\\N	{}	959	805
3330	4	actor	\\N	{}	959	769
3331	5	director	\\N	{}	959	93
3332	6	writer	novel	{}	959	278
3333	10	actress	\\N	{"La muse de Molière"}	960	806
3334	1	actor	\\N	{Molière}	960	807
3335	2	actor	\\N	{"Molière jeune"}	960	745
3336	3	actor	\\N	{"Louis XIV"}	960	808
3337	4	actress	\\N	{"Armande Béjart"}	960	809
3338	5	director	\\N	{}	960	810
3339	6	writer	writer	{}	960	811
3340	7	cinematographer	\\N	{}	960	812
3341	8	production_designer	\\N	{}	960	813
3342	9	actress	\\N	{"La servante La Forest"}	960	814
3343	1	actor	\\N	{Molenaar}	961	815
3344	2	actor	\\N	{"Verliefde mededinger"}	961	816
3345	3	actress	\\N	{Johanna}	961	817
3346	4	director	\\N	{}	961	818
3347	5	cinematographer	\\N	{}	961	819
3348	10	actor	\\N	{"The Sheriff"}	962	393
3349	1	actress	\\N	{"Harum-Scarum - a Mountain Girl"}	962	601
3350	2	actor	\\N	{"The Mountain Girl's Suitor"}	962	576
3351	3	actor	\\N	{"The Mountain Girl's Brother"}	962	684
3352	4	actress	\\N	{"The Mountain Girl's Mother"}	962	515
3353	5	director	\\N	{}	962	467
3354	6	writer	writer	{}	962	476
3355	7	cinematographer	\\N	{}	962	49
3356	8	actor	\\N	{"The Mountain Girl's Father"}	962	516
3357	9	actor	\\N	{"A Traveler From The Valley"}	962	469
3358	10	actress	\\N	{Guest}	963	580
3359	1	actor	\\N	{"Mr. Jones"}	963	522
3360	2	actress	\\N	{"Mrs. Jones"}	963	474
3361	3	actress	\\N	{"The Maid"}	963	414
3362	4	actor	\\N	{"The Messenger"}	963	392
3363	5	director	\\N	{}	963	467
3364	6	writer	writer	{}	963	476
3365	7	composer	\\N	{}	963	600
3366	8	cinematographer	\\N	{}	963	49
3367	9	actress	\\N	{Guest}	963	579
3368	10	actor	\\N	{"At Club"}	964	393
3369	1	actor	\\N	{"Mr. Jones"}	964	522
3370	2	actress	\\N	{"Mrs. Jones"}	964	474
3371	3	actor	\\N	{"The Burglar"}	964	510
3372	4	actor	\\N	{"At Club"}	964	685
3373	5	director	\\N	{}	964	467
3374	6	cinematographer	\\N	{}	964	49
3375	7	cinematographer	\\N	{}	964	118
3376	8	actor	\\N	{"At Club"}	964	469
3377	9	actor	\\N	{"At Club"}	964	576
3378	1	actor	\\N	{"Mr. Jones"}	965	522
3379	2	actress	\\N	{"Mrs. Jones"}	965	474
3380	3	actor	\\N	{"The Repairman"}	965	393
3381	4	actress	\\N	{}	965	506
3382	5	director	\\N	{}	965	467
3383	6	cinematographer	\\N	{}	965	49
3384	7	actor	\\N	{}	965	510
3385	1	actor	\\N	{}	966	371
3386	2	producer	producer	{}	966	723
3387	3	cinematographer	\\N	{}	966	724
3388	1	actor	\\N	{}	967	318
3389	1	actor	\\N	{Napoleon}	968	775
3390	2	actor	\\N	{}	968	603
3391	3	actress	\\N	{}	968	511
3392	4	actor	\\N	{}	968	820
3393	5	director	\\N	{}	968	93
3394	6	writer	scenario	{}	968	776
3395	1	director	\\N	{}	969	486
3396	2	producer	producer	{}	969	103
3397	10	actor	\\N	{Servant,"Loan Clerk"}	970	393
3398	1	actress	\\N	{"Harriet Leroque Kendrick"}	970	702
3399	2	actor	\\N	{"John Kendrick"}	970	520
3400	3	actress	\\N	{"Owner of Necklace (unconfirmed)"}	970	821
3401	4	actress	\\N	{"The Maid","In Pawnshop"}	970	601
3402	5	director	\\N	{}	970	467
3403	6	writer	writer	{}	970	476
3404	7	writer	novel	{}	970	822
3405	8	cinematographer	\\N	{}	970	49
3406	9	cinematographer	\\N	{}	970	118
3407	1	director	\\N	{}	971	486
3408	2	producer	producer	{}	971	103
3409	1	actress	\\N	{"The Woman"}	972	503
3410	2	actor	\\N	{"The Thief"}	972	510
3411	3	actor	\\N	{Helper}	972	469
3412	4	actor	\\N	{Helper}	972	520
3413	5	director	\\N	{}	972	467
3414	6	cinematographer	\\N	{}	972	49
3415	1	director	\\N	{}	973	718
3416	10	actress	\\N	{"Factory Employee"}	974	503
3417	1	actress	\\N	{"Ella Berling"}	974	474
3418	2	actress	\\N	{"The Mother"}	974	580
3419	3	actor	\\N	{"The Messenger","Factory Employee"}	974	393
3420	4	actor	\\N	{"The Butler"}	974	823
3421	5	director	\\N	{}	974	467
3422	6	actor	\\N	{"In Office"}	974	522
3423	7	actor	\\N	{"In Store"}	974	392
3424	8	actor	\\N	{"Customer Who Finds Note"}	974	471
3425	9	actor	\\N	{"In Office"}	974	469
3426	10	actress	\\N	{}	975	474
3427	1	actor	\\N	{"The Husband"}	975	469
3428	2	actress	\\N	{"The Wife"}	975	503
3429	3	actor	\\N	{"The Viper"}	975	688
3430	4	actor	\\N	{"In Mob"}	975	637
3431	5	director	\\N	{}	975	467
3432	6	writer	writer	{}	975	476
3433	7	cinematographer	\\N	{}	975	49
3434	8	actress	\\N	{"Victimized Woman"}	975	772
3435	9	actor	\\N	{"In Mob"}	975	684
3436	1	actor	\\N	{}	976	380
3437	2	actor	\\N	{}	976	824
3438	3	actor	\\N	{}	976	825
3439	4	actor	\\N	{}	976	826
3440	5	director	\\N	{}	976	827
3441	6	cinematographer	\\N	{}	976	319
3442	7	actor	\\N	{}	976	666
3443	8	actor	\\N	{}	976	828
3444	9	actor	\\N	{}	976	829
3445	1	actress	\\N	{Governess}	977	405
3446	2	director	\\N	{}	977	319
3447	1	actor	\\N	{"Zeke Wright"}	978	684
3448	2	actor	\\N	{"Tom Wright - Zeke's Nephew"}	978	696
3449	3	actress	\\N	{Bessie}	978	601
3450	4	actor	\\N	{}	978	510
3451	5	director	\\N	{}	978	467
3452	6	cinematographer	\\N	{}	978	49
3453	1	actress	\\N	{Oliver}	979	512
3454	2	actor	\\N	{Fagin}	979	775
3455	3	actress	\\N	{"Nancy Sykes"}	979	830
3456	4	director	\\N	{}	979	93
3457	5	writer	novel	{}	979	168
3458	6	writer	writer	{}	979	776
3459	1	actor	\\N	{}	980	425
3460	2	actress	\\N	{}	980	426
3461	3	actor	\\N	{}	980	831
3462	4	director	\\N	{}	980	429
3463	5	producer	producer	{}	980	200
3464	1	actress	\\N	{Ruth}	981	780
3465	10	actor	\\N	{Customer}	982	471
3466	1	actor	\\N	{"Jim Smith"}	982	522
3467	2	actor	\\N	{"Hiram Greengage"}	982	520
3468	3	actor	\\N	{"In Store"}	982	563
3469	4	actor	\\N	{}	982	466
3470	5	director	\\N	{}	982	467
3471	6	cinematographer	\\N	{}	982	49
3472	7	cinematographer	\\N	{}	982	118
3473	8	actor	\\N	{Customer}	982	392
3474	9	actress	\\N	{Customer}	982	580
3475	1	director	\\N	{}	983	486
3476	2	producer	producer	{}	983	103
3477	10	actress	\\N	{}	984	515
3478	1	actor	\\N	{"John Murray"}	984	469
3479	2	actress	\\N	{"Mrs. John Murray"}	984	474
3480	3	actress	\\N	{"Sicilian Woman"}	984	503
3481	4	actor	\\N	{"Sicilian Woman's Accomplice"}	984	471
3482	5	director	\\N	{}	984	467
3483	6	writer	\\N	{}	984	472
3484	7	cinematographer	\\N	{}	984	118
3485	8	actor	\\N	{Doctor}	984	468
3486	9	actress	\\N	{Nurse}	984	414
3487	1	director	\\N	{}	985	486
3488	2	producer	producer	{}	985	103
3489	10	actor	\\N	{}	986	770
3490	1	actor	\\N	{George}	986	516
3491	2	actress	\\N	{Hetty}	986	515
3492	3	actress	\\N	{"Hetty's Niece - Mary - as a Child"}	986	707
3493	4	actress	\\N	{"Hetty's Niece - Mary - as an Adult"}	986	564
3494	5	director	\\N	{}	986	467
3495	6	writer	writer	{}	986	476
3496	7	cinematographer	\\N	{}	986	49
3497	8	actor	\\N	{"George's Nephew - Jack"}	986	576
3498	9	actor	\\N	{"Hetty's Brother-in-Law"}	986	510
3499	1	actor	\\N	{Othello}	987	832
3500	2	actress	\\N	{Desdemona}	987	833
3501	3	actor	\\N	{Iago}	987	834
3502	4	actor	\\N	{Cassio}	987	835
3503	5	director	\\N	{}	987	836
3504	6	writer	play "Othello"	{}	987	126
3505	7	actor	\\N	{"Duke of Venice"}	987	837
3506	8	actor	\\N	{}	987	838
3507	1	actress	\\N	{}	988	780
3508	2	actress	\\N	{}	988	839
3509	3	actor	\\N	{}	988	318
3510	4	actor	\\N	{}	988	335
3511	5	cinematographer	\\N	{}	988	319
3512	6	actor	\\N	{"Paul Wang"}	988	746
3513	7	actress	\\N	{}	988	405
3514	8	actor	\\N	{}	988	690
3515	10	actor	\\N	{Policeman,"In Store"}	989	469
3516	1	actor	\\N	{"Mr. Jones"}	989	522
3517	2	actress	\\N	{"Mrs. Jones"}	989	474
3518	3	actress	\\N	{"The Maid"}	989	580
3519	4	actress	\\N	{Visitor}	989	414
3520	5	director	\\N	{}	989	467
3521	6	cinematographer	\\N	{}	989	49
3522	7	cinematographer	\\N	{}	989	118
3523	8	actor	\\N	{"On Street"}	989	563
3524	9	actress	\\N	{}	989	612
3525	1	actress	\\N	{Pippa}	990	564
3526	2	actor	\\N	{"Pippa's Husband"}	990	516
3527	3	actor	\\N	{Jules}	990	684
3528	4	actress	\\N	{"Greek Model"}	990	414
3529	5	director	\\N	{}	990	467
3530	6	writer	play	{}	990	840
3531	7	writer	writer	{}	990	476
3532	8	cinematographer	\\N	{}	990	49
3533	9	cinematographer	\\N	{}	990	118
3534	10	actor	\\N	{"Newspaper Employee","Man - Third Couple"}	991	469
3535	1	actor	\\N	{"Boss Tim Crogan"}	991	510
3536	2	actress	\\N	{"Peters - the Cartoonist"}	991	503
3537	3	actor	\\N	{"Crogan's Friend"}	991	520
3538	4	actress	\\N	{"Woman - Third Couple"}	991	414
3539	5	director	\\N	{}	991	467
3540	6	cinematographer	\\N	{}	991	49
3541	7	cinematographer	\\N	{}	991	118
3542	8	actor	\\N	{"Newspaper Employee"}	991	507
3543	9	actress	\\N	{"Woman - Fourth Couple"}	991	580
3544	1	director	\\N	{}	992	85
3545	1	actress	\\N	{}	993	841
3546	2	actress	\\N	{}	993	842
3547	3	actor	\\N	{}	993	843
3548	4	actor	\\N	{}	993	810
3549	5	writer	writer	{}	993	811
3550	6	writer	writer	{}	993	745
3551	7	actress	\\N	{}	993	844
3552	10	actor	\\N	{Sunbather}	994	616
3553	1	actor	\\N	{Tom}	994	469
3554	2	actress	\\N	{Ethel}	994	503
3555	3	actor	\\N	{"One of the Boys"}	994	392
3556	4	actor	\\N	{"One of the Boys"}	994	845
3557	5	director	\\N	{}	994	467
3558	6	cinematographer	\\N	{}	994	118
3559	7	actress	\\N	{"On Porch"}	994	414
3560	8	actor	\\N	{"Mr. Tramp"}	994	393
3561	9	actor	\\N	{Sunbather}	994	696
3562	1	director	\\N	{}	995	85
3563	1	director	\\N	{}	996	269
3564	2	cinematographer	\\N	{}	996	582
3565	1	actress	\\N	{"The Prince","Tom Canty"}	997	753
3566	2	actor	\\N	{}	997	519
3567	3	actor	\\N	{}	997	846
3568	4	actor	\\N	{}	997	388
3569	5	director	\\N	{}	997	544
3570	6	actress	\\N	{}	997	642
3571	1	actor	\\N	{"The Smoker"}	998	236
3572	2	actress	\\N	{"The Elder Fairy"}	998	621
3573	3	director	\\N	{}	998	93
3574	1	director	\\N	{}	999	269
3575	2	cinematographer	\\N	{}	999	582
3576	1	actress	\\N	{"Lady Florence"}	1000	503
3577	2	actor	\\N	{"Count Lopes"}	1000	468
3578	3	actor	\\N	{"The Spy"}	1000	576
3579	4	actress	\\N	{"The Maid"}	1000	474
3580	5	director	\\N	{}	1000	467
3581	6	cinematographer	\\N	{}	1000	49
3582	7	actor	\\N	{Soldier}	1000	469
3583	8	actor	\\N	{Soldier}	1000	646
3584	9	actor	\\N	{Soldier}	1000	510
3585	1	actor	\\N	{"Jim Watson"}	1001	203
3586	2	actor	\\N	{"Walter Milton"}	1001	675
3587	3	actor	\\N	{"The Mexican"}	1001	676
3588	4	actor	\\N	{"The Girl's Father"}	1001	847
3589	5	actor	\\N	{"The Cowboy Whittling Wood"}	1001	677
3590	10	actress	\\N	{Indian}	1002	772
3591	1	actor	\\N	{"Silver Eagle"}	1002	576
3592	2	actress	\\N	{Minnewanna}	1002	848
3593	3	actress	\\N	{Indian}	1002	515
3594	4	actor	\\N	{Conqueror}	1002	697
3595	5	director	\\N	{}	1002	467
3596	6	writer	\\N	{}	1002	476
3597	7	cinematographer	\\N	{}	1002	49
3598	8	actor	\\N	{Conqueror}	1002	637
3599	9	actress	\\N	{Indian}	1002	707
3600	10	actor	\\N	{}	1003	469
3601	1	actress	\\N	{"Kittie Ryan"}	1003	601
3602	2	actor	\\N	{"Steve Ryan - Kittie's Uncle"}	1003	393
3603	3	actor	\\N	{"Joe Fielding"}	1003	684
3604	4	actor	\\N	{"Sam Walters"}	1003	468
3605	5	director	\\N	{}	1003	467
3606	6	cinematographer	\\N	{}	1003	49
3607	7	cinematographer	\\N	{}	1003	118
3608	8	actor	\\N	{"Kittie's Fiancé"}	1003	696
3609	9	actor	\\N	{}	1003	693
3610	10	actor	\\N	{Servant}	1004	637
3611	1	actor	\\N	{"Mr. Morley"}	1004	684
3612	2	actress	\\N	{"Mrs. Morley"}	1004	503
3613	3	actor	\\N	{Jack}	1004	576
3614	4	actress	\\N	{"Alice Ashford"}	1004	601
3615	5	director	\\N	{}	1004	467
3616	6	cinematographer	\\N	{}	1004	49
3617	7	actor	\\N	{"The Doctor"}	1004	516
3618	8	actress	\\N	{}	1004	414
3619	9	actress	\\N	{Servant}	1004	515
3620	10	actor	\\N	{"At Court","A Guard","At Inn"}	1005	510
3621	1	actor	\\N	{"Prince Dmitri"}	1005	469
3622	2	actress	\\N	{Katucha}	1005	474
3623	3	actress	\\N	{"A Prisoner"}	1005	503
3624	4	actor	\\N	{"At Court","At Prison"}	1005	576
3625	5	director	\\N	{}	1005	467
3626	6	writer	novel "Voskreseniye"	{}	1005	849
3627	7	writer	\\N	{}	1005	476
3628	8	cinematographer	\\N	{}	1005	49
3629	9	cinematographer	\\N	{}	1005	118
3630	1	actor	\\N	{Montaloup}	1006	689
3631	2	actress	\\N	{Leontine}	1006	664
3632	3	actor	\\N	{"Erneste des Tressailles"}	1006	850
3633	4	actor	\\N	{Marc-Arron}	1006	851
3634	5	director	\\N	{}	1006	827
3635	6	writer	play	{}	1006	852
3636	7	cinematographer	\\N	{}	1006	319
3637	8	actress	\\N	{"Aleine de l'Estoile"}	1006	853
3638	1	actor	\\N	{}	1007	487
3639	2	actor	\\N	{}	1007	775
3640	3	actor	\\N	{}	1007	854
3641	4	actress	\\N	{}	1007	855
3642	5	director	\\N	{}	1007	93
3643	6	writer	play "Richelieu"	{}	1007	618
3644	7	writer	\\N	{}	1007	776
3645	8	actor	\\N	{}	1007	489
3646	1	actor	\\N	{}	1008	203
3647	10	actor	\\N	{Cowboy}	1009	469
3648	1	actor	\\N	{"Miguel - a Wealthy Ranchero"}	1009	646
3649	2	actress	\\N	{"Vinuella - Miguel's Wife"}	1009	580
3650	3	actress	\\N	{"Mexican Woman"}	1009	474
3651	4	actor	\\N	{"Jose - a Poor Mexican"}	1009	577
3652	5	director	\\N	{}	1009	467
3653	6	cinematographer	\\N	{}	1009	118
3654	7	actor	\\N	{"Chinese Man"}	1009	522
3655	8	actor	\\N	{Cowpuncher}	1009	510
3656	9	actress	\\N	{}	1009	612
3657	1	director	\\N	{}	1010	486
3658	2	producer	producer	{}	1010	103
3659	1	actress	\\N	{}	1011	465
3660	2	actor	\\N	{}	1011	248
3661	3	actor	\\N	{}	1011	856
3662	4	actress	\\N	{Helen}	1011	857
3663	5	director	\\N	{}	1011	544
3664	6	writer	writer	{}	1011	858
3665	10	actor	\\N	{Nobleman}	1012	471
3666	1	actor	\\N	{"Monsieur Flamant"}	1012	468
3667	2	actress	\\N	{"The Blind Sculptress"}	1012	503
3668	3	actress	\\N	{Noblewoman,"Sculptress's Friend"}	1012	414
3669	4	actor	\\N	{Nobleman}	1012	522
3670	5	director	\\N	{}	1012	467
3671	6	cinematographer	\\N	{}	1012	49
3672	7	actress	\\N	{"Sculptress's Model"}	1012	534
3673	8	actress	\\N	{Child}	1012	470
3674	9	actress	\\N	{Noblewoman}	1012	580
3675	1	actress	\\N	{"Mrs. Leffingwell"}	1013	503
3676	2	actor	\\N	{"The Gentleman Burglar"}	1013	469
3677	3	actress	\\N	{Visitor}	1013	580
3678	4	actress	\\N	{"Maid (unconfirmed)"}	1013	535
3679	5	director	\\N	{}	1013	467
3680	6	cinematographer	\\N	{}	1013	49
3681	7	actor	\\N	{Footman}	1013	576
3682	8	actor	\\N	{Visitor}	1013	688
3683	9	actor	\\N	{Policeman}	1013	510
3684	10	actor	\\N	{"In Crowd"}	1014	576
3685	1	actress	\\N	{"Cynthia Stebbins"}	1014	414
3686	2	actor	\\N	{"Hank Hopkins"}	1014	507
3687	3	actor	\\N	{"Hungry Henry"}	1014	468
3688	4	actor	\\N	{"Dad Stebbins"}	1014	646
3689	5	director	\\N	{}	1014	467
3690	6	cinematographer	\\N	{}	1014	49
3691	7	actor	\\N	{"In Crowd"}	1014	522
3692	8	actor	\\N	{}	1014	581
3693	9	actress	\\N	{"In Crowd"}	1014	503
3694	1	actor	\\N	{}	1015	775
3695	2	actor	\\N	{}	1015	487
3696	3	actress	\\N	{}	1015	511
3697	4	actor	\\N	{}	1015	603
3698	5	director	\\N	{}	1015	93
3699	6	writer	play	{}	1015	278
3700	7	writer	scenario	{}	1015	776
3701	10	actress	\\N	{"At Wigmaker's"}	1016	503
3702	1	actor	\\N	{"Mr. Hardluck"}	1016	468
3703	2	actress	\\N	{"Mrs. Hardluck"}	1016	474
3704	3	actress	\\N	{"At Wigmaker's"}	1016	414
3705	4	actor	\\N	{"At Jeweler's"}	1016	522
3706	5	director	\\N	{}	1016	467
3707	6	writer	story "The Gift of the Magi"	{}	1016	768
3708	7	cinematographer	\\N	{}	1016	49
3709	8	actor	\\N	{"At Jeweler's","At Pawnshop"}	1016	507
3710	9	actor	\\N	{"At Wigmaker's"}	1016	469
3711	1	director	\\N	{}	1017	486
3712	2	producer	producer	{}	1017	103
3713	10	actress	\\N	{}	1018	508
3714	1	actress	\\N	{"Mary Wilson"}	1018	474
3715	2	actor	\\N	{"Bob Walton"}	1018	468
3716	3	actor	\\N	{"Harry Brown","In Factory","In Street Crowds"}	1018	471
3717	4	actress	\\N	{"In First Bar","In Factory"}	1018	414
3718	5	director	\\N	{}	1018	467
3719	6	writer	based on a play by	{}	1018	859
3720	7	cinematographer	\\N	{}	1018	49
3721	8	cinematographer	\\N	{}	1018	118
3722	9	actor	\\N	{"In First Bar","In Factory"}	1018	563
3723	1	actor	\\N	{David}	1019	487
3724	2	actor	\\N	{"King Saul"}	1019	338
3725	3	actress	\\N	{}	1019	474
3726	4	director	\\N	{}	1019	93
3727	5	writer	writer	{}	1019	860
3728	10	actress	\\N	{}	1020	612
3729	1	actor	\\N	{"Mr. Schneider"}	1020	522
3730	2	actress	\\N	{"Mrs. Schneider"}	1020	474
3731	3	actress	\\N	{Lena}	1020	580
3732	4	actor	\\N	{"The Violinist"}	1020	469
3733	5	director	\\N	{}	1020	467
3734	6	cinematographer	\\N	{}	1020	49
3735	7	cinematographer	\\N	{}	1020	118
3736	8	actor	\\N	{"First Thief"}	1020	576
3737	9	actor	\\N	{"Second Thief"}	1020	520
3738	10	actor	\\N	{"Nobleman at Court"}	1021	685
3739	1	actor	\\N	{"The Count"}	1021	469
3740	2	actress	\\N	{"The Countess"}	1021	503
3741	3	actor	\\N	{"The Minstrel"}	1021	616
3742	4	actress	\\N	{"A Lady-in-Waiting"}	1021	414
3743	5	director	\\N	{}	1021	467
3744	6	writer	novel "The Cask of Amontillado"	{}	1021	861
3745	7	writer	\\N	{}	1021	476
3746	8	writer	story "La Grande Breteche"	{}	1021	862
3747	9	cinematographer	\\N	{}	1021	49
3748	10	actor	\\N	{"The Judge's Butler"}	1022	563
3749	1	actor	\\N	{"Mr. Herne"}	1022	684
3750	2	actress	\\N	{"Mrs. Herne"}	1022	702
3751	3	actress	\\N	{"One of the Herne Children"}	1022	470
3752	4	actor	\\N	{"One of the Herne Children"}	1022	613
3753	5	director	\\N	{}	1022	467
3754	6	cinematographer	\\N	{}	1022	49
3755	7	actress	\\N	{"Mrs.Herne's First Maid"}	1022	601
3756	8	actor	\\N	{"The Judge"}	1022	688
3757	9	actor	\\N	{"The Judge's Clerk"}	1022	510
3758	1	actor	\\N	{}	1023	203
3759	1	producer	producer	{}	1024	119
3760	1	actor	\\N	{}	1025	689
3761	2	actor	\\N	{}	1025	318
3762	3	actor	\\N	{}	1025	335
3763	4	actor	\\N	{}	1025	746
3764	5	cinematographer	\\N	{}	1025	319
3765	1	actor	\\N	{}	1026	624
3766	2	actor	\\N	{}	1026	318
3767	3	actor	\\N	{}	1026	335
3768	4	actor	\\N	{}	1026	746
3769	5	cinematographer	\\N	{}	1026	319
3770	1	director	\\N	{}	1028	486
3771	2	producer	producer	{}	1028	103
3772	1	actress	\\N	{}	1029	465
3773	2	director	\\N	{}	1029	565
3774	10	actress	\\N	{"A Child"}	1030	470
3775	1	actress	\\N	{Nerada}	1030	474
3776	2	actor	\\N	{"Alachus - Nerada's Husband"}	1030	684
3777	3	actor	\\N	{"Deletius - the Patrician Rival"}	1030	468
3778	4	actor	\\N	{"Alachus' Friend"}	1030	616
3779	5	director	\\N	{}	1030	467
3780	6	cinematographer	\\N	{}	1030	49
3781	7	actor	\\N	{"Deletius' Slave Master"}	1030	688
3782	8	actress	\\N	{"Mourning Woman"}	1030	515
3783	9	actor	\\N	{"A Patrician"}	1030	685
3784	1	director	\\N	{}	1031	486
3785	2	producer	producer	{}	1031	103
3786	1	director	\\N	{}	1032	486
3787	10	actor	\\N	{}	1033	693
3788	1	actor	\\N	{"Will Sanderson - The Son"}	1033	863
3789	2	actor	\\N	{"The Father"}	1033	520
3790	3	actress	\\N	{"The Mother"}	1033	580
3791	4	actress	\\N	{"Mary Clark"}	1033	601
3792	5	director	\\N	{}	1033	467
3793	6	writer	novel	{}	1033	822
3794	7	cinematographer	\\N	{}	1033	49
3795	8	cinematographer	\\N	{}	1033	118
3796	9	actor	\\N	{"The Employer"}	1033	468
3797	1	actress	\\N	{}	1034	864
3798	2	actor	\\N	{}	1034	865
3799	3	actor	\\N	{}	1034	866
3800	4	writer	play "A Midsummer Night's Dream"	{}	1034	126
3801	10	actress	\\N	{"Second Woman"}	1035	474
3802	1	actor	\\N	{"Somniferous Sam - The Tramp"}	1035	393
3803	2	actor	\\N	{"The Gentleman"}	1035	510
3804	3	actress	\\N	{}	1035	579
3805	4	actor	\\N	{"In Fight"}	1035	392
3806	5	director	\\N	{}	1035	467
3807	6	cinematographer	\\N	{}	1035	49
3808	7	cinematographer	\\N	{}	1035	118
3809	8	actress	\\N	{"First Woman"}	1035	580
3810	9	actor	\\N	{"In Fight"}	1035	469
3811	1	actor	\\N	{"Tom 'Bud' Wilson"}	1036	203
3812	2	actress	\\N	{"Lola Gonzalez"}	1036	867
3813	3	actor	\\N	{"Pedro Mayos"}	1036	676
3814	1	director	\\N	{}	1037	486
3815	2	producer	producer	{}	1037	103
3816	10	actress	\\N	{Palle}	1038	402
3817	1	actor	\\N	{Tam}	1038	638
3818	2	actor	\\N	{}	1038	653
3819	3	actress	\\N	{}	1038	868
3820	4	actor	\\N	{Gøngehøvdingen}	1038	652
3821	5	director	\\N	{}	1038	380
3822	6	cinematographer	\\N	{}	1038	734
3823	7	actor	\\N	{Ib}	1038	735
3824	8	actor	\\N	{"Mogens Krabbe"}	1038	869
3825	9	actress	\\N	{}	1038	650
3826	10	actor	\\N	{"At Party"}	1039	563
3827	1	actress	\\N	{"Mary Rollins"}	1039	683
3828	2	actor	\\N	{"Reverend John Stanton"}	1039	469
3829	3	actor	\\N	{"Mary's Father"}	1039	616
3830	4	actor	\\N	{"Mary's Brother"}	1039	688
3831	5	director	\\N	{}	1039	467
3832	6	writer	writer	{}	1039	472
3833	7	cinematographer	\\N	{}	1039	49
3834	8	actress	\\N	{"The Concerned Mother"}	1039	515
3835	9	actor	\\N	{"The Drunken Son"}	1039	696
3836	1	director	\\N	{}	1040	266
3837	2	director	\\N	{}	1040	552
3838	10	actor	\\N	{"Member of Suicide Club"}	1041	522
3839	1	actor	\\N	{"The Chosen One"}	1041	577
3840	2	actress	\\N	{"The Woman"}	1041	703
3841	3	actor	\\N	{"Member of Suicide Club"}	1041	563
3842	4	actor	\\N	{}	1041	697
3843	5	director	\\N	{}	1041	467
3844	6	writer	short story "The Suicide Club"	{}	1041	870
3845	7	writer	\\N	{}	1041	476
3846	8	cinematographer	\\N	{}	1041	49
3847	9	cinematographer	\\N	{}	1041	118
3848	10	actor	\\N	{}	1042	696
3849	1	actor	\\N	{"Paul Hiller"}	1042	469
3850	2	actress	\\N	{"Paul's Fiancée - the Jilted One"}	1042	503
3851	3	actress	\\N	{"Alice Baross - the Second Fiancée"}	1042	535
3852	4	actor	\\N	{"Alice's Father"}	1042	688
3853	5	director	\\N	{}	1042	467
3854	6	cinematographer	\\N	{}	1042	49
3855	7	actor	\\N	{"On the Bridge"}	1042	392
3856	8	actor	\\N	{}	1042	576
3857	9	actress	\\N	{}	1042	601
3858	1	actress	\\N	{Alice}	1043	601
3859	2	actor	\\N	{"Alice's Father"}	1043	684
3860	3	actor	\\N	{Frank}	1043	696
3861	4	actress	\\N	{"Alice's Sister"}	1043	474
3862	5	director	\\N	{}	1043	467
3863	6	cinematographer	\\N	{}	1043	49
3864	1	actor	\\N	{}	1044	203
3865	1	director	\\N	{}	1045	486
3866	2	producer	producer	{}	1045	103
3867	1	actor	\\N	{}	1046	871
3868	2	actor	\\N	{}	1046	203
3869	10	actor	\\N	{}	1047	576
3870	1	actress	\\N	{Nellie}	1047	601
3871	2	actor	\\N	{"A Simple Farmer Lad"}	1047	684
3872	3	actor	\\N	{"A Handsome Dressy Chap"}	1047	688
3873	4	actor	\\N	{"The Hunter"}	1047	469
3874	5	director	\\N	{}	1047	467
3875	6	cinematographer	\\N	{}	1047	49
3876	7	actress	\\N	{"Nellie's Friend"}	1047	848
3877	8	actress	\\N	{Extra}	1047	702
3878	9	actress	\\N	{Extra}	1047	474
3879	1	director	\\N	{}	1048	872
3880	10	actor	\\N	{"At the Hotel"}	1049	469
3881	1	actor	\\N	{Harry}	1049	696
3882	2	actress	\\N	{Bessie}	1049	601
3883	3	actor	\\N	{"At the Hotel"}	1049	685
3884	4	actor	\\N	{"At the Hotel"}	1049	697
3885	5	director	\\N	{}	1049	467
3886	6	cinematographer	\\N	{}	1049	49
3887	7	cinematographer	\\N	{}	1049	118
3888	8	actor	\\N	{}	1049	522
3889	9	actress	\\N	{"Salvation Army Member"}	1049	772
3890	10	actor	\\N	{"In Group"}	1050	522
3891	1	actor	\\N	{Harry}	1050	696
3892	2	actress	\\N	{Bessie}	1050	601
3893	3	actor	\\N	{"The Father"}	1050	684
3894	4	actress	\\N	{"The Mother"}	1050	515
3895	5	director	\\N	{}	1050	467
3896	6	writer	writer	{}	1050	472
3897	7	cinematographer	\\N	{}	1050	49
3898	8	cinematographer	\\N	{}	1050	873
3899	9	actor	\\N	{"In Group"}	1050	685
3900	10	actor	\\N	{"Theatre Audience"}	1051	471
3901	1	actress	\\N	{"Theatre Audience"}	1051	414
3902	2	actor	\\N	{"Theatre Audience"}	1051	522
3903	3	actress	\\N	{"Woman with Largest Hat"}	1051	579
3904	4	actor	\\N	{"Theatre Audience"}	1051	507
3905	5	director	\\N	{}	1051	467
3906	6	composer	\\N	{}	1051	874
3907	7	cinematographer	\\N	{}	1051	49
3908	8	actor	\\N	{"Theatre Audience"}	1051	392
3909	9	actress	\\N	{"Theatre Audience"}	1051	580
3910	1	actress	\\N	{"The Mother"}	1052	580
3911	2	actress	\\N	{"A Daughter"}	1052	414
3912	3	actress	\\N	{"A Daughter"}	1052	575
3913	4	actress	\\N	{"The Maid"}	1052	474
3914	5	director	\\N	{}	1052	467
3915	6	cinematographer	\\N	{}	1052	49
3916	7	cinematographer	\\N	{}	1052	118
3917	8	actress	\\N	{}	1052	612
3918	10	actor	\\N	{"At the Ball","At the Soiree"}	1053	697
3919	1	actor	\\N	{"Mr. Nostrand"}	1053	684
3920	2	actress	\\N	{"Mrs. Nostrand"}	1053	503
3921	3	actress	\\N	{"The Nostrand Child"}	1053	534
3922	4	actress	\\N	{"The Nurse"}	1053	515
3923	5	director	\\N	{}	1053	467
3924	6	writer	writer	{}	1053	472
3925	7	cinematographer	\\N	{}	1053	49
3926	8	actor	\\N	{"The Doctor"}	1053	516
3927	9	actress	\\N	{}	1053	414
3928	10	actress	\\N	{Wife}	1054	580
3929	1	actor	\\N	{"Tim Noonan"}	1054	520
3930	2	actress	\\N	{"Mary Flinn"}	1054	474
3931	3	actor	\\N	{Policeman}	1054	469
3932	4	actress	\\N	{Landlady}	1054	503
3933	5	director	\\N	{}	1054	467
3934	6	cinematographer	\\N	{}	1054	49
3935	7	cinematographer	\\N	{}	1054	118
3936	8	actor	\\N	{"Factory Superintendent","In Police Station",Superintendent}	1054	393
3937	9	actor	\\N	{Husband}	1054	471
3938	1	actress	\\N	{}	1055	839
3939	2	actress	\\N	{}	1055	664
3940	3	actor	\\N	{}	1055	318
3941	4	cinematographer	\\N	{}	1055	319
3942	10	actor	\\N	{"The Stage Manager"}	1056	637
3943	1	actor	\\N	{"Paul Redmond"}	1056	469
3944	2	actress	\\N	{"Agnes Halley"}	1056	601
3945	3	actress	\\N	{"Agnes' Mother (unconfirmed)"}	1056	821
3946	4	actor	\\N	{"The Church Organist"}	1056	644
3947	5	director	\\N	{}	1056	467
3948	6	cinematographer	\\N	{}	1056	49
3949	7	cinematographer	\\N	{}	1056	118
3950	8	actor	\\N	{"The Manager"}	1056	516
3951	9	actress	\\N	{"The Housekeeper"}	1056	515
3952	1	director	\\N	{}	1057	269
3953	2	cinematographer	\\N	{}	1057	582
3954	1	director	\\N	{}	1058	269
3955	2	cinematographer	\\N	{}	1058	582
3956	1	director	\\N	{}	1059	417
3957	10	actor	\\N	{Bartender}	1060	522
3958	1	actor	\\N	{"Bob Spaulding"}	1060	469
3959	2	actor	\\N	{"Mr. Rankin"}	1060	646
3960	3	actress	\\N	{"Mrs. Rankin"}	1060	414
3961	4	actress	\\N	{"The Maid","In Factory"}	1060	474
3962	5	director	\\N	{}	1060	467
3963	6	cinematographer	\\N	{}	1060	49
3964	7	cinematographer	\\N	{}	1060	118
3965	8	actor	\\N	{"In Factory"}	1060	563
3966	9	actress	\\N	{}	1060	612
3967	10	actor	\\N	{"Man in Bar"}	1061	393
3968	1	actor	\\N	{"Arthur Rogers"}	1061	616
3969	2	actress	\\N	{"Helen Rogers"}	1061	503
3970	3	actress	\\N	{"The Rogers' Daughter"}	1061	470
3971	4	actor	\\N	{"The Rogers' Son"}	1061	613
3972	5	director	\\N	{}	1061	467
3973	6	actress	\\N	{"The Maid"}	1061	515
3974	7	actor	\\N	{"The Attorney","Man in Bar"}	1061	685
3975	8	actor	\\N	{"Old Man"}	1061	644
3976	9	actor	\\N	{"Man in Bar"}	1061	697
3977	1	director	\\N	{}	1062	486
3978	2	producer	producer	{}	1062	103
3979	10	actress	\\N	{"At Gallery"}	1063	772
3980	1	actress	\\N	{"Nellie Burt"}	1063	601
3981	2	actor	\\N	{"Billy Hart"}	1063	469
3982	3	actor	\\N	{"Hans Kessler"}	1063	393
3983	4	actor	\\N	{"Gallery Owner"}	1063	516
3984	5	director	\\N	{}	1063	467
3985	6	writer	writer	{}	1063	472
3986	7	cinematographer	\\N	{}	1063	49
3987	8	actress	\\N	{Buyer}	1063	515
3988	9	actor	\\N	{"At Gallery"}	1063	637
3989	10	actor	\\N	{}	1064	644
3990	1	actor	\\N	{"The Man with the Satchel"}	1064	522
3991	2	actress	\\N	{}	1064	612
3992	3	actor	\\N	{"In Crowd"}	1064	392
3993	4	actress	\\N	{"In Crowd"}	1064	580
3994	5	director	\\N	{}	1064	467
3995	6	cinematographer	\\N	{}	1064	49
3996	7	cinematographer	\\N	{}	1064	118
3997	8	actor	\\N	{"First Thief"}	1064	469
3998	9	actress	\\N	{"In Crowd"}	1064	474
3999	1	actor	\\N	{"The Tramp"}	1065	522
4000	2	actress	\\N	{"The Assaulted Woman"}	1065	580
4001	3	actress	\\N	{"The Nanny"}	1065	474
4002	4	actor	\\N	{"The Passerby","In Fight"}	1065	576
4003	5	director	\\N	{}	1065	467
4004	6	writer	story	{}	1065	768
4005	7	writer	writer	{}	1065	510
4006	8	cinematographer	\\N	{}	1065	49
4007	9	cinematographer	\\N	{}	1065	118
4008	10	actress	\\N	{"Museum Visitor"}	1066	534
4009	1	actor	\\N	{"The Father"}	1066	646
4010	2	actor	\\N	{"The First Brother"}	1066	469
4011	3	actor	\\N	{"The Second Brother"}	1066	520
4012	4	actress	\\N	{"Museum Visitor"}	1066	414
4013	5	director	\\N	{}	1066	467
4014	6	writer	writer	{}	1066	472
4015	7	cinematographer	\\N	{}	1066	118
4016	8	actor	\\N	{"In Bar"}	1066	563
4017	9	actor	\\N	{"Museum Visitor"}	1066	522
4018	10	actress	\\N	{"Party Guest"}	1067	580
4019	1	actress	\\N	{"Marion Francis"}	1067	503
4020	2	actor	\\N	{"Henry Lawrence"}	1067	646
4021	3	actress	\\N	{"Marion's Sister"}	1067	601
4022	4	actor	\\N	{"Party Guest"}	1067	563
4023	5	director	\\N	{}	1067	467
4024	6	cinematographer	\\N	{}	1067	49
4025	7	actress	\\N	{}	1067	612
4026	8	actor	\\N	{"Party Guest"}	1067	522
4027	9	actor	\\N	{}	1067	392
4028	10	actor	\\N	{"At Reception"}	1068	686
4029	1	actor	\\N	{"John Randolph"}	1068	688
4030	2	actress	\\N	{"Molly Randolph"}	1068	515
4031	3	actress	\\N	{"The Second Mrs. Randolph"}	1068	642
4032	4	actress	\\N	{Servant,"At Party","At Reception"}	1068	772
4033	5	director	\\N	{}	1068	467
4034	6	cinematographer	\\N	{}	1068	49
4035	7	actor	\\N	{Servant}	1068	393
4036	8	actor	\\N	{"A Friend","At Reception"}	1068	576
4037	9	actress	\\N	{}	1068	506
4038	1	director	\\N	{}	1069	486
4039	1	director	\\N	{}	1070	269
4040	2	cinematographer	\\N	{}	1070	582
4041	1	director	\\N	{}	1071	718
4042	10	actress	\\N	{"The Judge's Companion"}	1072	503
4043	1	actor	\\N	{"Taddeo Ferrari"}	1072	520
4044	2	actress	\\N	{"Giannina - Taddeo's Daughter"}	1072	601
4045	3	actor	\\N	{Sandro}	1072	576
4046	4	actor	\\N	{"Filippo - the Cripple"}	1072	646
4047	5	director	\\N	{}	1072	467
4048	6	writer	story	{}	1072	875
4049	7	writer	writer	{}	1072	476
4050	8	cinematographer	\\N	{}	1072	49
4051	9	actor	\\N	{"The Judge"}	1072	468
4052	10	actor	\\N	{"At Party Meeting"}	1073	522
4053	1	actor	\\N	{"Herr von Schmidt"}	1073	469
4054	2	actress	\\N	{"Helen Walker"}	1073	503
4055	3	actor	\\N	{"Mr. Walker"}	1073	688
4056	4	actor	\\N	{"Communist Leader"}	1073	646
4057	5	director	\\N	{}	1073	467
4058	6	cinematographer	\\N	{}	1073	49
4059	7	cinematographer	\\N	{}	1073	118
4060	8	actress	\\N	{"At Party Meeting"}	1073	414
4061	9	actress	\\N	{}	1073	612
4062	10	actor	\\N	{Child}	1074	845
4063	1	actor	\\N	{"The Father"}	1074	516
4064	2	actress	\\N	{"The Mother"}	1074	515
4065	3	actress	\\N	{}	1074	414
4066	4	actress	\\N	{Child}	1074	534
4067	5	director	\\N	{}	1074	467
4068	6	cinematographer	\\N	{}	1074	49
4069	7	actress	\\N	{Child}	1074	470
4070	8	actress	\\N	{Child}	1074	707
4071	9	actor	\\N	{"Postman (unconfirmed)"}	1074	393
4072	10	actor	\\N	{Juror}	1075	469
4073	1	actor	\\N	{"George Wallace"}	1075	684
4074	2	actress	\\N	{"George Wallace's Daughter"}	1075	470
4075	3	actor	\\N	{Juror}	1075	563
4076	4	actor	\\N	{}	1075	686
4077	5	director	\\N	{}	1075	467
4078	6	cinematographer	\\N	{}	1075	49
4079	7	cinematographer	\\N	{}	1075	118
4080	8	actor	\\N	{Juror}	1075	522
4081	9	actor	\\N	{Juror}	1075	692
4082	1	actor	\\N	{"George Washington"}	1076	876
4083	2	actor	\\N	{}	1076	775
4084	3	actor	\\N	{}	1076	489
4085	4	actor	\\N	{}	1076	584
4086	5	director	\\N	{}	1076	93
4087	6	actress	\\N	{}	1076	855
4088	7	actor	\\N	{}	1076	854
4089	10	actress	\\N	{}	1077	515
4090	1	actor	\\N	{"Tom Hearne"}	1077	469
4091	2	actress	\\N	{"Mabel Jarrett"}	1077	474
4092	3	actress	\\N	{"Winnie - Mabel's Cousin"}	1077	601
4093	4	actress	\\N	{"The Mother"}	1077	579
4094	5	director	\\N	{}	1077	467
4095	6	cinematographer	\\N	{}	1077	49
4096	7	cinematographer	\\N	{}	1077	118
4097	8	actor	\\N	{"The Father"}	1077	684
4098	9	actress	\\N	{"The Child","At Bide-A-Wee"}	1077	470
4099	1	actor	\\N	{}	1078	877
4100	2	actor	\\N	{Bully}	1078	878
4101	3	director	\\N	{}	1078	565
4102	10	actor	\\N	{Messenger}	1079	392
4103	1	actress	\\N	{"Alice Pierce"}	1079	503
4104	2	actor	\\N	{"Ben Harris - Alice's First Husband"}	1079	468
4105	3	actor	\\N	{"Alice's Employer - Her Second Husband"}	1079	471
4106	4	actor	\\N	{"The Second Burglar","In Office"}	1079	507
4107	5	director	\\N	{}	1079	467
4108	6	cinematographer	\\N	{}	1079	49
4109	7	actress	\\N	{"The Maid"}	1079	414
4110	8	actor	\\N	{}	1079	693
4111	9	actor	\\N	{}	1079	466
4112	10	actress	\\N	{Extra}	1080	580
4113	1	actor	\\N	{"Alfred Lucas"}	1080	646
4114	2	actress	\\N	{"Mrs. Alfred Lucas"}	1080	474
4115	3	actress	\\N	{"One of the Lucas Children"}	1080	470
4116	4	actress	\\N	{"One of the Lucas Children"}	1080	534
4117	5	director	\\N	{}	1080	467
4118	6	cinematographer	\\N	{}	1080	49
4119	7	actor	\\N	{Workman}	1080	563
4120	8	actor	\\N	{Bartender}	1080	522
4121	9	actress	\\N	{}	1080	579
4122	10	actress	\\N	{"A Maid"}	1081	879
4123	1	actress	\\N	{Mary}	1081	601
4124	2	actor	\\N	{"Mary's Father"}	1081	516
4125	3	actress	\\N	{"Mary's Mother"}	1081	515
4126	4	actor	\\N	{Harry}	1081	696
4127	5	director	\\N	{}	1081	467
4128	6	cinematographer	\\N	{}	1081	49
4129	7	actress	\\N	{"One of Mary's Sisters"}	1081	470
4130	8	actress	\\N	{"One of Mary's Sisters"}	1081	534
4131	9	actor	\\N	{"The Butler"}	1081	637
4132	1	director	\\N	{}	1082	486
4133	2	producer	producer	{}	1082	103
4134	10	actor	\\N	{Extra}	1083	469
4135	1	actor	\\N	{Courtier}	1083	576
4136	2	actress	\\N	{Noblewoman}	1083	503
4137	3	actor	\\N	{Duke}	1083	468
4138	4	actress	\\N	{Lady-in-Waiting}	1083	474
4139	5	director	\\N	{}	1083	467
4140	6	cinematographer	\\N	{}	1083	49
4141	7	actor	\\N	{Innkeeper}	1083	522
4142	8	actress	\\N	{Servant}	1083	414
4143	9	actress	\\N	{Servant}	1083	580
4144	10	actor	\\N	{Extra}	1084	637
4145	1	actor	\\N	{"Henry Larkin"}	1084	576
4146	2	actor	\\N	{"Randolph Churchill"}	1084	688
4147	3	actress	\\N	{"Adele Alletta"}	1084	503
4148	4	actor	\\N	{"At Larkin's"}	1084	563
4149	5	director	\\N	{}	1084	467
4150	6	cinematographer	\\N	{}	1084	49
4151	7	actor	\\N	{"At Churchill's"}	1084	685
4152	8	actor	\\N	{"At Churchill's"}	1084	686
4153	9	actor	\\N	{"At Churchill's"}	1084	522
4154	1	director	\\N	{}	1085	486
4155	2	producer	producer	{}	1085	103
4156	1	director	\\N	{}	1086	486
4157	2	producer	producer	{}	1086	103
4158	1	actor	\\N	{Harry}	1087	646
4159	2	actress	\\N	{Claire}	1087	474
4160	3	actor	\\N	{Father}	1087	522
4161	4	actor	\\N	{Boyfriend}	1087	469
4162	5	director	\\N	{}	1087	467
4163	6	cinematographer	\\N	{}	1087	49
4164	7	cinematographer	\\N	{}	1087	118
4165	8	actor	\\N	{Tramp}	1087	510
4166	10	actress	\\N	{"Actress on Stage","At Stage Door"}	1088	580
4167	1	actor	\\N	{"John Goodhusband"}	1088	510
4168	2	actress	\\N	{"Mrs. John Goodhusband"}	1088	474
4169	3	actress	\\N	{"At Stage Door"}	1088	414
4170	4	actor	\\N	{"At Stage Door"}	1088	563
4171	5	director	\\N	{}	1088	467
4172	6	cinematographer	\\N	{}	1088	49
4173	7	actress	\\N	{"Actress on Stage"}	1088	579
4174	8	actor	\\N	{"In Bar","Actor on Stage"}	1088	507
4175	9	actor	\\N	{Messenger}	1088	392
4176	1	director	\\N	{}	1089	486
4177	2	producer	producer	{}	1089	103
4178	1	actor	\\N	{}	1090	880
4179	2	director	\\N	{}	1090	881
4180	1	actor	\\N	{}	1091	425
4181	2	actress	\\N	{}	1091	426
4182	3	actor	\\N	{}	1091	427
4183	4	director	\\N	{}	1091	429
4184	5	producer	producer	{}	1091	200
4185	10	actor	\\N	{}	1092	469
4186	1	actor	\\N	{"Monsieur Borni"}	1092	696
4187	2	actor	\\N	{"Monsieur Renay"}	1092	510
4188	3	actress	\\N	{"The Woman"}	1092	508
4189	4	actor	\\N	{"The Woman's Husband"}	1092	882
4190	5	director	\\N	{}	1092	688
4191	6	writer	\\N	{}	1092	472
4192	7	producer	producer	{}	1092	467
4193	8	cinematographer	\\N	{}	1092	118
4194	9	actor	\\N	{"The Policeman"}	1092	393
4195	10	actor	\\N	{"The Waiter"}	1093	510
4196	1	actress	\\N	{}	1093	848
4197	2	actress	\\N	{"The Young Woman"}	1093	564
4198	3	actress	\\N	{"The Old Woman"}	1093	515
4199	4	actor	\\N	{"The Man"}	1093	466
4200	5	director	\\N	{}	1093	688
4201	6	writer	\\N	{}	1093	472
4202	7	producer	producer	{}	1093	467
4203	8	actor	\\N	{}	1093	599
4204	9	actress	\\N	{}	1093	699
4205	10	actor	\\N	{Kellner,Waiter}	1094	828
4206	1	actress	\\N	{"Magda Vang"}	1094	883
4207	2	actor	\\N	{"Ingenieur Knud Svane","Magda's Fiancé"}	1094	884
4208	3	actor	\\N	{"Artist Rudolf Stern","Circus Performer"}	1094	885
4209	4	actor	\\N	{"Pastor Peder Svane","Knud's Father"}	1094	886
4210	5	director	\\N	{}	1094	887
4211	6	producer	producer	{}	1094	888
4212	7	cinematographer	\\N	{}	1094	889
4213	8	actress	\\N	{"Frau Svane"}	1094	890
4214	9	actress	\\N	{"Varietésängerin Lilly d'Estrelle","Magda's Rival"}	1094	650
4215	1	actress	\\N	{Alice}	1095	621
4216	2	actor	\\N	{"Mad Hatter"}	1095	891
4217	3	director	\\N	{}	1095	98
4218	4	writer	novel "Alice's Adventures in Wonderland"	{}	1095	199
4219	10	actor	\\N	{"At Construction Site"}	1096	845
4220	1	actress	\\N	{"The Young Woman"}	1096	601
4221	2	actress	\\N	{"The Young Woman's Mother"}	1096	515
4222	3	actress	\\N	{"The Maid"}	1096	695
4223	4	actor	\\N	{"The Farmhand"}	1096	510
4224	5	director	\\N	{}	1096	688
4225	6	producer	producer	{}	1096	467
4226	7	cinematographer	\\N	{}	1096	118
4227	8	actor	\\N	{"The Young Contractor"}	1096	469
4228	9	actress	\\N	{}	1096	579
4229	1	director	\\N	{}	1097	486
4230	2	producer	producer	{}	1097	103
4231	1	writer	\\N	{}	1098	745
4232	1	director	\\N	{}	1099	892
4233	1	actor	\\N	{Baronen}	1100	893
4234	2	actor	\\N	{Degnen}	1100	894
4235	3	actor	\\N	{"Jørgen Kammertjener"}	1100	895
4236	4	actor	\\N	{"Ambrosius Stub"}	1100	896
4237	5	director	\\N	{}	1100	897
4238	6	cinematographer	\\N	{}	1100	898
4239	7	actress	\\N	{Abigael}	1100	899
4240	8	actress	\\N	{Bodil}	1100	900
4241	9	actor	\\N	{"Junker Claus"}	1100	901
4242	1	actor	\\N	{Hamlet}	1101	792
4243	2	actress	\\N	{}	1101	419
4244	3	director	\\N	{}	1101	420
4245	4	writer	play "Hamlet"	{}	1101	126
4246	1	director	\\N	{}	1102	211
4247	1	actress	\\N	{Roxie}	1103	474
4248	2	actor	\\N	{"The Artist"}	1103	576
4249	3	director	\\N	{}	1103	468
4250	10	actress	\\N	{Dansemusen}	1104	899
4251	1	actor	\\N	{"Chief of Police"}	1104	893
4252	2	actor	\\N	{Pariserdrengen}	1104	894
4253	3	actor	\\N	{Svi-Svi}	1104	895
4254	4	actor	\\N	{Røret}	1104	896
4255	5	director	\\N	{}	1104	897
4256	6	writer	\\N	{}	1104	902
4257	7	actor	\\N	{}	1104	903
4258	8	actor	\\N	{}	1104	904
4259	9	actor	\\N	{}	1104	905
4260	10	actress	\\N	{}	1105	900
4261	1	actor	\\N	{}	1105	893
4262	2	actor	\\N	{}	1105	894
4263	3	actor	\\N	{}	1105	895
4264	4	actor	\\N	{}	1105	896
4265	5	director	\\N	{}	1105	897
4266	6	actor	\\N	{}	1105	902
4267	7	actor	\\N	{}	1105	904
4268	8	actor	\\N	{}	1105	905
4269	9	actress	\\N	{}	1105	899
4270	1	actress	\\N	{Cléopâtre}	1106	906
4271	2	actress	\\N	{}	1106	907
4272	3	actress	\\N	{"Le messager"}	1106	864
4273	4	actress	\\N	{"La danseuse"}	1106	908
4274	5	director	co-director	{}	1106	909
4275	6	director	co-director	{}	1106	164
4276	7	writer	play	{}	1106	126
4277	8	production_designer	\\N	{}	1106	910
4278	10	actor	\\N	{"Man in Gambling Hall"}	1107	466
4279	1	actress	\\N	{"Priscilla - The Country Girl"}	1107	601
4280	2	actor	\\N	{"The Peddler"}	1107	510
4281	3	actor	\\N	{"The Man of the House"}	1107	516
4282	4	actress	\\N	{"The Lady of the House"}	1107	515
4283	5	director	\\N	{}	1107	467
4284	6	writer	\\N	{}	1107	472
4285	7	cinematographer	\\N	{}	1107	49
4286	8	actor	\\N	{"Second Man"}	1107	685
4287	9	actor	\\N	{"Man in Gambling Hall"}	1107	697
4288	1	actress	\\N	{}	1108	465
4289	2	actor	\\N	{}	1108	519
4290	3	director	\\N	{}	1108	858
4291	10	actress	\\N	{"The Maid"}	1109	515
4292	1	actor	\\N	{"George Forrester"}	1109	516
4293	2	actress	\\N	{"George Forrester's Daughter - as a Child"}	1109	470
4294	3	actress	\\N	{"George Forrester's Daughter - as an Adult"}	1109	601
4295	4	actress	\\N	{"George Forrester's Sweetheart"}	1109	503
4296	5	director	\\N	{}	1109	467
4297	6	writer	\\N	{}	1109	472
4298	7	cinematographer	\\N	{}	1109	49
4299	8	actor	\\N	{"George Forrester's Son-in-Law"}	1109	863
4300	9	actor	\\N	{"George Forrester's Son-in-Law's Companion"}	1109	911
4301	10	actor	\\N	{"The Preacher"}	1110	686
4302	1	actor	\\N	{"Gilbert Allen"}	1110	516
4303	2	actress	\\N	{"Grace Allen - Gilbert's Daughter"}	1110	683
4304	3	actor	\\N	{"Wilson Breen - the Daughter's Fiance"}	1110	863
4305	4	actress	\\N	{"Mrs. Allen"}	1110	699
4306	5	director	\\N	{}	1110	467
4307	6	writer	\\N	{}	1110	472
4308	7	cinematographer	\\N	{}	1110	49
4309	8	actress	\\N	{"The Maid of Honor"}	1110	575
4310	9	actor	\\N	{"The Best Man"}	1110	466
4311	1	actress	\\N	{}	1111	912
4312	2	actor	\\N	{}	1111	913
4313	3	actor	\\N	{}	1111	914
4314	4	actor	\\N	{}	1111	915
4315	5	director	\\N	{}	1111	916
4316	6	writer	\\N	{}	1111	745
4317	7	writer	short story "L'auberge rouge"	{}	1111	862
4318	1	actor	\\N	{"A Dying Miner"}	1112	203
4319	2	actor	\\N	{"Old miner"}	1112	847
4320	3	actor	\\N	{"First Prospector"}	1112	917
4321	4	actor	\\N	{"Second Prospector"}	1112	675
4322	5	cinematographer	\\N	{}	1112	758
4323	1	actor	\\N	{"Andy Carson"}	1113	203
4324	2	actress	\\N	{"Gladys Pierce"}	1113	918
4325	3	actor	\\N	{"Jack Brinsley"}	1113	919
4326	4	actor	\\N	{}	1113	920
4327	5	actor	\\N	{}	1113	676
4328	6	actor	\\N	{}	1113	921
4329	7	actress	\\N	{}	1113	922
4330	8	actor	\\N	{}	1113	923
4331	9	actor	\\N	{}	1113	924
4332	1	actor	\\N	{"The Bad Man"}	1114	203
4333	2	actor	\\N	{}	1114	675
4334	3	actor	\\N	{"The Sheriff"}	1114	676
4335	4	actor	\\N	{}	1114	679
4336	5	actor	\\N	{}	1114	917
4337	6	actor	\\N	{}	1114	677
4338	7	actor	\\N	{}	1114	678
4339	8	actor	\\N	{}	1114	847
4340	1	actor	\\N	{}	1115	925
4341	2	director	\\N	{}	1115	71
4342	3	cinematographer	\\N	{}	1115	926
4343	1	director	\\N	{}	1116	266
4344	1	actor	\\N	{}	1117	203
4345	10	actor	\\N	{"The Butler"}	1118	619
4346	1	actor	\\N	{"C.W. Bourne - the Banker"}	1118	686
4347	2	actress	\\N	{"Alice Bourne"}	1118	683
4348	3	actress	\\N	{"Martha Bourne - the Banker's Older Daughter"}	1118	575
4349	4	actor	\\N	{"1st Criminal"}	1118	393
4350	5	director	\\N	{}	1118	467
4351	6	writer	\\N	{}	1118	927
4352	7	cinematographer	\\N	{}	1118	49
4353	8	actor	\\N	{"2nd Criminal"}	1118	616
4354	9	actor	\\N	{"3rd Criminal"}	1118	466
4355	1	actor	\\N	{"Curt, the Sheriff"}	1119	203
4356	2	actress	\\N	{"Nan Conners"}	1119	918
4357	3	actor	\\N	{"Mr. Conners","The Bearded Bandit"}	1119	924
4358	4	actor	\\N	{}	1119	921
4359	5	actor	\\N	{}	1119	676
4360	1	director	\\N	{}	1120	928
4361	2	producer	producer	{}	1120	103
4362	1	director	\\N	{}	1121	82
4363	2	director	\\N	{}	1121	486
4364	10	actor	\\N	{Sugar}	1122	929
4365	1	actress	\\N	{Mytyl}	1122	930
4366	2	actress	\\N	{Tytyl}	1122	931
4367	3	actress	\\N	{"Mummy Tyl"}	1122	932
4368	4	actor	\\N	{"Daddy Tyl"}	1122	933
4369	5	writer	play "L'Oiseau bleu"	{}	1122	934
4370	6	actor	\\N	{Tylo}	1122	935
4371	7	actress	\\N	{Tylette}	1122	936
4372	8	actress	\\N	{"The Fairy"}	1122	937
4373	9	actor	\\N	{Bread}	1122	938
4374	1	actor	\\N	{}	1123	425
4375	2	actor	\\N	{}	1123	427
4376	3	actor	\\N	{}	1123	939
4377	4	director	\\N	{}	1123	429
4378	5	producer	producer	{}	1123	200
4379	10	actor	\\N	{"Indian Chief"}	1124	940
4380	1	actress	\\N	{"Little Indian Girl"}	1124	470
4381	2	actor	\\N	{"Joe Stevens"}	1124	510
4382	3	actress	\\N	{"Mrs. Joe Stevens"}	1124	414
4383	4	actress	\\N	{"Victim of Massacre"}	1124	612
4384	5	director	\\N	{}	1124	467
4385	6	writer	\\N	{}	1124	941
4386	7	cinematographer	\\N	{}	1124	49
4387	8	actress	\\N	{Indian}	1124	515
4388	9	actor	\\N	{Townsman}	1124	685
4389	1	actress	\\N	{}	1125	942
4390	1	actor	\\N	{"Broncho Billy"}	1126	203
4391	2	actress	\\N	{"Millie Merrill"}	1126	943
4392	3	actor	\\N	{}	1126	917
4393	4	actor	\\N	{}	1126	678
4394	1	director	\\N	{}	1127	486
4395	2	producer	producer	{}	1127	103
4396	1	self	\\N	{Self}	1128	73
4397	2	self	\\N	{Self}	1128	944
4398	3	director	\\N	{}	1128	945
4399	1	director	\\N	{}	1129	486
4400	1	director	\\N	{}	1130	37
4401	1	director	\\N	{}	1131	486
4402	10	actor	\\N	{}	1132	770
4403	1	actor	\\N	{"The Lord"}	1132	616
4404	2	actress	\\N	{"Regina - the Lord's Wife"}	1132	503
4405	3	actor	\\N	{"The Lord's Cousin"}	1132	946
4406	4	actress	\\N	{"The Messenger"}	1132	601
4407	5	director	\\N	{}	1132	467
4408	6	writer	\\N	{}	1132	476
4409	7	cinematographer	\\N	{}	1132	49
4410	8	actor	\\N	{"The Guard","A Soldier"}	1132	619
4730	5	director	\\N	{}	1189	467
4411	9	actress	\\N	{"A Lady of the Court"}	1132	699
4412	10	actor	\\N	{Backstage}	1133	882
4413	1	actress	\\N	{"Edith Lawson"}	1133	508
4414	2	actor	\\N	{"Billy Harvey"}	1133	616
4415	3	actor	\\N	{"Amos Holden"}	1133	684
4416	4	actress	\\N	{"At Show"}	1133	515
4417	5	director	\\N	{}	1133	467
4418	6	cinematographer	\\N	{}	1133	49
4419	7	actor	\\N	{"At Show",Backstage}	1133	697
4420	8	actress	\\N	{"At Show"}	1133	470
4421	9	actor	\\N	{"At Show","Among Performers"}	1133	637
4422	1	director	\\N	{}	1134	211
4423	2	writer	\\N	{}	1134	947
4424	1	actress	\\N	{Carminella}	1135	948
4425	2	actor	\\N	{"Don Jose"}	1135	949
4426	3	actress	\\N	{}	1135	465
4427	4	director	\\N	{}	1135	858
4428	1	actor	\\N	{Chantecler}	1137	950
4429	2	actor	\\N	{}	1137	951
4430	3	actress	\\N	{}	1137	952
4431	4	actor	\\N	{}	1137	953
4432	5	director	\\N	{}	1137	954
4433	6	cinematographer	\\N	{}	1137	955
4434	1	director	\\N	{}	1138	486
4435	2	producer	producer	{}	1138	103
4436	10	actor	\\N	{"The Old Man"}	1139	644
4437	1	actress	\\N	{Ruth}	1139	575
4438	2	actress	\\N	{"Ruth's Mother"}	1139	515
4439	3	actor	\\N	{"The Proprietor"}	1139	599
4440	4	actor	\\N	{"The Proprietor's Son"}	1139	863
4441	5	director	\\N	{}	1139	467
4442	6	writer	\\N	{}	1139	472
4443	7	producer	producer	{}	1139	98
4444	8	cinematographer	\\N	{}	1139	49
4445	9	cinematographer	\\N	{}	1139	118
4446	10	actress	\\N	{"The Old Man's Daughter"}	1140	564
4447	1	actor	\\N	{"Mr. Paulton"}	1140	516
4448	2	actress	\\N	{"Alice Paulton"}	1140	508
4449	3	actor	\\N	{"Father's Choice"}	1140	619
4450	4	actor	\\N	{"Alice's Husband"}	1140	510
4451	5	director	\\N	{}	1140	467
4452	6	writer	\\N	{}	1140	956
4453	7	cinematographer	\\N	{}	1140	49
4454	8	actress	\\N	{"The Paulton Child"}	1140	470
4455	9	actor	\\N	{"The Old Man"}	1140	644
4456	10	actor	\\N	{"The Farmer"}	1141	581
4457	1	actress	\\N	{"Mrs. Thurston - the Widow"}	1141	957
4458	2	actor	\\N	{"Raymond Hartley"}	1141	863
4459	3	actress	\\N	{Grace}	1141	601
4460	4	actor	\\N	{"The Other Man"}	1141	946
4461	5	director	\\N	{}	1141	467
4462	6	writer	\\N	{}	1141	472
4463	7	cinematographer	\\N	{}	1141	49
4464	8	cinematographer	\\N	{}	1141	118
4465	9	actor	\\N	{"The Butler",Passerby}	1141	685
4466	10	actor	\\N	{"The Lawyer"}	1142	958
4467	1	actor	\\N	{"John Walton"}	1142	693
4468	2	actress	\\N	{"Mrs. John Walton"}	1142	683
4469	3	actress	\\N	{"The Walton Child"}	1142	470
4470	4	actress	\\N	{"The Designing Woman"}	1142	523
4471	5	director	\\N	{}	1142	467
4472	6	writer	\\N	{}	1142	941
4473	7	cinematographer	\\N	{}	1142	49
4474	8	actress	\\N	{"A Friend of the Family"}	1142	414
4475	9	actress	\\N	{"A Friend of the Family"}	1142	959
4476	1	actor	\\N	{}	1143	203
4477	2	actress	\\N	{}	1143	943
4478	3	actor	\\N	{}	1143	675
4479	4	actor	\\N	{}	1143	921
4480	5	actor	\\N	{}	1143	924
4481	6	actor	\\N	{}	1143	923
4482	7	actor	\\N	{}	1143	676
4483	8	actor	\\N	{}	1143	960
4484	9	actor	\\N	{}	1143	847
4485	1	actor	\\N	{Clerk}	1144	961
4486	10	actress	\\N	{"The Old Woman"}	1145	515
4487	1	actor	\\N	{"The Father"}	1145	616
4488	2	actress	\\N	{"Elsa - the Mother"}	1145	503
4489	3	actress	\\N	{"The Child"}	1145	707
4490	4	actor	\\N	{"The Duke"}	1145	469
4491	5	director	\\N	{}	1145	467
4492	6	writer	\\N	{}	1145	472
4493	7	cinematographer	\\N	{}	1145	49
4494	8	cinematographer	\\N	{}	1145	118
4495	9	actress	\\N	{}	1145	414
4496	1	actor	\\N	{}	1146	425
4497	2	actress	\\N	{}	1146	426
4498	3	actor	\\N	{}	1146	424
4499	4	actress	\\N	{}	1146	962
4500	5	director	\\N	{}	1146	561
4501	6	producer	producer	{}	1146	200
4502	7	actress	\\N	{}	1146	963
4503	1	director	\\N	{}	1147	718
4504	1	actor	\\N	{}	1148	964
4505	1	actor	\\N	{}	1149	487
4506	2	actress	\\N	{}	1149	965
4507	3	actor	\\N	{}	1149	565
4508	10	actor	\\N	{Bystander}	1150	392
4509	1	actress	\\N	{"The Dance Hall Girl"}	1150	414
4510	2	actor	\\N	{"The False Evangelist"}	1150	616
4511	3	actor	\\N	{"The Old Man"}	1150	644
4512	4	actor	\\N	{"The Minister"}	1150	393
4513	5	director	\\N	{}	1150	467
4514	6	writer	\\N	{}	1150	472
4515	7	cinematographer	\\N	{}	1150	49
4516	8	actress	\\N	{"In Doorway"}	1150	515
4517	9	actor	\\N	{Bystander}	1150	697
4518	1	director	\\N	{}	1151	85
4519	1	director	\\N	{}	1153	486
4520	1	actress	\\N	{"Florabel Thurston"}	1154	508
4521	2	actor	\\N	{"Ben Lawrence"}	1154	576
4522	3	actress	\\N	{"Flower Girl"}	1154	966
4523	4	actor	\\N	{"One of Ben's Friends"}	1154	882
4524	5	director	\\N	{}	1154	467
4525	6	actor	\\N	{"One of Ben's Friends"}	1154	599
4526	7	actor	\\N	{"A Servant"}	1154	967
4527	1	actor	\\N	{"John Alden"}	1155	425
4528	2	actress	\\N	{}	1155	426
4529	3	actor	\\N	{}	1155	424
4530	4	actor	\\N	{}	1155	427
4531	5	director	\\N	{}	1155	561
4532	6	writer	poem	{}	1155	220
4533	7	producer	producer	{}	1155	200
4534	8	actress	\\N	{}	1155	962
4535	1	actor	\\N	{"Tom Ripley, a Cowboy"}	1156	203
4536	2	actress	\\N	{Lightfeather}	1156	943
4537	3	actor	\\N	{"The Bartender"}	1156	676
4538	4	actor	\\N	{}	1156	678
4539	5	actor	\\N	{}	1156	675
4540	6	actor	\\N	{}	1156	968
4541	7	actor	\\N	{}	1156	677
4542	1	actor	\\N	{"Pete the Coyote"}	1157	203
4543	2	actress	\\N	{"Nellie Blair"}	1157	918
4544	3	actor	\\N	{}	1157	921
4545	4	actor	\\N	{"Charlie Martin"}	1157	923
4546	5	actor	\\N	{}	1157	924
4547	1	actor	\\N	{"Jesse Farson"}	1158	203
4548	2	actress	\\N	{Jennie}	1158	943
4549	3	actor	\\N	{}	1158	675
4550	4	actress	\\N	{}	1158	969
4551	10	actor	\\N	{}	1159	678
4552	1	actor	\\N	{"Frank Morrison"}	1159	203
4553	2	actress	\\N	{"Faro Nan"}	1159	943
4554	3	actor	\\N	{"Jess Gibbs"}	1159	919
4555	4	actor	\\N	{"Will Morrison"}	1159	917
4556	5	actor	\\N	{}	1159	924
4557	6	actor	\\N	{}	1159	677
4558	7	actor	\\N	{}	1159	675
4559	8	actor	\\N	{}	1159	676
4560	9	actor	\\N	{}	1159	921
4561	10	actor	\\N	{}	1160	968
4562	1	actor	\\N	{}	1160	203
4563	2	actress	\\N	{"The Cowpuncher's Ward, as a Child"}	1160	970
4564	3	actress	\\N	{"The Cowpuncher's Ward, as an Adult"}	1160	918
4565	4	actor	\\N	{}	1160	676
4566	5	actor	\\N	{}	1160	675
4567	6	actress	\\N	{}	1160	943
4568	7	actor	\\N	{}	1160	917
4569	8	actress	\\N	{}	1160	969
4570	9	actor	\\N	{}	1160	847
4571	1	actor	\\N	{Cretinetti}	1161	226
4572	1	actress	\\N	{}	1162	971
4573	2	actress	\\N	{}	1162	972
4574	3	actor	\\N	{}	1162	973
4575	4	actress	\\N	{}	1162	974
4576	5	director	co-director	{}	1162	810
4577	6	director	co-director	{}	1162	975
4578	7	writer	\\N	{}	1162	745
4579	1	actor	\\N	{"Cyclone Pete"}	1163	925
4580	2	actress	\\N	{"Cyclone Pete's Bride"}	1163	512
4581	3	actor	\\N	{}	1163	976
4582	4	director	\\N	{}	1163	977
4583	5	producer	producer	{}	1163	71
4584	6	cinematographer	\\N	{}	1163	926
4585	10	producer	producer	{}	1164	978
4586	1	actress	\\N	{"Marguerite Gauthier"}	1164	138
4587	2	actor	\\N	{"Armand Duval"}	1164	979
4588	3	actor	\\N	{Sadoul}	1164	980
4589	4	actor	\\N	{}	1164	981
4590	5	director	\\N	{}	1164	498
4591	6	director	\\N	{}	1164	982
4592	7	director	\\N	{}	1164	983
4593	8	writer	novel and play "La dame aux camélias"	{}	1164	382
4594	9	producer	producer	{}	1164	984
4595	10	actor	\\N	{"In Music Hall"}	1165	882
4596	1	actress	\\N	{Bella}	1165	508
4597	2	actor	\\N	{"Howard Raymond"}	1165	576
4598	3	actress	\\N	{}	1165	414
4599	4	actor	\\N	{"In Music Hall"}	1165	697
4600	5	director	\\N	{}	1165	467
4601	6	producer	producer	{}	1165	98
4602	7	cinematographer	\\N	{}	1165	49
4603	8	actor	\\N	{}	1165	522
4604	9	actor	\\N	{"In Music Hall"}	1165	637
4605	1	actor	\\N	{}	1166	425
4606	2	actress	\\N	{}	1166	426
4607	3	actor	\\N	{}	1166	427
4608	4	director	\\N	{}	1166	429
4609	5	producer	producer	{}	1166	200
4610	1	actor	\\N	{"Bill Simpson"}	1167	203
4611	2	actress	\\N	{Olive}	1167	985
4612	3	actor	\\N	{Pedro}	1167	919
4613	1	director	\\N	{}	1168	718
4614	1	actor	\\N	{"The New Sheriff"}	1169	203
4615	2	actor	\\N	{"Black Bart"}	1169	676
4616	3	actress	\\N	{}	1169	943
4617	4	actor	\\N	{}	1169	917
4618	1	actor	\\N	{}	1170	986
4619	2	actor	\\N	{}	1170	987
4620	3	actor	\\N	{}	1170	988
4621	4	director	\\N	{}	1170	989
4622	1	actress	\\N	{"The Dixie Mother"}	1171	965
4623	2	actor	\\N	{"The Husband"}	1171	489
4624	3	actor	\\N	{"The Son"}	1171	990
4625	4	actress	\\N	{}	1171	556
4626	5	director	\\N	{}	1171	565
4627	6	actress	\\N	{}	1171	942
4628	1	actress	\\N	{"Heléne Murani - Actress"}	1172	991
4629	2	actress	\\N	{Renée}	1172	992
4630	3	actor	\\N	{"Claude Bernard - Painter"}	1172	993
4631	4	actor	\\N	{"Josef Cziky - Violin Virtuoso"}	1172	994
4632	5	writer	\\N	{}	1172	995
4633	1	actress	\\N	{}	1173	996
4634	2	actor	\\N	{}	1173	551
4635	3	director	\\N	{}	1173	266
4636	4	director	\\N	{}	1173	552
4637	5	writer	play	{}	1173	997
4638	6	cinematographer	\\N	{}	1173	694
4639	1	actor	\\N	{"Dorian Gray"}	1174	998
4640	2	actress	\\N	{}	1174	992
4641	3	actor	\\N	{}	1174	993
4642	4	actor	\\N	{}	1174	999
4643	5	director	\\N	{}	1174	1000
4644	6	writer	novel "The Picture of Dorian Gray"	{}	1174	1001
4645	7	cinematographer	\\N	{}	1174	734
4646	1	actress	\\N	{Dorothy}	1175	1002
4647	2	director	\\N	{}	1175	561
4648	3	writer	novels "The Wonderful Wizard of Oz", "The Marvelous Land of Oz" and "Dorothy and the Wizard in Oz"	{}	1175	557
4649	4	producer	producer	{}	1175	200
4650	10	actress	\\N	{}	1176	1003
4651	1	actor	\\N	{"The Duke"}	1176	882
4652	2	actress	\\N	{"Flametta - the Duke's Daughter"}	1176	503
4653	3	actor	\\N	{Raoul}	1176	576
4654	4	actress	\\N	{}	1176	414
4655	5	director	\\N	{}	1176	467
4656	6	cinematographer	\\N	{}	1176	49
4657	7	actress	\\N	{"One of Fiametta's Attendants"}	1176	515
4658	8	actress	\\N	{}	1176	1004
4659	9	actor	\\N	{}	1176	697
4660	1	actor	\\N	{"The Half-Breed"}	1177	203
4661	2	actor	\\N	{}	1177	917
4662	3	actor	\\N	{}	1177	675
4663	1	actress	\\N	{"Lea Petrovitsch"}	1178	1005
4664	2	actor	\\N	{General}	1178	1000
4665	1	actress	\\N	{}	1179	650
4666	2	actor	\\N	{}	1179	1006
4667	3	director	\\N	{}	1179	1007
4668	10	actor	\\N	{"On Street"}	1180	946
4669	1	actor	\\N	{"Mr. Wilkens"}	1180	510
4670	2	actress	\\N	{"Mrs. Wilkens"}	1180	683
4671	3	actress	\\N	{"Mrs. Wilkens' Mother"}	1180	515
4672	4	actress	\\N	{"Violet, the Other Woman"}	1180	508
4673	5	director	\\N	{}	1180	688
4674	6	producer	producer	{}	1180	467
4675	7	cinematographer	\\N	{}	1180	118
4676	8	actor	\\N	{"At Club"}	1180	685
4677	9	actor	\\N	{"At Club"}	1180	466
4678	1	director	\\N	{}	1181	82
4679	2	director	\\N	{}	1181	486
4680	1	actor	\\N	{}	1182	487
4681	2	actress	\\N	{Elektra}	1182	465
4682	3	director	\\N	{}	1182	93
4683	1	actress	\\N	{Hustruen}	1183	992
4684	2	actor	\\N	{Laegen}	1183	993
4685	3	actor	\\N	{Gilbert}	1183	994
4686	4	writer	\\N	{}	1183	1008
4687	10	actor	\\N	{"Bjørn Olufsen"}	1184	828
4688	1	actress	\\N	{Agnete}	1184	1009
4689	2	actress	\\N	{"Elisabeth Munk"}	1184	748
4690	3	actor	\\N	{"King Christian IV"}	1184	652
4691	4	actor	\\N	{"Poul Flemming"}	1184	1010
4692	5	actor	\\N	{"Henrik Rud"}	1184	1011
4693	6	actor	\\N	{Mogens}	1184	1012
4694	7	actor	\\N	{"Erik Walkendorff"}	1184	1013
4695	8	actress	\\N	{Karen}	1184	1014
4696	9	actor	\\N	{"Albert Ebbesen"}	1184	781
4697	10	actress	\\N	{"Elisabeth Munk"}	1185	899
4698	1	actor	\\N	{"Christian IV"}	1185	893
4699	2	actor	\\N	{Elverkongen}	1185	894
4700	3	actor	\\N	{Bjørn}	1185	895
4701	4	actor	\\N	{"Poul Fleming"}	1185	896
4702	5	director	\\N	{}	1185	897
4703	6	writer	play	{}	1185	1015
4704	7	actress	\\N	{}	1185	1016
4705	8	actress	\\N	{Karen}	1185	1017
4706	9	actor	\\N	{"Albert Ebbesen"}	1185	904
4707	10	actress	\\N	{"Rachel, la sorcière"}	1186	1018
4708	1	actor	\\N	{}	1186	1019
4709	2	actor	\\N	{"Sir Tyrrel"}	1186	1020
4710	3	actress	\\N	{"La reine Elisabeth"}	1186	1021
4711	4	actress	\\N	{"Le prince de Galles"}	1186	1022
4712	5	director	\\N	{}	1186	909
4713	6	writer	play	{}	1186	1023
4714	7	writer	play	{}	1186	126
4715	8	writer	screenplay	{}	1186	1024
4716	9	actor	\\N	{"Le roi Edouard IV"}	1186	1025
4717	1	actor	\\N	{}	1187	769
4718	2	actress	\\N	{}	1187	465
4719	3	director	\\N	{}	1187	98
4720	4	writer	\\N	{}	1187	858
4721	1	actor	\\N	{"Jack Sinclair"}	1188	990
4722	2	actress	\\N	{"Lillian - the Engineer's Daughter"}	1188	1026
4723	3	actor	\\N	{}	1188	1027
4724	4	director	\\N	{}	1188	1028
4725	10	actor	\\N	{"In Store","Member of Dramatic Club"}	1189	882
4726	1	actor	\\N	{"Mr. Thayer"}	1189	516
4727	2	actress	\\N	{"Mrs. Thayer"}	1189	515
4728	3	actor	\\N	{"Arthur Wilberforce"}	1189	697
4729	4	actress	\\N	{"The Girl"}	1189	601
4731	6	cinematographer	\\N	{}	1189	49
4732	7	actress	\\N	{"The Child"}	1189	470
4733	8	actress	\\N	{"Member of Dramatic Club"}	1189	414
4734	9	actress	\\N	{}	1189	508
4735	1	actor	\\N	{}	1190	1029
4736	2	director	\\N	{}	1190	417
4737	10	actress	\\N	{Student}	1191	761
4738	1	actor	\\N	{"The Old Teacher"}	1191	644
4739	2	actress	\\N	{"The Old Teacher's Wife"}	1191	515
4740	3	actor	\\N	{"The County Examiner"}	1191	882
4741	4	actor	\\N	{"The New Teacher","School Board Member"}	1191	685
4742	5	director	\\N	{}	1191	467
4743	6	writer	\\N	{}	1191	472
4744	7	cinematographer	\\N	{}	1191	49
4745	8	actor	\\N	{"School Board Member"}	1191	686
4746	9	actor	\\N	{"School Board Member"}	1191	697
4747	1	director	\\N	{}	1192	85
4748	1	director	\\N	{}	1193	211
4749	1	director	\\N	{}	1194	85
4750	10	actor	\\N	{Bartender}	1195	516
4751	1	actor	\\N	{"Mr. Bradford - Ralph's Father"}	1195	686
4752	2	actor	\\N	{"Ralph Bradford"}	1195	616
4753	3	actor	\\N	{"Ralph Bradford's Son"}	1195	946
4754	4	actress	\\N	{"Mira Bradford - Ralph's Wife - The Artist's Model"}	1195	957
4755	5	director	\\N	{}	1195	467
4756	6	writer	\\N	{}	1195	472
4757	7	cinematographer	\\N	{}	1195	49
4758	8	actor	\\N	{"The Artist"}	1195	882
4759	9	actor	\\N	{"The Butler","At First Club"}	1195	599
4760	10	actor	\\N	{Bystander}	1196	599
4761	1	actor	\\N	{"John Dobbs [Adonese]"}	1196	469
4762	2	actor	\\N	{"Zeke [Faithful]"}	1196	510
4763	3	actress	\\N	{"John's Sweetheart"}	1196	508
4764	4	actress	\\N	{"John's Sweetheart's Mother"}	1196	515
4765	5	director	\\N	{}	1196	467
4766	6	writer	\\N	{}	1196	476
4767	7	cinematographer	\\N	{}	1196	49
4768	8	cinematographer	\\N	{}	1196	118
4769	9	actor	\\N	{Neighbor}	1196	882
4770	1	actress	\\N	{}	1197	465
4771	2	actor	\\N	{}	1197	519
4772	3	director	\\N	{}	1197	98
4773	4	writer	\\N	{}	1197	858
4774	1	director	\\N	{}	1198	211
4775	1	actor	\\N	{}	1200	1030
4776	2	actress	\\N	{}	1200	421
4777	3	actor	\\N	{}	1200	1031
4778	4	actor	\\N	{}	1200	1032
4779	5	director	\\N	{}	1200	909
4780	6	director	\\N	{}	1200	1033
4781	7	composer	\\N	{}	1200	1034
4782	1	director	\\N	{}	1201	211
4783	1	actor	\\N	{"Robert Graham"}	1202	203
4784	1	actress	\\N	{}	1203	1035
4785	2	actress	\\N	{}	1203	841
4786	3	actress	\\N	{}	1203	842
4787	4	actor	\\N	{}	1203	810
4788	5	writer	\\N	{}	1203	811
4789	6	writer	\\N	{}	1203	745
4790	7	actress	\\N	{}	1203	844
4791	1	actress	\\N	{}	1204	1035
4792	2	actor	\\N	{}	1204	1036
4793	3	actor	\\N	{}	1204	394
4794	4	director	\\N	{}	1204	1037
4795	5	director	\\N	{}	1204	811
4796	6	writer	\\N	{}	1204	745
4797	10	actor	\\N	{}	1205	468
4798	1	actor	\\N	{"Jim - 1st Woodsman"}	1205	684
4799	2	actress	\\N	{"Ruth - Jim's Sweetheart"}	1205	506
4800	3	actor	\\N	{"John - 2nd Woodsman"}	1205	469
4801	4	actress	\\N	{"The Child"}	1205	707
4802	5	director	\\N	{}	1205	467
4803	6	writer	\\N	{}	1205	472
4804	7	cinematographer	\\N	{}	1205	49
4805	8	cinematographer	\\N	{}	1205	118
4806	9	actor	\\N	{"Another Woodsman"}	1205	393
4807	10	actor	\\N	{"A Doctor"}	1206	685
4808	1	actor	\\N	{"John Rogers"}	1206	863
4809	2	actress	\\N	{Belle}	1206	957
4810	3	actress	\\N	{"The Older Sister"}	1206	683
4811	4	actor	\\N	{"The Father"}	1206	686
4812	5	director	\\N	{}	1206	467
4813	6	writer	\\N	{}	1206	472
4814	7	cinematographer	\\N	{}	1206	49
4815	8	actor	\\N	{"Horace Dooley"}	1206	946
4816	9	actress	\\N	{}	1206	506
4817	1	director	\\N	{}	1207	211
4818	1	director	\\N	{}	1208	211
4819	1	actor	\\N	{"Frank Wendell"}	1209	203
4820	2	actress	\\N	{}	1209	969
4821	3	actor	\\N	{}	1209	676
4822	1	actress	\\N	{}	1210	465
4823	2	actor	\\N	{}	1210	519
4824	3	actress	\\N	{}	1210	556
4825	4	director	\\N	{}	1210	98
4826	1	actor	\\N	{"Deputy Marshal Charles Wentworth"}	1211	203
4827	2	actor	\\N	{}	1211	676
4828	3	actor	\\N	{}	1211	675
4829	1	actress	\\N	{Elizabeth}	1212	465
4830	2	actor	\\N	{"The Monster"}	1212	519
4831	3	actor	\\N	{Frankenstein}	1212	1038
4832	4	director	\\N	{}	1212	544
4833	5	writer	novel "Frankenstein"	{}	1212	1039
4834	6	producer	producer	{}	1212	10
4835	7	composer	\\N	{}	1212	1040
4836	8	cinematographer	\\N	{}	1212	1041
4837	1	director	\\N	{}	1213	82
4838	2	director	\\N	{}	1213	486
4839	1	director	\\N	{}	1214	486
4840	2	producer	producer	{}	1214	103
4841	1	actress	\\N	{"The Editor's Wife"}	1215	948
4842	2	actor	\\N	{}	1215	769
4843	3	actress	\\N	{}	1215	465
4844	4	actor	\\N	{}	1215	1042
4845	5	director	\\N	{}	1215	544
4846	10	actress	\\N	{"Woman in Farewell Crowd"}	1216	959
4847	1	actress	\\N	{"The Confederate Mother"}	1216	515
4848	2	actor	\\N	{"John - the Confederate Son"}	1216	466
4849	3	actress	\\N	{"The Union Mother"}	1216	612
4850	4	actor	\\N	{"John - the Union Son"}	1216	693
4851	5	director	\\N	{}	1216	467
4852	6	writer	\\N	{}	1216	1043
4853	7	cinematographer	\\N	{}	1216	49
4854	8	actress	\\N	{"The Confederate Son's Fiancée"}	1216	575
4855	9	actress	\\N	{"The Union Son's Fiancée"}	1216	1044
4856	1	actor	\\N	{Halsted}	1217	203
4857	2	actress	\\N	{"Alice Thomas"}	1217	943
4858	3	actor	\\N	{"Albert Thomas - Alice's Father"}	1217	917
4859	4	actor	\\N	{}	1217	920
4860	5	actor	\\N	{}	1217	919
4861	1	actor	\\N	{}	1218	994
4862	2	actress	\\N	{}	1218	1045
4863	3	actor	\\N	{}	1218	1046
4864	4	actress	\\N	{"Professor's Wife"}	1218	1047
4865	5	cinematographer	\\N	{}	1218	734
4866	6	actor	\\N	{Willer}	1218	993
4867	1	actor	\\N	{}	1219	687
4868	10	actor	\\N	{}	1220	1048
4869	1	actor	\\N	{"Ross White"}	1220	203
4870	2	actress	\\N	{"Minnie Harding"}	1220	943
4871	3	actor	\\N	{"A Cowboy"}	1220	676
4872	4	actor	\\N	{}	1220	675
4873	5	actor	\\N	{}	1220	677
4874	6	actor	\\N	{}	1220	917
4875	7	actor	\\N	{}	1220	847
4876	8	actor	\\N	{}	1220	1049
4877	9	actor	\\N	{}	1220	968
4878	1	actress	\\N	{"The Girl from Arizona"}	1221	1050
4879	2	actor	\\N	{}	1221	1051
4880	3	actor	\\N	{}	1221	1052
4881	4	actor	\\N	{}	1221	1053
4882	5	director	\\N	{}	1221	1054
4883	6	director	\\N	{}	1221	1055
4884	7	director	\\N	{}	1221	881
4885	8	actress	\\N	{}	1221	1056
4886	1	actor	\\N	{"Jack Hartley"}	1222	203
4887	2	actress	\\N	{"Nellie Monroe"}	1222	943
4888	10	actress	\\N	{"Tom's Mistress"}	1223	1057
4889	1	actress	\\N	{"Mabel Darrell - the Heiress"}	1223	503
4890	2	actor	\\N	{"Tom Darrell - Mabel's Husband"}	1223	599
4891	3	actress	\\N	{"The Darrell Child"}	1223	470
4892	4	actress	\\N	{Ruth}	1223	414
4893	5	director	\\N	{}	1223	467
4894	6	writer	\\N	{}	1223	472
4895	7	cinematographer	\\N	{}	1223	49
4896	8	actress	\\N	{"Ruth's Mother"}	1223	515
4897	9	actor	\\N	{Steve}	1223	510
4898	10	actress	\\N	{"A Friend"}	1224	761
4899	1	actress	\\N	{Mazie}	1224	601
4900	2	actress	\\N	{"The Governess"}	1224	515
4901	3	actress	\\N	{Nellie}	1224	848
4902	4	actor	\\N	{Sam}	1224	510
4903	5	director	\\N	{}	1224	688
4904	6	writer	\\N	{}	1224	476
4905	7	producer	producer	{}	1224	467
4906	8	cinematographer	\\N	{}	1224	118
4907	9	actor	\\N	{"The Sheriff"}	1224	697
4908	10	actor	\\N	{Farmer}	1225	697
4909	1	actor	\\N	{"The Prospector"}	1225	616
4910	2	actress	\\N	{"The Prospector's Wife"}	1225	508
4911	3	actor	\\N	{"The Claim Agent"}	1225	599
4912	4	actress	\\N	{}	1225	414
4913	5	director	\\N	{}	1225	467
4914	6	writer	\\N	{}	1225	472
4915	7	cinematographer	\\N	{}	1225	49
4916	8	cinematographer	\\N	{}	1225	118
4917	9	actress	\\N	{"Old Woman"}	1225	515
4918	10	actor	\\N	{Courtier,Monk}	1226	567
4919	1	actress	\\N	{Camilla}	1226	575
4920	2	actor	\\N	{"Prince Julian"}	1226	693
4921	3	actor	\\N	{"Lionel - Julian's Rival"}	1226	863
4922	4	actress	\\N	{Lady-in-Waiting}	1226	523
4923	5	director	\\N	{}	1226	467
4924	6	writer	poem	{}	1226	475
4925	7	cinematographer	\\N	{}	1226	49
4926	8	actress	\\N	{"The Queen"}	1226	699
4927	9	actor	\\N	{Priest}	1226	686
4928	1	director	\\N	{}	1227	82
4929	2	director	\\N	{}	1227	486
4930	1	director	\\N	{}	1228	211
4931	2	writer	\\N	{}	1228	1058
4932	3	writer	\\N	{}	1228	1059
4933	10	actor	\\N	{}	1229	1060
4934	1	actor	\\N	{Hamlet}	1229	1061
4935	2	actor	\\N	{Claudius}	1229	1062
4936	3	actress	\\N	{Gertrude}	1229	1063
4937	4	actress	\\N	{Ophelia}	1229	650
4938	5	director	\\N	{}	1229	689
4939	6	writer	play	{}	1229	126
4940	7	actor	\\N	{Laertes}	1229	626
4941	8	actor	\\N	{Horatio}	1229	1064
4942	9	actor	\\N	{}	1229	1065
4943	1	actor	\\N	{Hamlet}	1230	961
4944	2	actress	\\N	{Ophelia}	1230	1066
4945	3	actress	\\N	{Gertrude}	1230	1067
4946	4	director	\\N	{}	1230	1068
4947	5	writer	play	{}	1230	126
4948	1	actor	\\N	{Hamlet}	1231	1069
4949	2	actress	\\N	{Gertrude}	1231	1070
4950	3	actor	\\N	{}	1231	1071
4951	4	actor	\\N	{}	1231	1072
4952	5	writer	play	{}	1231	126
4953	10	actor	\\N	{"The Chauffeur"}	1232	619
4954	1	actress	\\N	{"Ann Southcomb"}	1232	683
4955	2	actor	\\N	{"Ann's Father"}	1232	644
4956	3	actress	\\N	{"Ann's Mother"}	1232	515
4957	4	actor	\\N	{"Allen Edwards"}	1232	863
4958	5	director	\\N	{}	1232	467
4959	6	writer	\\N	{}	1232	472
4960	7	cinematographer	\\N	{}	1232	49
4961	8	actress	\\N	{"Allen's Mother"}	1232	699
4962	9	actor	\\N	{"Father's Choice"}	1232	882
4963	1	director	\\N	{}	1233	881
4964	10	actor	\\N	{Extra}	1234	644
4965	1	actor	\\N	{"Mr. Curtis"}	1234	516
4966	2	actor	\\N	{Jack}	1234	576
4967	3	actress	\\N	{Alice}	1234	508
4968	4	actor	\\N	{"Jack's Rival"}	1234	697
4969	5	director	\\N	{}	1234	467
4970	6	cinematographer	\\N	{}	1234	49
4971	7	actor	\\N	{"The Peddler"}	1234	393
4972	8	actor	\\N	{"At Station"}	1234	392
4973	9	actress	\\N	{}	1234	703
4974	1	director	\\N	{}	1235	211
4975	1	director	\\N	{}	1236	486
4976	10	actress	\\N	{"The Minister's Housekeeper"}	1237	683
4977	1	actor	\\N	{"William Standish"}	1237	616
4978	2	actress	\\N	{"Mrs. William Standish"}	1237	506
4979	3	actress	\\N	{"The Maid"}	1237	575
4980	4	actor	\\N	{"The Burglar"}	1237	684
4981	5	director	\\N	{}	1237	467
4982	6	writer	\\N	{}	1237	472
4983	7	cinematographer	\\N	{}	1237	49
4984	8	actress	\\N	{"The Burglar's Wife"}	1237	515
4985	9	actor	\\N	{"The Minister"}	1237	516
4986	10	actor	\\N	{}	1238	616
4987	1	actor	\\N	{"The Man"}	1238	697
4988	2	actress	\\N	{"The Woman"}	1238	503
4989	3	actor	\\N	{"The Waiter"}	1238	393
4990	4	actor	\\N	{"A Friend"}	1238	882
4991	5	director	\\N	{}	1238	467
4992	6	writer	\\N	{}	1238	476
4993	7	actor	\\N	{}	1238	469
4994	8	actress	\\N	{}	1238	601
4995	9	actor	\\N	{"The Boyfriend"}	1238	696
4996	1	director	\\N	{}	1239	82
4997	2	director	\\N	{}	1239	486
4998	1	actor	\\N	{George}	1240	617
4999	2	actress	\\N	{Mourner}	1240	523
5000	3	actor	\\N	{"Man Who Finds Hat"}	1240	1073
5001	4	actress	\\N	{Mourner}	1240	1074
5002	5	director	\\N	{}	1240	688
5003	6	writer	story	{}	1240	1075
5004	7	producer	producer	{}	1240	467
5005	8	cinematographer	\\N	{}	1240	118
5006	1	actress	\\N	{"The Daughter"}	1241	1076
5007	2	director	\\N	{}	1241	486
5008	3	producer	producer	{}	1241	103
5009	10	actress	\\N	{}	1242	508
5010	1	actress	\\N	{Eva}	1242	848
5011	2	actress	\\N	{"Blanche - Eva's Sister"}	1242	470
5012	3	actor	\\N	{"John - Eva's Sweetheart"}	1242	466
5013	4	actress	\\N	{"The Maiden Aunt"}	1242	523
5014	5	director	\\N	{}	1242	467
5015	6	writer	\\N	{}	1242	1077
5016	7	cinematographer	\\N	{}	1242	49
5017	8	actor	\\N	{"The Minister"}	1242	685
5018	9	actress	\\N	{"The Nurse"}	1242	612
5019	10	actor	\\N	{"Man at Farewell"}	1243	697
5020	1	actor	\\N	{"George Pickett Jr."}	1243	616
5021	2	actor	\\N	{"Colonel Pickett"}	1243	686
5022	3	actress	\\N	{"Woman at Farewell"}	1243	414
5023	4	actress	\\N	{"Woman at Farewell"}	1243	515
5024	5	director	\\N	{}	1243	467
5025	6	writer	\\N	{}	1243	476
5026	7	cinematographer	\\N	{}	1243	49
5027	8	cinematographer	\\N	{}	1243	118
5028	9	actor	\\N	{}	1243	685
5029	1	actor	\\N	{"Augustus Slip"}	1244	696
5030	2	director	\\N	{}	1244	881
5031	10	actor	\\N	{}	1245	693
5032	1	actor	\\N	{"Charles Randolph - The Confederate Soldier"}	1245	616
5033	2	actress	\\N	{"Agnes Randolph - Charles' Sister"}	1245	575
5034	3	actress	\\N	{"The Randolph's Mother"}	1245	699
5035	4	actor	\\N	{"Agnes's First Suitor"}	1245	863
5036	5	director	\\N	{}	1245	467
5037	6	writer	writer	{}	1245	1078
5038	7	cinematographer	\\N	{}	1245	49
5039	8	actor	\\N	{"Agnes's Second Suitor"}	1245	946
5040	9	actor	\\N	{"The Colored Servant"}	1245	685
5041	1	actress	\\N	{"Hepzibah Pyncheon"}	1246	465
5042	2	director	\\N	{}	1246	544
5043	3	writer	story	{}	1246	1079
5044	10	actor	\\N	{}	1247	782
5045	1	actress	\\N	{Anna}	1247	1080
5046	2	actor	\\N	{}	1247	517
5047	3	actress	\\N	{"Annas Mom"}	1247	625
5048	4	actress	\\N	{}	1247	839
5049	5	director	\\N	{}	1247	689
5050	6	cinematographer	\\N	{}	1247	319
5051	7	actress	\\N	{Bordelvaertinde}	1247	1063
5052	8	actor	\\N	{"Annas Dad"}	1247	518
5053	9	actress	\\N	{}	1247	1081
5054	10	actor	\\N	{"The Butler"}	1248	619
5055	1	actor	\\N	{"The Worker"}	1248	616
5056	2	actress	\\N	{"The Worker's Wife"}	1248	523
5057	3	actress	\\N	{"The Worker's Daughter"}	1248	707
5058	4	actor	\\N	{"The Worker's Employer"}	1248	516
5059	5	director	\\N	{}	1248	467
5060	6	writer	\\N	{}	1248	1082
5061	7	cinematographer	\\N	{}	1248	49
5062	8	actress	\\N	{"The Worker's Employer's Daughter"}	1248	470
5063	9	actor	\\N	{"The Worker's Friend"}	1248	581
5064	10	actor	\\N	{"At Second Party"}	1249	686
5065	1	actor	\\N	{"Mr. Avery"}	1249	688
5066	2	actress	\\N	{Vergie}	1249	508
5067	3	actor	\\N	{"The Butler"}	1249	619
5068	4	actress	\\N	{"The Maid"}	1249	515
5069	5	director	\\N	{}	1249	467
5070	6	writer	\\N	{}	1249	472
5071	7	cinematographer	\\N	{}	1249	49
5072	8	cinematographer	\\N	{}	1249	118
5073	9	actor	\\N	{"The Doctor"}	1249	882
5074	1	director	\\N	{}	1250	486
5075	10	actor	\\N	{"James' Friend"}	1251	685
5076	1	actor	\\N	{"James Mullen"}	1251	516
5077	2	actress	\\N	{"Clara Mullen - as an Adult"}	1251	683
5078	3	actor	\\N	{"Vincent Mullen - as an Adult"}	1251	616
5079	4	actor	\\N	{"Clara's Seducer - the City Slicker"}	1251	863
5080	5	director	\\N	{}	1251	467
5081	6	writer	\\N	{}	1251	1083
5082	7	producer	producer	{}	1251	98
5083	8	cinematographer	\\N	{}	1251	49
5084	9	actress	\\N	{"Clara's Child"}	1251	707
5085	1	actor	\\N	{}	1252	1084
5086	2	actress	\\N	{}	1252	942
5087	3	director	\\N	{}	1252	775
5088	4	writer	scenario	{}	1252	1085
5089	10	actor	\\N	{Soldier}	1253	882
5090	1	actor	\\N	{"Governor Jose Manuella"}	1253	688
5091	2	actor	\\N	{"Pedro Cortes"}	1253	469
5092	3	actress	\\N	{"Perdita Arguello"}	1253	503
5093	4	actor	\\N	{"Perdita's Son"}	1253	616
5094	5	director	\\N	{}	1253	467
5095	6	writer	\\N	{}	1253	472
5096	7	cinematographer	\\N	{}	1253	49
5097	8	actor	\\N	{"Indian Messenger"}	1253	644
5098	9	actor	\\N	{Soldier}	1253	697
5099	10	actor	\\N	{"Union Soldier"}	1254	573
5100	1	actor	\\N	{"The Young Father"}	1254	863
5101	2	actor	\\N	{}	1254	770
5102	3	actor	\\N	{}	1254	576
5103	4	actor	\\N	{"Confederate Soldier"}	1254	685
5104	5	director	\\N	{}	1254	467
5105	6	writer	\\N	{}	1254	472
5106	7	cinematographer	\\N	{}	1254	49
5107	8	actor	\\N	{"Union Officer"}	1254	686
5108	9	actor	\\N	{"Confederate Soldier"}	1254	466
5109	1	director	\\N	{}	1255	486
5110	1	actor	\\N	{}	1256	925
5111	2	director	\\N	{}	1256	71
5112	3	cinematographer	\\N	{}	1256	926
5113	10	actor	\\N	{}	1257	392
5114	1	actor	\\N	{Henry}	1257	510
5115	2	actress	\\N	{Mabel}	1257	601
5116	3	actor	\\N	{Steve}	1257	863
5117	4	actor	\\N	{"Uncle Zeke"}	1257	644
5118	5	director	\\N	{}	1257	467
5119	6	writer	\\N	{}	1257	472
5120	7	cinematographer	\\N	{}	1257	49
5121	8	cinematographer	\\N	{}	1257	118
5122	9	actress	\\N	{Aunt}	1257	515
5123	1	actor	\\N	{"Jack Sherwood"}	1258	203
5124	2	actress	\\N	{"Silver Bell"}	1258	943
5125	1	actor	\\N	{}	1259	1086
5126	2	producer	producer	{}	1259	200
5127	1	director	\\N	{}	1260	85
5128	1	director	\\N	{}	1261	486
5129	2	producer	producer	{}	1261	103
5130	1	actor	\\N	{}	1262	689
5131	2	actor	\\N	{}	1262	1087
5132	3	actor	\\N	{}	1262	827
5133	4	actress	\\N	{}	1262	1088
5134	5	actor	\\N	{}	1262	626
5135	1	director	\\N	{}	1263	561
5136	2	writer	novel	{}	1263	557
5137	3	producer	producer	{}	1263	200
5138	1	director	\\N	{}	1264	82
5139	2	director	\\N	{}	1264	486
5140	1	director	\\N	{}	1265	211
5141	1	actor	\\N	{"Salomon Baadsmand"}	1266	895
5142	2	actor	\\N	{Landsforræder}	1266	896
5143	3	actress	\\N	{"Ung Jomfru"}	1266	900
5144	4	actor	\\N	{Kapergasten}	1266	901
5145	5	writer	\\N	{}	1266	897
5146	6	cinematographer	\\N	{}	1266	898
5147	10	actor	\\N	{"At Store"}	1267	911
5148	1	actress	\\N	{"Milly Howard"}	1267	508
5149	2	actor	\\N	{"Jim Doyle"}	1267	510
5150	3	actor	\\N	{"The Mexican"}	1267	882
5151	4	actress	\\N	{"The Mother"}	1267	515
5152	5	director	\\N	{}	1267	688
5153	6	writer	\\N	{}	1267	472
5154	7	producer	producer	{}	1267	467
5155	8	actor	\\N	{}	1267	1089
5156	9	actor	\\N	{Cowboy}	1267	393
5157	1	actress	\\N	{}	1268	992
5158	2	actor	\\N	{}	1268	1000
5159	3	actor	\\N	{}	1268	1090
5160	4	writer	novel	{}	1268	1091
5161	10	actress	\\N	{}	1269	1092
5162	1	actor	\\N	{}	1269	1093
5163	2	actor	\\N	{}	1269	828
5164	3	actor	\\N	{}	1269	384
5165	4	actress	\\N	{}	1269	650
5166	5	director	\\N	{}	1269	380
5167	6	producer	producer	{}	1269	1094
5168	7	cinematographer	\\N	{}	1269	1095
5169	8	cinematographer	\\N	{}	1269	734
5170	9	actress	\\N	{}	1269	1096
5171	1	actress	\\N	{"Mrs. Blackburn"}	1270	465
5172	2	actor	\\N	{}	1270	769
5173	3	director	\\N	{}	1270	858
5174	1	actress	\\N	{Dorothy}	1271	1002
5175	2	director	\\N	{}	1271	561
5176	3	writer	novel	{}	1271	557
5177	4	producer	producer	{}	1271	200
5178	10	actress	\\N	{}	1272	508
5179	1	actor	\\N	{"The Husband"}	1272	576
5180	2	actress	\\N	{"The Wife"}	1272	772
5181	3	actress	\\N	{"The Child"}	1272	707
5182	4	actor	\\N	{"The Employer"}	1272	516
5183	5	director	\\N	{}	1272	467
5184	6	producer	producer	{}	1272	98
5185	7	cinematographer	\\N	{}	1272	49
5186	8	actor	\\N	{"The Westerner"}	1272	684
5187	9	actress	\\N	{}	1272	414
5188	10	actor	\\N	{"In Second Bar"}	1273	581
5189	1	actor	\\N	{"Reverend Hollister"}	1273	644
5190	2	actor	\\N	{"James - Reverend Hollister's Son"}	1273	946
5191	3	actress	\\N	{"Ruth - Reverend Hollister's Daughter"}	1273	683
5192	4	actor	\\N	{"The Doctor"}	1273	686
5193	5	director	\\N	{}	1273	467
5194	6	writer	\\N	{}	1273	599
5195	7	cinematographer	\\N	{}	1273	49
5196	8	actor	\\N	{"In First Bar"}	1273	466
5197	9	actor	\\N	{"Young Boy"}	1273	392
5198	1	actor	\\N	{Moses}	1274	1097
5199	2	actress	\\N	{}	1274	511
5200	3	actor	\\N	{}	1274	775
5201	4	actor	\\N	{}	1274	489
5202	5	director	\\N	{}	1274	93
5203	6	writer	\\N	{}	1274	860
5204	7	writer	\\N	{}	1274	1098
5205	8	actress	\\N	{}	1274	512
5206	10	actor	\\N	{"The Client"}	1275	685
5207	1	actor	\\N	{"Mr. Edward Rose"}	1275	516
5208	2	actress	\\N	{"Mrs. Edward Rose"}	1275	699
5209	3	actor	\\N	{"President of the Sugar Company"}	1275	686
5210	4	actress	\\N	{"Little Alice Rose"}	1275	470
5211	5	director	\\N	{}	1275	467
5212	6	writer	\\N	{}	1275	476
5213	7	cinematographer	\\N	{}	1275	49
5214	8	actress	\\N	{"Little Ruth Rose"}	1275	707
5215	9	actor	\\N	{"The Partner"}	1275	882
5216	1	director	\\N	{}	1276	486
5217	2	producer	producer	{}	1276	103
5218	1	actor	\\N	{"Hal Martin"}	1277	203
5219	2	actress	\\N	{"Nell Kendall"}	1277	943
5220	3	actor	\\N	{}	1277	919
5221	4	actor	\\N	{}	1277	924
5222	5	actor	\\N	{}	1277	676
5223	1	director	\\N	{}	1278	718
5224	1	actor	\\N	{}	1279	425
5225	2	actor	\\N	{}	1279	831
5226	3	director	\\N	{}	1279	429
5227	4	producer	producer	{}	1279	200
5228	1	director	\\N	{}	1280	486
5229	2	producer	producer	{}	1280	103
5230	10	actress	\\N	{"The Lacemaker's Mother"}	1281	515
5231	1	actor	\\N	{"The Lord"}	1281	616
5232	2	actress	\\N	{"The Lady"}	1281	503
5233	3	actress	\\N	{"The Handmaiden"}	1281	575
5234	4	actor	\\N	{"The Gardener"}	1281	469
5235	5	director	\\N	{}	1281	467
5236	6	writer	\\N	{}	1281	472
5237	7	cinematographer	\\N	{}	1281	49
5238	8	cinematographer	\\N	{}	1281	118
5239	9	actress	\\N	{"The Lacemaker"}	1281	601
5240	1	actor	\\N	{"The American"}	1282	487
5241	2	actress	\\N	{Chrysanthemum}	1282	942
5242	3	director	\\N	{}	1282	565
5243	1	actor	\\N	{"Lt. Robert Bright"}	1283	925
5244	2	actor	\\N	{"Lt. Arthur Hartley"}	1283	1099
5245	3	actress	\\N	{"Cynthia Moore"}	1283	512
5246	4	actor	\\N	{"Col. Moore - Cynthia's Father"}	1283	1100
5247	5	director	\\N	{}	1283	977
5248	6	producer	producer	{}	1283	71
5249	7	cinematographer	\\N	{}	1283	926
5250	1	director	\\N	{}	1284	211
5251	1	director	\\N	{}	1285	595
5252	2	cinematographer	\\N	{}	1285	385
5253	1	actress	\\N	{}	1286	465
5254	2	actor	\\N	{}	1286	261
5255	3	director	\\N	{}	1286	98
5256	4	writer	story	{}	1286	578
5257	10	actor	\\N	{"One of the Boys"}	1287	697
5258	1	actress	\\N	{Bessie}	1287	601
5259	2	actor	\\N	{Tom}	1287	510
5260	3	actress	\\N	{"Bessie's Mother"}	1287	515
5261	4	actor	\\N	{"Bessie's Father"}	1287	644
5262	5	director	\\N	{}	1287	688
5263	6	writer	story	{}	1287	1101
5264	7	producer	producer	{}	1287	467
5265	8	cinematographer	\\N	{}	1287	118
5266	9	actress	\\N	{}	1287	414
5267	1	actor	\\N	{Macbeth}	1288	1102
5268	2	actress	\\N	{"Lady Macbeth"}	1288	1021
5269	3	director	\\N	{}	1288	498
5270	4	writer	adaptation	{}	1288	398
5271	5	writer	play	{}	1288	126
5272	1	director	\\N	{}	1289	486
5273	2	producer	producer	{}	1289	103
5274	1	actor	\\N	{}	1290	290
5275	2	actor	\\N	{}	1290	546
5276	3	director	\\N	{}	1290	417
5277	1	actor	\\N	{}	1291	1103
5278	2	actress	\\N	{}	1291	1050
5279	3	actor	\\N	{}	1291	236
5280	4	director	\\N	{}	1291	881
5281	5	writer	scenario	{}	1291	1104
5282	1	actor	\\N	{"Steve Clark"}	1292	688
5283	2	actress	\\N	{"Mildred Clark - Steve's Wife"}	1292	508
5284	3	actor	\\N	{"The Wanderer"}	1292	882
5285	4	actress	\\N	{}	1292	683
5286	5	director	\\N	{}	1292	467
5287	6	writer	\\N	{}	1292	472
5288	7	cinematographer	\\N	{}	1292	49
5289	8	actor	\\N	{}	1292	572
5290	1	actress	\\N	{}	1293	1105
5291	2	director	\\N	{}	1293	1106
5292	3	writer	writer	{}	1293	1107
5293	4	cinematographer	\\N	{}	1293	1108
5294	1	director	\\N	{}	1294	211
5295	1	actor	\\N	{}	1295	1019
5296	2	actress	\\N	{}	1295	497
5297	3	actress	\\N	{}	1295	1109
5298	4	director	\\N	{}	1295	909
5299	10	actor	\\N	{"In Station"}	1296	685
5300	1	actor	\\N	{"Mr. Powers"}	1296	516
5301	2	actor	\\N	{"Tom Powers"}	1296	946
5302	3	actress	\\N	{"Mrs. Powers"}	1296	699
5303	4	actress	\\N	{"The Maid"}	1296	612
5304	5	director	\\N	{}	1296	467
5305	6	writer	\\N	{}	1296	476
5306	7	cinematographer	\\N	{}	1296	49
5307	8	actor	\\N	{"The Policeman"}	1296	573
5308	9	actor	\\N	{}	1296	770
5309	1	actor	\\N	{"The Doctor"}	1297	203
5310	2	actress	\\N	{"Marie Canby"}	1297	943
5311	3	actor	\\N	{}	1297	676
5312	4	actor	\\N	{}	1297	919
5313	10	actor	\\N	{Passerby}	1298	697
5314	1	actor	\\N	{"Mr. Hiram"}	1298	393
5315	2	actress	\\N	{"Mrs. Hiram"}	1298	699
5316	3	actress	\\N	{"An Old Maid"}	1298	515
5317	4	actor	\\N	{Passerby}	1298	685
5318	5	director	\\N	{}	1298	688
5319	6	writer	\\N	{}	1298	510
5320	7	producer	producer	{}	1298	467
5321	8	cinematographer	\\N	{}	1298	118
5322	9	actress	\\N	{Passerby}	1298	959
5323	1	actress	\\N	{May}	1299	601
5324	2	actor	\\N	{June}	1299	696
5325	3	actress	\\N	{October}	1299	515
5326	4	actor	\\N	{December}	1299	644
5327	5	director	\\N	{}	1299	688
5328	6	producer	producer	{}	1299	467
5329	7	cinematographer	\\N	{}	1299	118
5330	8	actor	\\N	{}	1299	958
5331	1	actress	\\N	{Olinska}	1300	1057
5332	2	actor	\\N	{Mazeppa}	1300	427
5333	3	director	\\N	{}	1300	429
5334	4	writer	poem	{}	1300	1110
5335	5	producer	producer	{}	1300	200
5336	1	actor	\\N	{}	1301	1062
5337	2	actress	\\N	{}	1301	1111
5338	3	actress	\\N	{}	1301	650
5339	4	director	\\N	{}	1301	827
5340	1	actress	\\N	{}	1302	992
5341	2	actor	\\N	{}	1302	993
5342	3	actor	\\N	{}	1302	1000
5343	1	actor	\\N	{Shylock}	1303	1112
5344	2	actress	\\N	{Jessica}	1303	389
5345	3	actress	\\N	{Portia}	1303	1113
5346	4	director	\\N	{}	1303	1114
5347	5	writer	play "The Merchant of Venice"	{}	1303	126
5348	10	actress	\\N	{"The Other Woman"}	1304	959
5349	1	actor	\\N	{Carl}	1304	863
5350	2	actress	\\N	{"Carl's Mother"}	1304	612
5351	3	actor	\\N	{"Carl's Father"}	1304	516
5352	4	actress	\\N	{"The Woman"}	1304	683
5353	5	director	\\N	{}	1304	467
5354	6	cinematographer	\\N	{}	1304	49
5355	7	actress	\\N	{"The Woman's Mother"}	1304	699
5356	8	actor	\\N	{"The Woman's Father"}	1304	686
5357	9	actor	\\N	{"The Baron"}	1304	599
5358	1	actor	\\N	{}	1305	980
5359	2	actress	\\N	{Thysla}	1305	1115
5360	3	actor	\\N	{Claudius}	1305	1025
5361	4	actress	\\N	{}	1305	864
5362	5	director	\\N	{}	1305	909
5363	6	actor	\\N	{Manus}	1305	1116
5364	7	actress	\\N	{Messalina}	1305	906
5365	1	actor	\\N	{"The Mexican"}	1306	203
5366	2	actor	\\N	{"The Rancher"}	1306	847
5367	3	actress	\\N	{"The Rancher's Daughter"}	1306	943
5368	4	actor	\\N	{"The Scoundrel"}	1306	675
5369	5	cinematographer	\\N	{}	1306	758
5370	6	actor	\\N	{"Scoundrel's Accomplice"}	1306	678
5371	7	actor	\\N	{"Scoundrel's Accomplice"}	1306	676
5372	8	actor	\\N	{"The Rancher's Daughter's Sweetheart"}	1306	917
5373	9	actor	\\N	{}	1306	677
5374	1	actor	\\N	{}	1307	519
5375	2	actress	\\N	{}	1307	465
5376	3	actor	\\N	{}	1307	769
5377	4	actor	\\N	{}	1307	248
5378	5	director	\\N	{}	1307	544
5379	6	writer	novel "Michel Strogoff"	{}	1307	190
5380	10	actress	\\N	{}	1308	414
5381	1	actor	\\N	{"Perry Dudley"}	1308	863
5382	2	actor	\\N	{"Nick - the Unfortunate One"}	1308	510
5383	3	actor	\\N	{"The Country Farmer"}	1308	516
5384	4	actress	\\N	{"The Country Girl"}	1308	508
5385	5	director	\\N	{}	1308	467
5386	6	writer	\\N	{}	1308	472
5387	7	cinematographer	\\N	{}	1308	49
5388	8	actor	\\N	{"The Minister"}	1308	686
5389	9	actor	\\N	{"The Policeman"}	1308	637
5390	1	actress	\\N	{}	1309	1117
5391	2	actress	\\N	{}	1309	1118
5392	3	actor	\\N	{}	1309	1119
5393	4	actress	\\N	{}	1309	1120
5394	5	director	\\N	{}	1309	1121
5395	6	composer	\\N	{}	1309	1122
5396	7	actress	\\N	{}	1309	1123
5397	8	actor	\\N	{}	1309	1124
5398	9	actress	\\N	{}	1309	1125
5399	1	actor	\\N	{}	1310	1126
5400	2	actor	\\N	{}	1310	1127
5401	3	actress	\\N	{}	1310	1128
5402	4	actor	\\N	{}	1310	1129
5403	5	director	\\N	{}	1310	429
5404	6	director	\\N	{}	1310	561
5405	7	producer	producer	{}	1310	200
5406	8	actor	\\N	{}	1310	1130
5407	1	actor	\\N	{"Milton Rodd"}	1311	203
5408	2	actress	\\N	{"Nellie Blair"}	1311	943
5409	3	actor	\\N	{}	1311	917
5410	1	actress	\\N	{}	1312	1026
5411	2	director	\\N	{}	1312	376
5412	1	actress	\\N	{"Clarice Moulton"}	1313	1131
5413	2	producer	producer	{}	1313	1132
5414	1	actor	\\N	{"Innocent Cowboy"}	1314	203
5415	2	actor	\\N	{}	1314	676
5416	3	actor	\\N	{}	1314	675
5417	4	actress	\\N	{}	1314	943
5418	5	actor	\\N	{}	1314	917
5419	6	actor	\\N	{}	1314	847
5420	7	actor	\\N	{}	1314	968
5421	10	actor	\\N	{"A Farmer"}	1315	685
5422	1	actor	\\N	{"The Prodigal Son"}	1315	581
5423	2	actress	\\N	{"The Prodigal's Mother"}	1315	612
5424	3	actor	\\N	{"The Sheriff"}	1315	516
5425	4	actress	\\N	{"The Sheriff's Wife"}	1315	515
5426	5	director	\\N	{}	1315	467
5427	6	writer	\\N	{}	1315	599
5428	7	writer	novel "The Southerner"	{}	1315	1133
5429	8	cinematographer	\\N	{}	1315	49
5430	9	actor	\\N	{"The Sheriff's Son"}	1315	845
5431	10	actor	\\N	{Servant}	1316	685
5432	1	actor	\\N	{"Doctor Van Brum"}	1316	516
5433	2	actress	\\N	{"Indian Mother"}	1316	523
5434	3	actress	\\N	{"Indian Child"}	1316	707
5435	4	actor	\\N	{"Indian Medicine Man"}	1316	882
5436	5	director	\\N	{}	1316	467
5437	6	writer	novel	{}	1316	784
5438	7	writer	\\N	{}	1316	472
5439	8	cinematographer	\\N	{}	1316	49
5440	9	actor	\\N	{}	1316	770
5441	1	director	\\N	{}	1317	85
5442	1	director	\\N	{}	1318	595
5443	1	actress	\\N	{"Mrs. McCoy - the Mother"}	1319	965
5444	2	actor	\\N	{"Jack McCoy - the Son"}	1319	1134
5445	1	director	\\N	{}	1320	486
5446	10	actor	\\N	{"Outside Church"}	1321	697
5447	1	actor	\\N	{Muggsy}	1321	696
5448	2	actress	\\N	{Mabel}	1321	601
5449	3	actress	\\N	{"Mabel's Mother"}	1321	699
5450	4	actor	\\N	{}	1321	693
5451	5	director	\\N	{}	1321	688
5452	6	writer	\\N	{}	1321	472
5453	7	producer	producer	{}	1321	467
5454	8	actress	\\N	{"One of the Sisters Frost"}	1321	515
5455	9	actor	\\N	{"The Pastor","A Bystander"}	1321	685
5456	10	actor	\\N	{"One of Muggsy's Friends"}	1322	946
5457	1	actor	\\N	{Muggsy}	1322	696
5458	2	actress	\\N	{"Mabel Brown"}	1322	601
5459	3	actress	\\N	{"Muggsy's Mother"}	1322	612
5460	4	actor	\\N	{"Mabel's Father"}	1322	516
5461	5	director	\\N	{}	1322	467
5462	6	writer	\\N	{}	1322	476
5463	7	cinematographer	\\N	{}	1322	49
5464	8	actress	\\N	{"Mabel's Mother"}	1322	699
5465	9	actor	\\N	{"One of Muggsy's Friends"}	1322	466
5466	10	actor	\\N	{"The Sheriff"}	1323	393
5467	1	actress	\\N	{"The Girl"}	1323	601
5468	2	actor	\\N	{"A Rival Sweetheart"}	1323	510
5469	3	actor	\\N	{"A Rival Sweetheart"}	1323	696
5470	4	actor	\\N	{"The Man in the Boat"}	1323	697
5471	5	director	\\N	{}	1323	688
5472	6	writer	\\N	{}	1323	467
5473	7	cinematographer	\\N	{}	1323	118
5474	8	actor	\\N	{}	1323	684
5475	9	actor	\\N	{}	1323	576
5476	1	actress	\\N	{"Mercy Merrick"}	1324	1131
5477	2	actor	\\N	{}	1324	236
5478	3	actor	\\N	{}	1324	338
5479	4	director	\\N	{}	1324	1055
5480	5	writer	novel	{}	1324	1135
5481	6	writer	scenario	{}	1324	1104
5482	7	producer	producer	{}	1324	1132
5483	1	actor	\\N	{"The Boss"}	1325	487
5484	2	actress	\\N	{"The New Stenographer"}	1325	556
5485	3	actor	\\N	{"The Fat Employer"}	1325	1084
5486	4	actress	\\N	{"The Old Stenographer"}	1325	579
5487	5	director	\\N	{}	1325	1136
5488	6	writer	scenario	{}	1325	565
5489	7	producer	producer	{}	1325	93
5490	8	actor	\\N	{}	1325	820
5491	9	actor	\\N	{}	1325	1137
5492	10	actor	\\N	{"On Train"}	1326	697
5493	1	actor	\\N	{"Dick Harcourt"}	1326	469
5494	2	actress	\\N	{"Alice Vance"}	1326	601
5495	3	actress	\\N	{"Dora Dean"}	1326	508
5496	4	actor	\\N	{Harry}	1326	863
5497	5	director	\\N	{}	1326	467
5498	6	cinematographer	\\N	{}	1326	49
5499	7	cinematographer	\\N	{}	1326	118
5500	8	actress	\\N	{"The Maid"}	1326	515
5501	9	actress	\\N	{}	1326	506
5502	1	director	\\N	{}	1327	1138
5503	2	writer	screenplay	{}	1327	739
5504	3	writer	short story	{}	1327	1139
5505	10	actor	\\N	{"Undetermined Secondary Role"}	1328	392
5506	1	actor	\\N	{"Mr. Jones"}	1328	686
5507	2	actress	\\N	{"Mrs. Jones"}	1328	699
5508	3	actor	\\N	{"Mr. Hall"}	1328	685
5509	4	actor	\\N	{"Mr. Young"}	1328	510
5510	5	director	\\N	{}	1328	688
5511	6	writer	story	{}	1328	1140
5512	7	writer	\\N	{}	1328	599
5513	8	producer	producer	{}	1328	467
5514	9	cinematographer	\\N	{}	1328	118
5515	10	actress	\\N	{"In Parfumerie"}	1329	612
5516	1	actor	\\N	{"Henri Prevost"}	1329	616
5517	2	actress	\\N	{"Madame Prevost"}	1329	508
5518	3	actor	\\N	{"The Priest"}	1329	644
5519	4	actor	\\N	{"The Nobleman"}	1329	882
5520	5	director	\\N	{}	1329	467
5521	6	writer	\\N	{}	1329	472
5522	7	cinematographer	\\N	{}	1329	49
5523	8	actor	\\N	{"The Messenger"}	1329	845
5524	9	actor	\\N	{Aristocrat}	1329	1141
5525	1	actor	\\N	{Tobiás}	1330	1142
5526	2	actor	\\N	{Oskar}	1330	1143
5527	3	actress	\\N	{Lilly}	1330	1144
5528	4	actress	\\N	{Landlady}	1330	1145
5529	5	cinematographer	\\N	{}	1330	96
5530	6	actor	\\N	{Forester}	1330	1146
5531	7	actor	\\N	{Landlord}	1330	1147
5532	1	director	\\N	{}	1331	486
5533	1	director	\\N	{}	1332	486
5534	2	producer	producer	{}	1332	103
5535	10	actress	\\N	{"In Factory"}	1333	535
5536	1	actress	\\N	{"Pauline Smith"}	1333	1148
5537	2	actress	\\N	{"Pauline's Mother"}	1333	612
5538	3	actor	\\N	{"Jay Downs"}	1333	946
5539	4	actor	\\N	{"The Postman"}	1333	644
5540	5	director	\\N	{}	1333	688
5541	6	producer	producer	{}	1333	467
5542	7	cinematographer	\\N	{}	1333	118
5543	8	actor	\\N	{"Outside Store"}	1333	685
5544	9	actor	\\N	{"Outside Store"}	1333	697
5545	10	actor	\\N	{"Wilson's Servant"}	1334	637
5546	1	actor	\\N	{"Rupert Howland"}	1334	686
5547	2	actress	\\N	{"Elsie - Rupert's Daughter"}	1334	470
5548	3	actress	\\N	{"Grace Wallace"}	1334	503
5549	4	actor	\\N	{"Mr. Wilson"}	1334	616
5550	5	director	\\N	{}	1334	467
5551	6	cinematographer	\\N	{}	1334	49
5552	7	actor	\\N	{"The Grandfather"}	1334	644
5553	8	actor	\\N	{"The Priest"}	1334	1149
5554	9	actor	\\N	{"At Deathbed"}	1334	697
5555	10	actor	\\N	{}	1335	685
5556	1	actor	\\N	{"Henry Revol"}	1335	616
5557	2	actress	\\N	{"The Mother"}	1335	515
5558	3	actress	\\N	{"One of the Children"}	1335	470
5559	4	actress	\\N	{"One of the Children"}	1335	534
5560	5	director	\\N	{}	1335	467
5561	6	cinematographer	\\N	{}	1335	49
5562	7	actor	\\N	{"The Doctor"}	1335	516
5563	8	actor	\\N	{"The Workman"}	1335	696
5564	9	actress	\\N	{"At the Party"}	1335	508
5565	1	actress	\\N	{}	1336	465
5566	2	actor	\\N	{}	1336	1150
5567	3	actress	\\N	{"Puritan maiden"}	1336	1151
5568	4	actor	\\N	{"Leader of New York Militia"}	1336	519
5569	5	director	\\N	{}	1336	1152
5570	6	director	\\N	{}	1336	98
5571	7	writer	story	{}	1336	578
5572	8	actor	\\N	{"Indian juvenile"}	1336	846
5573	1	director	\\N	{}	1338	486
5574	2	producer	producer	{}	1338	103
5575	1	actor	\\N	{"Walt Malone"}	1339	676
5576	2	actor	\\N	{"The Girl's Father"}	1339	677
5577	3	actor	\\N	{"The Rival"}	1339	675
5578	4	actor	\\N	{(unconfirmed)}	1339	203
5579	10	actor	\\N	{}	1340	510
5580	1	actress	\\N	{"The Daughter"}	1340	503
5581	2	actor	\\N	{"The Wanderer"}	1340	599
5582	3	actor	\\N	{"The Father"}	1340	644
5583	4	actor	\\N	{"The Marshal"}	1340	469
5584	5	director	\\N	{}	1340	467
5585	6	writer	\\N	{}	1340	472
5586	7	cinematographer	\\N	{}	1340	49
5587	8	actor	\\N	{"The Deputy"}	1340	619
5588	9	actor	\\N	{}	1340	688
5589	1	actor	\\N	{Baptiste}	1341	925
5590	2	actress	\\N	{Anita}	1341	512
5591	3	actor	\\N	{Brown}	1341	1099
5592	4	actor	\\N	{"Padre Dominguis"}	1341	1100
5593	5	director	\\N	{}	1341	977
5594	6	producer	producer	{}	1341	71
5595	7	cinematographer	\\N	{}	1341	926
5596	1	director	\\N	{}	1342	1153
5597	2	writer	\\N	{}	1342	745
5598	1	actor	\\N	{"Jack Smythe"}	1343	203
5599	2	actor	\\N	{"Jack Hartley"}	1343	675
5600	3	actress	\\N	{Clara}	1343	943
5601	4	actor	\\N	{"An Indian"}	1343	676
5602	5	cinematographer	\\N	{}	1343	758
5603	6	actor	\\N	{}	1343	923
5604	7	actor	\\N	{}	1343	960
5605	8	actor	\\N	{}	1343	678
5606	1	director	\\N	{}	1344	85
5607	1	director	\\N	{}	1345	582
5608	1	actor	\\N	{"Dick Martin"}	1346	203
5609	2	actor	\\N	{"Sheriff Dixon"}	1346	920
5610	3	actress	\\N	{"Patricia Watkins"}	1346	943
5611	4	actor	\\N	{"Mr. Watkins"}	1346	923
5612	5	actor	\\N	{}	1346	676
5613	6	actor	\\N	{}	1346	921
5614	1	actor	\\N	{"Ole Vandhund"}	1347	1154
5615	2	actress	\\N	{"Miss Norris"}	1347	1155
5616	3	actor	\\N	{}	1347	1156
5617	4	actor	\\N	{}	1347	665
5618	5	writer	novel	{}	1347	1157
5619	6	cinematographer	\\N	{}	1347	329
5620	7	production_designer	\\N	{}	1347	1158
5621	1	actor	\\N	{"Young Reporter"}	1349	1159
5622	2	actor	\\N	{}	1349	1160
5623	3	actress	\\N	{}	1349	1161
5624	4	producer	producer	{}	1349	200
5625	1	director	\\N	{}	1350	486
5626	2	producer	producer	{}	1350	103
5627	10	actor	\\N	{Storemate}	1351	1141
5628	1	actress	\\N	{Edith}	1351	601
5629	2	actress	\\N	{"Edith's Mother"}	1351	515
5630	3	actor	\\N	{"Edith's Blind Father"}	1351	644
5631	4	actor	\\N	{"Edith's Employer"}	1351	685
5632	5	director	\\N	{}	1351	467
5633	6	writer	\\N	{}	1351	472
5634	7	cinematographer	\\N	{}	1351	49
5635	8	actor	\\N	{"The City Slicker"}	1351	599
5636	9	actress	\\N	{}	1351	506
5637	1	director	\\N	{}	1352	486
5638	1	director	\\N	{}	1353	211
5639	2	writer	play	{}	1353	1058
5640	3	writer	play	{}	1353	1162
5641	1	actor	\\N	{"Jim Allison"}	1354	203
5642	2	actor	\\N	{"Pony O'Brien"}	1354	675
5643	3	actress	\\N	{"Mary Holmes"}	1354	943
5644	4	actor	\\N	{}	1354	676
5645	5	actor	\\N	{}	1354	917
5646	6	actor	\\N	{}	1354	847
5647	7	actor	\\N	{}	1354	1163
5648	1	director	\\N	{}	1355	211
5649	1	actor	\\N	{}	1356	939
5650	2	actor	\\N	{}	1356	1164
5651	3	actor	\\N	{}	1356	1165
5652	4	actor	\\N	{}	1356	1166
5653	5	director	\\N	{}	1356	429
5654	6	actor	\\N	{}	1356	1167
5655	7	actress	\\N	{}	1356	426
5656	8	actor	\\N	{}	1356	427
5657	1	actress	\\N	{}	1357	465
5658	2	actor	\\N	{}	1357	769
5659	3	actress	\\N	{}	1357	642
5660	4	director	\\N	{}	1357	544
5661	5	writer	\\N	{}	1357	858
5662	10	actor	\\N	{"The Inspector"}	1358	685
5663	1	actress	\\N	{"The Girl"}	1358	564
5664	2	actor	\\N	{"The Boy"}	1358	946
5665	3	actor	\\N	{"The Attacker"}	1358	882
5666	4	actor	\\N	{"The Girl's Father"}	1358	599
5667	5	director	\\N	{}	1358	467
5668	6	writer	\\N	{}	1358	472
5669	7	cinematographer	\\N	{}	1358	49
5670	8	actress	\\N	{"The Girl's Mother"}	1358	699
5671	9	actress	\\N	{"The Maid"}	1358	612
5672	1	actor	\\N	{"D. Pedro I"}	1359	1168
5673	2	actor	\\N	{"D. Afonso IV"}	1359	1169
5674	3	actress	\\N	{"Ines de Castro"}	1359	1170
5675	4	producer	producer	{}	1359	954
5676	10	actor	\\N	{"The White Exploiter"}	1360	510
5677	1	actress	\\N	{Ramona}	1360	601
5678	2	actor	\\N	{Alessandro}	1360	616
5679	3	actor	\\N	{Felipe}	1360	882
5680	4	actress	\\N	{"The Mother"}	1360	515
5681	5	director	\\N	{}	1360	467
5682	6	writer	novel	{}	1360	1171
5683	7	writer	\\N	{}	1360	472
5684	8	cinematographer	\\N	{}	1360	49
5685	9	actor	\\N	{"The Priest"}	1360	644
5686	1	actor	\\N	{"Jack Tyler"}	1361	203
5687	2	actress	\\N	{"Carrie Perkins"}	1361	943
5688	3	actor	\\N	{}	1361	847
5689	4	actor	\\N	{}	1361	917
5690	5	cinematographer	\\N	{}	1361	758
5691	6	actor	\\N	{}	1361	968
5692	1	actor	\\N	{}	1362	1172
5693	2	actor	\\N	{"Bronco Buster"}	1362	939
5694	3	actor	\\N	{}	1362	1173
5695	4	actor	\\N	{}	1362	1174
5696	5	director	\\N	{}	1362	429
5697	6	producer	producer	{}	1362	200
5698	7	actor	\\N	{}	1362	1175
5699	10	actor	\\N	{}	1363	678
5700	1	actor	\\N	{"The Doctor"}	1363	203
5701	2	actress	\\N	{"Nellie Forsyth"}	1363	943
5702	3	actor	\\N	{"Jack Matthews"}	1363	675
5703	4	actress	\\N	{"Mrs. Matthews"}	1363	969
5704	5	actor	\\N	{"The Sheriff"}	1363	676
5705	6	actor	\\N	{}	1363	1163
5706	7	actor	\\N	{}	1363	960
5707	8	actor	\\N	{}	1363	968
5708	9	actor	\\N	{}	1363	679
5709	1	actor	\\N	{}	1364	939
5710	2	actress	\\N	{}	1364	1176
5711	3	actor	\\N	{}	1364	964
5712	4	director	\\N	{}	1364	429
5713	5	director	\\N	{}	1364	561
5714	6	producer	producer	{}	1364	200
5715	1	actor	\\N	{"A Texas Ranger","The 'Bride'"}	1365	203
5716	2	actor	\\N	{"Bill Dunham"}	1365	847
5717	3	actor	\\N	{}	1365	676
5718	4	actor	\\N	{}	1365	1177
5719	5	cinematographer	\\N	{}	1365	758
5720	6	actor	\\N	{Preacher}	1365	968
5721	7	actor	\\N	{"Man With Droopy Mustache"}	1365	917
5722	8	actor	\\N	{"Man In Black Vest"}	1365	675
5723	1	actor	\\N	{"King Lear"}	1366	477
5724	2	actor	\\N	{}	1366	1178
5725	3	actor	\\N	{}	1366	1179
5726	4	writer	play "King Lear"	{}	1366	126
5727	1	actor	\\N	{"King Lear"}	1367	1112
5728	2	actress	\\N	{Cordelia}	1367	389
5729	3	actress	\\N	{"King Lear's Daughter"}	1367	1113
5730	4	actress	\\N	{"King Lear's Daughter"}	1367	1180
5731	5	director	\\N	{}	1367	1114
5732	6	writer	play "King Lear"	{}	1367	126
5733	1	director	\\N	{}	1368	486
5734	10	actor	\\N	{Larsson}	1369	1181
5735	1	actor	\\N	{"Gustaf II Adolf"}	1369	1182
5736	2	actress	\\N	{"Regina von Emmeritz"}	1369	1183
5737	3	actor	\\N	{Hieronymus}	1369	1184
5738	4	actor	\\N	{"Brig. Lillie"}	1369	1185
5739	5	director	\\N	{}	1369	1186
5740	6	cinematographer	\\N	{}	1369	1187
5741	7	actor	\\N	{"Regina's father"}	1369	1188
5742	8	actress	\\N	{Dorthe}	1369	1189
5743	9	actor	\\N	{"The Bishop"}	1369	1190
5744	10	actor	\\N	{Recruit}	1370	1090
5745	1	actor	\\N	{}	1370	1191
5746	2	actor	\\N	{}	1370	889
5747	3	actress	\\N	{}	1370	1192
5748	4	actress	\\N	{Karen}	1370	1193
5749	5	director	\\N	{}	1370	413
5750	6	director	\\N	{}	1370	887
5751	7	actor	\\N	{}	1370	886
5752	8	actor	\\N	{Farmer}	1370	1194
5753	9	actor	\\N	{Captain}	1370	1000
5754	1	director	\\N	{}	1371	108
5755	1	director	\\N	{}	1372	85
5756	10	actor	\\N	{}	1373	685
5757	1	actor	\\N	{Harry}	1373	696
5758	2	actor	\\N	{Bill}	1373	882
5759	3	actress	\\N	{Jennie}	1373	601
5760	4	actor	\\N	{"A Merchant"}	1373	393
5761	5	director	\\N	{}	1373	467
5762	6	writer	\\N	{}	1373	472
5763	7	cinematographer	\\N	{}	1373	49
5764	8	actor	\\N	{"Oil Speculator"}	1373	516
5765	9	actor	\\N	{"Oil Speculator's Henchman"}	1373	863
5766	10	actor	\\N	{"The Minister"}	1374	644
5767	1	actor	\\N	{"Ben Cook"}	1374	688
5768	2	actress	\\N	{"Mrs. Ben Cook"}	1374	683
5769	3	actor	\\N	{"The Farmer"}	1374	516
5770	4	actress	\\N	{"The Daughter - as a Child"}	1374	707
5771	5	director	\\N	{}	1374	467
5772	6	cinematographer	\\N	{}	1374	49
5773	7	cinematographer	\\N	{}	1374	118
5854	3	actor	\\N	{"His son"}	1387	1061
5774	8	actress	\\N	{"The Daughter - at Eighteen"}	1374	695
5775	9	actor	\\N	{"The Best Man"}	1374	684
5776	1	writer	\\N	{}	1375	745
5777	10	actor	\\N	{"The Nephew"}	1376	863
5778	1	actress	\\N	{Indian}	1376	601
5779	2	actor	\\N	{Indian}	1376	619
5780	3	actor	\\N	{Indian}	1376	469
5781	4	actress	\\N	{Tourist}	1376	575
5782	5	director	\\N	{}	1376	467
5783	6	writer	\\N	{}	1376	472
5784	7	cinematographer	\\N	{}	1376	49
5785	8	actor	\\N	{Tourist}	1376	599
5786	9	actress	\\N	{Tourist}	1376	515
5787	10	actor	\\N	{"A Puritan"}	1377	466
5788	1	actress	\\N	{"The Sea Child"}	1377	575
5789	2	actress	\\N	{"The Sea Child's Mother"}	1377	612
5790	3	actor	\\N	{"The Trapper"}	1377	616
5791	4	actor	\\N	{"The Puritan"}	1377	516
5792	5	director	\\N	{}	1377	467
5793	6	writer	\\N	{}	1377	1078
5794	7	cinematographer	\\N	{}	1377	49
5795	8	actor	\\N	{Judge}	1377	685
5796	9	actor	\\N	{Judge}	1377	686
5797	1	director	\\N	{}	1378	486
5798	2	producer	producer	{}	1378	103
5799	10	actor	\\N	{"The Rescuer"}	1379	619
5800	1	actor	\\N	{"Mr. Randall"}	1379	863
5801	2	actress	\\N	{"Mrs. Randall"}	1379	683
5802	3	actress	\\N	{"The Randall Child"}	1379	470
5803	4	actress	\\N	{"The Friend"}	1379	535
5804	5	director	\\N	{}	1379	467
5805	6	writer	\\N	{}	1379	685
5806	7	cinematographer	\\N	{}	1379	49
5807	8	actor	\\N	{"The Wife's Visitor"}	1379	697
5808	9	actress	\\N	{"The Woman on the Beach"}	1379	957
5809	1	actor	\\N	{}	1380	925
5810	2	actress	\\N	{}	1380	512
5811	3	actor	\\N	{}	1380	1099
5812	4	director	\\N	{}	1380	977
5813	5	writer	story	{}	1380	1195
5814	6	producer	producer	{}	1380	71
5815	7	cinematographer	\\N	{}	1380	926
5816	1	director	\\N	{}	1381	85
5817	10	actress	\\N	{}	1382	1196
5818	1	actor	\\N	{"The Father"}	1382	685
5819	2	actor	\\N	{Tom}	1382	696
5820	3	actress	\\N	{Adele}	1382	508
5821	4	actress	\\N	{"The Maid"}	1382	612
5822	5	director	\\N	{}	1382	467
5823	6	writer	\\N	{}	1382	472
5824	7	cinematographer	\\N	{}	1382	49
5825	8	cinematographer	\\N	{}	1382	118
5826	9	actor	\\N	{"Among Friends"}	1382	882
5827	1	actor	\\N	{}	1383	203
5828	2	actor	\\N	{}	1383	1177
5829	3	actress	\\N	{}	1383	943
5830	4	actor	\\N	{}	1383	677
5831	1	actor	\\N	{"Cal Evans"}	1384	203
5832	2	actress	\\N	{"Gladys - the Ranchman's Daughter"}	1384	918
5833	3	actor	\\N	{"Jeff Sanders - the Fugitive"}	1384	920
5834	4	actor	\\N	{}	1384	675
5835	5	actor	\\N	{}	1384	924
5836	6	actor	\\N	{}	1384	1163
5837	7	actor	\\N	{}	1384	917
5838	8	actor	\\N	{}	1384	921
5839	10	actor	\\N	{"Charity Worker"}	1385	686
5840	1	actress	\\N	{"Miss Wilkins"}	1385	601
5841	2	actor	\\N	{"The Poor Husband"}	1385	644
5842	3	actress	\\N	{"The Poor Wife"}	1385	515
5843	4	actor	\\N	{"The Doctor"}	1385	693
5844	5	director	\\N	{}	1385	467
5845	6	writer	\\N	{}	1385	476
5846	7	cinematographer	\\N	{}	1385	49
5847	8	actor	\\N	{"The Tradesman"}	1385	685
5848	9	actor	\\N	{"The Bailiff"}	1385	1197
5849	1	actress	\\N	{}	1386	465
5850	2	actress	\\N	{}	1386	556
5851	3	director	\\N	{}	1386	858
5852	1	actor	\\N	{Bodeln}	1387	380
5853	2	actor	\\N	{"En konge"}	1387	518
5855	4	actress	\\N	{"En dronning"}	1387	1198
5856	5	actor	\\N	{"En ridder"}	1387	1199
5857	6	actress	\\N	{"Ridders daughter"}	1387	650
5858	10	actor	\\N	{"The Boy"}	1388	845
5859	1	actor	\\N	{George}	1388	696
5860	2	actress	\\N	{"George's Wife"}	1388	601
5861	3	actor	\\N	{}	1388	522
5862	4	actor	\\N	{"The Father (unconfirmed)"}	1388	958
5863	5	director	\\N	{}	1388	688
5864	6	writer	\\N	{}	1388	476
5865	7	producer	producer	{}	1388	467
5866	8	cinematographer	\\N	{}	1388	118
5867	9	actor	\\N	{"The Farmer"}	1388	911
5868	10	actor	\\N	{Indian}	1389	619
5869	1	actor	\\N	{"Gray Cloud"}	1389	940
5870	2	actress	\\N	{"Dove Eyes"}	1389	601
5871	3	actor	\\N	{"Dove Eyes' Father"}	1389	882
5872	4	actor	\\N	{"Dove Eyes' Rival Suitor"}	1389	599
5873	5	director	\\N	{}	1389	467
5874	6	writer	\\N	{}	1389	1200
5875	7	cinematographer	\\N	{}	1389	49
5876	8	actress	\\N	{Indian}	1389	515
5877	9	actor	\\N	{Indian}	1389	1201
5878	10	actress	\\N	{}	1390	503
5879	1	actress	\\N	{Mary}	1390	601
5880	2	actor	\\N	{Bill}	1390	616
5881	3	actor	\\N	{Joe}	1390	466
5882	4	actress	\\N	{"Mary - as a Child"}	1390	470
5883	5	director	\\N	{}	1390	467
5884	6	writer	\\N	{}	1390	472
5885	7	cinematographer	\\N	{}	1390	49
5886	8	actor	\\N	{"The Fisherman"}	1390	644
5887	9	actor	\\N	{"On Shore"}	1390	685
5888	1	director	\\N	{}	1391	486
5889	2	producer	producer	{}	1391	103
5890	1	director	\\N	{}	1392	486
5891	1	actor	\\N	{Jim}	1393	696
5892	2	director	\\N	{}	1393	881
5893	10	actor	\\N	{"At Party"}	1394	686
5894	1	actor	\\N	{"Albert Woodson"}	1394	616
5895	2	actress	\\N	{"Cora Irwin"}	1394	683
5896	3	actress	\\N	{"The Shepherdess"}	1394	564
5897	4	actor	\\N	{"The Shepherdess' Father"}	1394	644
5898	5	director	\\N	{}	1394	467
5899	6	writer	\\N	{}	1394	472
5900	7	cinematographer	\\N	{}	1394	49
5901	8	actress	\\N	{}	1394	506
5902	9	actor	\\N	{"At Party"}	1394	685
5903	10	cinematographer	\\N	{}	1395	118
5904	1	actor	\\N	{"Clarence Topfloor"}	1395	510
5905	2	actress	\\N	{Mabel}	1395	508
5906	3	actress	\\N	{"Mabel's Friend"}	1395	564
5907	4	actor	\\N	{"Hotel Staff"}	1395	736
5908	5	director	\\N	{}	1395	688
5909	6	writer	story "Transients in Arcadia"	{}	1395	768
5910	7	writer	\\N	{}	1395	472
5911	8	writer	scenario	{}	1395	1202
5912	9	producer	producer	{}	1395	467
5913	10	actor	\\N	{"Head of the Employment Agency"}	1396	516
5914	1	actress	\\N	{"Sunshine Sue"}	1396	629
5915	2	actor	\\N	{"Sunshine's Father"}	1396	644
5916	3	actress	\\N	{"Sunshine's Mother"}	1396	612
5917	4	actor	\\N	{"Tom - Sunshine's Suitor"}	1396	466
5918	5	director	\\N	{}	1396	467
5919	6	writer	\\N	{}	1396	572
5920	7	producer	producer	{}	1396	98
5921	8	cinematographer	\\N	{}	1396	49
5922	9	actor	\\N	{"Harry - the Summer Boarder"}	1396	863
5923	1	actor	\\N	{"Blink - the Baseball Fan"}	1397	923
5924	2	actress	\\N	{"Fanny - the Baseball Fan's Wife"}	1397	969
5925	3	actor	\\N	{"Baseball Fan"}	1397	1203
5926	4	actor	\\N	{}	1397	675
5927	5	director	\\N	{}	1397	203
5928	6	actor	\\N	{}	1397	223
5929	7	actor	\\N	{}	1397	678
5930	8	actor	\\N	{}	1397	1163
5931	9	actor	\\N	{}	1397	968
5932	1	actor	\\N	{}	1398	939
5933	2	actress	\\N	{}	1398	1057
5934	3	director	\\N	{}	1398	429
5935	4	producer	producer	{}	1398	200
5936	10	actor	\\N	{Nobleman}	1399	599
5937	1	actress	\\N	{"Lady Margaret"}	1399	966
5938	2	actor	\\N	{"Lady Margaret's Husband"}	1399	469
5939	3	actress	\\N	{"Lady Clarissa"}	1399	506
5940	4	actor	\\N	{Soldier}	1399	882
5941	5	director	\\N	{}	1399	467
5942	6	writer	\\N	{}	1399	472
5943	7	cinematographer	\\N	{}	1399	49
5944	8	actress	\\N	{Noblewoman}	1399	772
5945	9	actor	\\N	{Servant}	1399	581
5946	1	director	\\N	{}	1400	85
5947	1	actor	\\N	{"Shorty Blair"}	1401	923
5948	2	actor	\\N	{}	1401	920
5949	3	actor	\\N	{}	1401	676
5950	4	actor	\\N	{}	1401	921
5951	5	director	\\N	{}	1401	203
5952	6	actor	\\N	{}	1401	924
5953	10	actress	\\N	{}	1402	848
5954	1	actress	\\N	{"The Girl"}	1402	508
5955	2	actor	\\N	{"The Tenderfoot"}	1402	469
5956	3	actor	\\N	{"A Cowboy"}	1402	697
5957	4	actor	\\N	{"A Cowboy"}	1402	599
5958	5	director	\\N	{}	1402	688
5959	6	producer	producer	{}	1402	467
5960	7	actor	\\N	{}	1402	644
5961	8	actor	\\N	{"The Sheriff"}	1402	911
5962	9	actor	\\N	{"The Boy"}	1402	845
5963	10	actor	\\N	{Cowboy}	1403	685
5964	1	actor	\\N	{"Charley Lee - the Chink at Golden Gulch"}	1403	393
5965	2	actress	\\N	{"Miss Dean"}	1403	564
5966	3	actor	\\N	{"Bud Miller"}	1403	863
5967	4	actor	\\N	{"Gentleman Jim Dandy"}	1403	599
5968	5	director	\\N	{}	1403	467
5969	6	writer	\\N	{}	1403	1078
5970	7	cinematographer	\\N	{}	1403	49
5971	8	actor	\\N	{"The Mail Carrier"}	1403	466
5972	9	actress	\\N	{Extra}	1403	515
5973	10	actress	\\N	{"At Party"}	1404	414
5974	1	actor	\\N	{"Edgar Thurston"}	1404	616
5975	2	actress	\\N	{"Laura Edmonds"}	1404	503
5976	3	actress	\\N	{"The Actress"}	1404	1057
5977	4	actor	\\N	{"The Friend"}	1404	863
5978	5	director	\\N	{}	1404	467
5979	6	writer	\\N	{}	1404	472
5980	7	cinematographer	\\N	{}	1404	49
5981	8	actress	\\N	{"Laura's Friend"}	1404	575
5982	9	actor	\\N	{"The Doctor"}	1404	516
5983	10	actor	\\N	{"In the Bar"}	1405	697
5984	1	actress	\\N	{Myrtle}	1405	601
5985	2	actor	\\N	{Gus}	1405	882
5986	3	actor	\\N	{Estrada}	1405	616
5987	4	actress	\\N	{"The Hotelkeeper's Wife"}	1405	414
5988	5	director	\\N	{}	1405	467
5989	6	writer	\\N	{}	1405	472
5990	7	cinematographer	\\N	{}	1405	49
5991	8	actor	\\N	{"The Priest"}	1405	644
5992	9	actor	\\N	{}	1405	686
5993	1	director	\\N	{}	1406	486
5994	1	director	\\N	{}	1407	881
5995	10	actor	\\N	{"Jimmie McIntyre - a Jockey"}	1408	1204
5996	1	actor	\\N	{"Bullets Brown"}	1408	203
5997	2	actress	\\N	{"Agnes Dudley - the Storekeeper's Daughter"}	1408	1205
5998	3	actor	\\N	{}	1408	1203
5999	4	actor	\\N	{}	1408	921
6000	5	actor	\\N	{}	1408	923
6001	6	actor	\\N	{}	1408	917
6002	7	actor	\\N	{}	1408	676
6003	8	actor	\\N	{}	1408	920
6004	9	actress	\\N	{}	1408	918
6005	1	director	\\N	{}	1409	486
6006	1	actor	\\N	{"Leonardo da Vinci"}	1410	1069
6007	2	actress	\\N	{"Mona Lisa"}	1410	1206
6008	3	actor	\\N	{"François I"}	1410	1207
6009	4	actress	\\N	{"La belle ferronniere"}	1410	1208
6010	5	director	\\N	{}	1410	1153
6011	6	writer	\\N	{}	1410	745
6012	7	cinematographer	\\N	{}	1410	1209
6013	8	actress	\\N	{}	1410	864
6014	1	actor	\\N	{}	1411	203
6015	1	director	\\N	{}	1412	486
6016	2	producer	producer	{}	1412	103
6017	1	actress	\\N	{"The Young Woman Con Artist"}	1413	1210
6018	2	actor	\\N	{"One of the Paradise Gulch cowboys"}	1413	939
6019	3	director	\\N	{}	1413	429
6020	4	producer	producer	{}	1413	200
6021	1	director	\\N	{}	1414	486
6022	2	producer	producer	{}	1414	103
6023	1	director	\\N	{}	1415	198
6024	10	actor	\\N	{Escort}	1416	393
6025	1	actress	\\N	{"Molly Hendricks"}	1416	601
6026	2	actor	\\N	{"Bob Gorman"}	1416	469
6027	3	actor	\\N	{"Mr. Hendricks"}	1416	516
6028	4	actress	\\N	{"Mrs. Hendricks"}	1416	515
6029	5	director	\\N	{}	1416	467
6030	6	writer	\\N	{}	1416	472
6031	7	cinematographer	\\N	{}	1416	49
6032	8	actor	\\N	{Grandfather}	1416	644
6033	9	actor	\\N	{"Ranch Hand"}	1416	599
6034	10	actor	\\N	{Pedro}	1417	616
6035	1	actor	\\N	{Jose}	1417	469
6036	2	actor	\\N	{Manuel}	1417	599
6037	3	actress	\\N	{"The Mother"}	1417	515
6038	4	actress	\\N	{"Red Rose"}	1417	503
6039	5	director	\\N	{}	1417	467
6040	6	writer	\\N	{}	1417	1211
6041	7	cinematographer	\\N	{}	1417	49
6042	8	cinematographer	\\N	{}	1417	118
6043	9	actor	\\N	{"A Suitor","A Mexican"}	1417	863
6044	1	actress	\\N	{Gladys}	1418	474
6045	2	actor	\\N	{"The Real Father"}	1418	469
6046	3	actor	\\N	{"The Adopted Father"}	1418	1212
6047	4	director	\\N	{}	1418	468
6048	5	producer	producer	{}	1418	119
6049	10	actress	\\N	{"1st Maid"}	1419	535
6050	1	actress	\\N	{"Mrs. Weston"}	1419	699
6051	2	actor	\\N	{"Mr. Weston"}	1419	686
6052	3	actress	\\N	{"One of the Waifs"}	1419	707
6053	4	actress	\\N	{"Mother Ignatius"}	1419	515
6054	5	director	\\N	{}	1419	467
6055	6	writer	\\N	{}	1419	1200
6056	7	cinematographer	\\N	{}	1419	49
6057	8	actor	\\N	{"The Doctor"}	1419	685
6058	9	actor	\\N	{"The Butler"}	1419	619
6059	10	actress	\\N	{Villager}	1420	515
6060	1	actor	\\N	{"The Fisherman"}	1420	469
6061	2	actress	\\N	{"The Fisherman's Wife"}	1420	414
6062	3	actress	\\N	{"The Daughter as Small Child"}	1420	470
6063	4	actress	\\N	{"The Daughter as an Adult"}	1420	601
6064	5	director	\\N	{}	1420	467
6065	6	writer	poem "The Three Fishers"	{}	1420	1213
6066	7	cinematographer	\\N	{}	1420	49
6067	8	actor	\\N	{"The Daughter's Sweetheart"}	1420	863
6068	9	actor	\\N	{"The Rescuer"}	1420	599
6069	10	actor	\\N	{Shelby}	1421	990
6070	1	actress	\\N	{Topsy}	1421	556
6071	2	actress	\\N	{Eliza}	1421	465
6072	3	actor	\\N	{"Uncle Tom"}	1421	820
6073	4	actress	\\N	{"Ophelia St. Clare"}	1421	579
6074	5	director	\\N	{}	1421	93
6075	6	writer	novel "Uncle Tom's Cabin"	{}	1421	229
6076	7	writer	scenario	{}	1421	776
6077	8	writer	scenario	{}	1421	1098
6078	9	actress	\\N	{Eva}	1421	1214
6079	10	actor	\\N	{"A Marriage Witness"}	1422	1215
6080	1	actor	\\N	{"A Cowboy"}	1422	203
6081	2	actor	\\N	{"A Cowboy"}	1422	676
6082	3	actor	\\N	{"A Cowboy & Minister"}	1422	847
6083	4	actress	\\N	{"The Girl"}	1422	943
6084	5	cinematographer	\\N	{}	1422	758
6085	6	actor	\\N	{"An Old Sweetheart"}	1422	917
6086	7	actor	\\N	{}	1422	678
6087	8	actor	\\N	{"The Bartender"}	1422	675
6088	9	actor	\\N	{"A Marriage Witness"}	1422	968
6089	10	actor	\\N	{"At Lucky Jim's Place"}	1423	882
6090	1	actor	\\N	{"John Bradley"}	1423	469
6091	2	actress	\\N	{"Mrs. John Bradley"}	1423	508
6092	3	actress	\\N	{"One of the Bradley Children"}	1423	470
6093	4	actor	\\N	{"1st Gambler"}	1423	619
6094	5	director	\\N	{}	1423	467
6095	6	cinematographer	\\N	{}	1423	49
6096	7	actor	\\N	{"2nd Gambler"}	1423	599
6097	8	actor	\\N	{"The Marshal"}	1423	516
6098	9	actor	\\N	{"The Priest"}	1423	644
6099	1	actor	\\N	{Bartwell}	1424	203
6100	2	actor	\\N	{"A Ranch Hand"}	1424	676
6101	3	actor	\\N	{Walker}	1424	917
6102	4	actress	\\N	{}	1424	918
6103	1	actor	\\N	{}	1425	425
6104	2	actress	\\N	{}	1425	426
6105	3	actor	\\N	{}	1425	427
6106	4	director	\\N	{}	1425	429
6107	5	writer	writer	{}	1425	1216
6108	6	producer	producer	{}	1425	200
6109	10	actor	\\N	{Victim}	1426	510
6110	1	actor	\\N	{"Country Lout"}	1426	696
6111	2	actress	\\N	{Victim}	1426	508
6112	3	actor	\\N	{Victim}	1426	697
6113	4	actor	\\N	{Victim}	1426	882
6114	5	director	\\N	{}	1426	688
6115	6	producer	producer	{}	1426	467
6116	7	cinematographer	\\N	{}	1426	118
6117	8	actor	\\N	{Victim}	1426	393
6118	9	actor	\\N	{Victim}	1426	911
6119	10	actor	\\N	{"The Policeman"}	1427	637
6120	1	actor	\\N	{"The Usurer"}	1427	516
6121	2	actress	\\N	{"The Usurer's Sister"}	1427	699
6122	3	actor	\\N	{"Bill Collector"}	1427	619
6123	4	actor	\\N	{"Bill Collector"}	1427	393
6124	5	director	\\N	{}	1427	467
6125	6	writer	\\N	{}	1427	476
6126	7	cinematographer	\\N	{}	1427	49
6127	8	actor	\\N	{"Bill Collector"}	1427	466
6128	9	actress	\\N	{"The Maid"}	1427	612
6129	10	actor	\\N	{"Graf Otto"}	1428	904
6130	1	actor	\\N	{}	1428	893
6131	2	actor	\\N	{Bödvar}	1428	894
6132	3	actress	\\N	{Page}	1428	1217
6133	4	actor	\\N	{Westhard}	1428	895
6134	5	director	\\N	{}	1428	897
6135	6	writer	novel	{}	1428	1218
6136	7	cinematographer	\\N	{}	1428	1219
6137	8	actor	\\N	{"Valdemar Sejr"}	1428	896
6138	9	actress	\\N	{}	1428	1016
6139	1	actor	\\N	{"Guy Temple"}	1429	1220
6140	2	actress	\\N	{"Loie - the Vampire"}	1429	1210
6141	3	writer	poem	{}	1429	1221
6142	4	producer	producer	{}	1429	200
6143	5	cinematographer	\\N	{}	1429	1222
6144	1	actor	\\N	{"Walt Rooney, Convict No. 999"}	1430	203
6145	2	actor	\\N	{}	1430	676
6146	3	actress	\\N	{}	1430	943
6147	10	actress	\\N	{}	1431	506
6148	1	actor	\\N	{"The Husband"}	1431	684
6149	2	actress	\\N	{"The Wife"}	1431	508
6150	3	actress	\\N	{"The Wife's Friend"}	1431	601
6151	4	actor	\\N	{"The Husband's Valet"}	1431	685
6152	5	director	\\N	{}	1431	467
6153	6	writer	\\N	{}	1431	472
6154	7	cinematographer	\\N	{}	1431	49
6155	8	actress	\\N	{"The Maid"}	1431	772
6156	9	actor	\\N	{"The Minister"}	1431	686
6157	10	actress	\\N	{"Britta, daughter of Ola"}	1432	1223
6158	1	actor	\\N	{Ironmaster}	1432	1224
6159	2	actor	\\N	{"Erik, son of Sven Ersson"}	1432	1225
6160	3	actor	\\N	{"Wilhelm, Son of the ironmaster"}	1432	1226
6161	4	actor	\\N	{Dean}	1432	1227
6162	5	writer	play "Wermlenningarne"	{}	1432	1228
6163	6	cinematographer	\\N	{}	1432	1229
6247	5	director	\\N	{}	1445	827
6164	7	actor	\\N	{"Sven Erson in Hult"}	1432	1230
6165	8	actress	\\N	{"Lisa, Wife of Sven Ersson"}	1432	1231
6166	9	actor	\\N	{"Ola in Gyllby"}	1432	1232
6167	10	actor	\\N	{"The Chief of Police's Aide","In Restaurant"}	1433	685
6168	1	actor	\\N	{"The Chief of Police"}	1433	516
6169	2	actress	\\N	{"The Chief of Police's Wife"}	1433	523
6170	3	actor	\\N	{"The Chief of Police's Son - as a Boy"}	1433	845
6171	4	actor	\\N	{"The Chief of Police's Son - as an Adult"}	1433	863
6172	5	director	\\N	{}	1433	467
6173	6	writer	\\N	{}	1433	1082
6174	7	cinematographer	\\N	{}	1433	49
6175	8	actress	\\N	{"The Chief of Police's Son's Fiancée"}	1433	601
6176	9	actress	\\N	{"The Chief of Police's Son's Fiancée's Mother"}	1433	699
6177	10	actress	\\N	{"At Dance"}	1434	414
6178	1	actor	\\N	{"The Young Priest"}	1434	616
6179	2	actor	\\N	{"The Old Priest"}	1434	516
6180	3	actress	\\N	{"The Modern Magdalene"}	1434	508
6181	4	actress	\\N	{"The Landlady"}	1434	1233
6182	5	director	\\N	{}	1434	467
6183	6	writer	\\N	{}	1434	472
6184	7	cinematographer	\\N	{}	1434	49
6185	8	actress	\\N	{"The Young Girl"}	1434	575
6186	9	actor	\\N	{"The Bell Ringer"}	1434	644
6187	1	director	\\N	{}	1435	486
6188	1	actor	\\N	{}	1436	203
6189	2	actress	\\N	{"The Ranch Boss's Niece"}	1436	943
6190	3	actor	\\N	{"The Ranch Boss"}	1436	677
6191	4	actor	\\N	{}	1436	680
6192	5	cinematographer	\\N	{}	1436	758
6193	6	actor	\\N	{}	1436	681
6194	1	actor	\\N	{}	1437	203
6195	2	actor	\\N	{}	1437	679
6196	1	actor	\\N	{}	1438	924
6197	2	actress	\\N	{}	1438	943
6198	3	actor	\\N	{}	1438	676
6199	4	actor	\\N	{}	1438	917
6200	5	director	\\N	{}	1438	203
6201	1	actor	\\N	{"Big Bill Hastings"}	1439	203
6202	2	actor	\\N	{"The Sheriff"}	1439	920
6203	3	actor	\\N	{}	1439	924
6204	4	actor	\\N	{}	1439	917
6205	5	actor	\\N	{}	1439	678
6206	6	actor	\\N	{}	1439	921
6207	7	actor	\\N	{}	1439	923
6208	8	actor	\\N	{}	1439	677
6209	9	actor	\\N	{}	1439	223
6210	10	actor	\\N	{"A Farmhand"}	1440	573
6211	1	actress	\\N	{Martha}	1440	601
6212	2	actress	\\N	{Milly}	1440	564
6213	3	actor	\\N	{"The Young Gypsy"}	1440	946
6214	4	actor	\\N	{"The Father"}	1440	686
6215	5	director	\\N	{}	1440	467
6216	6	writer	\\N	{}	1440	472
6217	7	composer	\\N	{}	1440	1234
6218	8	actress	\\N	{"A Gypsy"}	1440	612
6219	9	actress	\\N	{"The Spinster"}	1440	515
6220	1	director	\\N	{}	1441	198
6221	1	actress	\\N	{Mary}	1442	601
6222	2	actor	\\N	{Tom}	1442	696
6223	3	actor	\\N	{Howard}	1442	946
6224	4	actor	\\N	{"The Butler"}	1442	510
6225	5	director	\\N	{}	1442	688
6226	6	writer	\\N	{}	1442	476
6227	7	producer	producer	{}	1442	467
6228	8	cinematographer	\\N	{}	1442	118
6229	1	actress	\\N	{"Mrs. Madison"}	1443	1131
6230	2	director	\\N	{}	1443	1055
6231	3	producer	producer	{}	1443	1132
6232	10	actor	\\N	{"The Good Samaritan"}	1444	685
6233	1	actress	\\N	{Betty}	1444	601
6234	2	actor	\\N	{Harry}	1444	466
6235	3	actress	\\N	{}	1444	414
6236	4	actor	\\N	{}	1444	693
6237	5	director	\\N	{}	1444	688
6238	6	writer	\\N	{}	1444	476
6239	7	producer	producer	{}	1444	467
6240	8	cinematographer	\\N	{}	1444	49
6241	9	actress	\\N	{"Old Maid"}	1444	515
6242	10	actor	\\N	{"En ven af huset"}	1445	747
6243	1	actress	\\N	{"Jacqueline Fleuriot"}	1445	1235
6244	2	actor	\\N	{"Hr. Fleuriot"}	1445	518
6245	3	actor	\\N	{}	1445	517
6246	4	actress	\\N	{}	1445	839
6248	6	writer	play "Madame X"	{}	1445	1236
6249	7	cinematographer	\\N	{}	1445	319
6250	8	actor	\\N	{}	1445	781
6251	9	actor	\\N	{}	1445	1237
6252	10	actor	\\N	{}	1446	686
6253	1	actress	\\N	{Peggy}	1446	601
6254	2	actress	\\N	{"Peggy's Mother"}	1446	612
6255	3	actor	\\N	{"The Lord"}	1446	616
6256	4	actress	\\N	{"The Maid"}	1446	523
6257	5	director	\\N	{}	1446	467
6258	6	writer	\\N	{}	1446	476
6259	7	cinematographer	\\N	{}	1446	49
6260	8	actress	\\N	{"Woman at the Inn"}	1446	515
6261	9	actor	\\N	{"A Servant"}	1446	685
6262	10	actress	\\N	{}	1447	506
6263	1	actor	\\N	{"Frederick Wallace"}	1447	572
6264	2	actress	\\N	{"Mrs. Frederick Wallace"}	1447	683
6265	3	actress	\\N	{"Vera Blair"}	1447	957
6266	4	actor	\\N	{"A Friend"}	1447	693
6267	5	director	\\N	{}	1447	467
6268	6	writer	\\N	{}	1447	1238
6269	7	cinematographer	\\N	{}	1447	49
6270	8	actor	\\N	{"A Servant"}	1447	619
6271	9	actress	\\N	{"A Servant"}	1447	535
6272	10	actor	\\N	{Detective,Policeman}	1448	697
6273	1	actor	\\N	{"Harry Townsend"}	1448	696
6274	2	actor	\\N	{"James Petersby"}	1448	516
6275	3	actress	\\N	{"Mary Petersby - James' Daughter"}	1448	601
6276	4	actor	\\N	{"The Minister"}	1448	684
6277	5	director	\\N	{}	1448	467
6278	6	cinematographer	\\N	{}	1448	49
6279	7	actress	\\N	{"The Detective"}	1448	414
6280	8	actress	\\N	{}	1448	506
6281	9	actress	\\N	{Maid}	1448	515
6282	1	actress	\\N	{}	1449	1131
6283	2	actor	\\N	{"Carrol Morten"}	1449	1239
6284	3	director	\\N	{}	1449	1055
6285	4	producer	producer	{}	1449	1132
6286	5	cinematographer	\\N	{}	1449	1240
6287	1	director	\\N	{}	1450	486
6288	2	producer	producer	{}	1450	103
6289	10	actress	\\N	{"Glinda the Good"}	1451	1241
6290	1	actress	\\N	{"Dorothy Gale"}	1451	962
6291	2	actor	\\N	{"Wizard of Oz and King"}	1451	425
6292	3	actress	\\N	{"Aunt Em"}	1451	1242
6293	4	actor	\\N	{Scarecrow}	1451	424
6294	5	director	\\N	{}	1451	561
6295	6	writer	novel "The Wonderful Wizard of Oz"	{}	1451	557
6296	7	producer	producer	{}	1451	200
6297	8	actress	\\N	{Momba}	1451	1243
6298	9	actress	\\N	{"Union Enforcer"}	1451	1244
6299	1	director	\\N	{}	1452	486
6300	2	producer	producer	{}	1452	103
6301	1	actress	\\N	{Grace}	1454	601
6302	2	actor	\\N	{George}	1454	1245
6303	3	actor	\\N	{"Farmer Howard"}	1454	1246
6304	4	director	\\N	{}	1454	617
6305	5	producer	producer	{}	1454	1247
6306	10	actor	\\N	{}	1455	921
6307	1	actor	\\N	{"The Cowboy"}	1455	203
6308	2	actress	\\N	{"Jennie Lee"}	1455	918
6309	3	actor	\\N	{"Jennie's Father"}	1455	920
6310	4	actor	\\N	{"The Cowboy's Friend"}	1455	675
6311	5	writer	scenario	{}	1455	1248
6312	6	cinematographer	\\N	{}	1455	758
6313	7	actor	\\N	{}	1455	676
6314	8	actor	\\N	{}	1455	924
6315	9	actor	\\N	{}	1455	919
6316	1	director	\\N	{}	1456	486
6317	10	actor	\\N	{"The Farmer"}	1457	637
6318	1	actress	\\N	{"Little Billy"}	1457	1249
6319	2	actor	\\N	{"First Tramp"}	1457	567
6320	3	actor	\\N	{"Second Tramp"}	1457	946
6321	4	actor	\\N	{"Rich Man"}	1457	599
6322	5	director	\\N	{}	1457	467
6323	6	writer	\\N	{}	1457	956
6324	7	cinematographer	\\N	{}	1457	49
6325	8	actress	\\N	{"Rich Woman"}	1457	523
6326	9	actress	\\N	{"The Maid"}	1457	515
6327	1	actor	\\N	{"Uncle John - the Bachelor"}	1458	1250
6328	2	actress	\\N	{"The Bachelor's Niece"}	1458	1251
6329	1	actor	\\N	{Inventor}	1459	626
6330	2	actress	\\N	{"Inventor's Wife"}	1459	992
6331	3	actor	\\N	{"Money Lender"}	1459	518
6332	4	actor	\\N	{}	1459	1087
6333	5	director	\\N	{}	1459	689
6334	6	writer	\\N	{}	1459	1252
6335	7	actor	\\N	{}	1459	384
6336	8	actor	\\N	{}	1459	782
6337	9	actor	\\N	{}	1459	1064
6338	10	actor	\\N	{}	1460	510
6339	1	actor	\\N	{"Mr. Brown"}	1460	466
6340	2	actress	\\N	{"Mrs. Brown (unconfirmed)"}	1460	1196
6341	3	actor	\\N	{"A Friend of Mr. Brown's"}	1460	685
6342	4	actor	\\N	{"A Friend of Mr. Brown's"}	1460	573
6343	5	director	\\N	{}	1460	688
6344	6	writer	\\N	{}	1460	1238
6345	7	producer	producer	{}	1460	467
6346	8	cinematographer	\\N	{}	1460	118
6347	9	actor	\\N	{}	1460	393
6348	1	actor	\\N	{"Hank Denby - the Miner"}	1461	1245
6349	2	actress	\\N	{"Mrs. Denby - the Miner's Wife"}	1461	1253
6350	3	director	\\N	{}	1461	617
6351	4	director	\\N	{}	1461	1254
6352	5	writer	scenario	{}	1461	1255
6353	6	producer	producer	{}	1461	1247
6354	1	actress	\\N	{Aida}	1462	465
6355	2	actor	\\N	{Radames}	1462	769
6356	3	actress	\\N	{Amneris}	1462	1256
6357	4	actor	\\N	{"King of Egypt"}	1462	519
6358	5	director	\\N	{}	1462	1257
6359	6	director	\\N	{}	1462	544
6360	7	actor	\\N	{"King of Ethiopia, Aida's Father"}	1462	1258
6361	8	actor	\\N	{"High Priest of Isis"}	1462	856
6362	1	actress	\\N	{}	1463	1259
6363	2	actor	\\N	{}	1463	1260
6364	3	actor	\\N	{}	1463	1261
6365	4	actor	\\N	{}	1463	1262
6366	5	director	\\N	{}	1463	1263
6367	6	cinematographer	\\N	{}	1463	1264
6368	1	actor	\\N	{}	1464	1265
6369	2	director	\\N	{}	1464	595
6370	3	director	\\N	{}	1464	1266
6371	4	cinematographer	\\N	{}	1464	85
6372	1	director	\\N	{}	1465	486
6373	1	actor	\\N	{Jack}	1466	1203
6374	2	actress	\\N	{"The Ranchman's Daughter"}	1466	1267
6375	3	actor	\\N	{"The Ranchman"}	1466	1268
6376	4	actor	\\N	{"The Creditor"}	1466	1269
6377	5	director	\\N	{}	1466	1270
6378	1	actress	\\N	{"The Angel of the Slums"}	1467	1131
6379	2	actor	\\N	{"The Leader of the Gang"}	1467	1271
6380	3	actress	\\N	{}	1467	1272
6381	4	actress	\\N	{}	1467	1273
6382	5	director	\\N	{}	1467	1055
6383	6	writer	\\N	{}	1467	1274
6384	7	producer	producer	{}	1467	119
6385	1	actor	\\N	{"Arizona Bill"}	1468	760
6386	2	actress	\\N	{"Nancy - the Rancher's Daughter"}	1468	1275
6387	3	director	\\N	{}	1468	1097
6388	1	actress	\\N	{"Artful Kate Stanley"}	1469	601
6389	2	actor	\\N	{"Lt. Hamilton"}	1469	576
6390	3	actor	\\N	{}	1469	770
6391	4	director	\\N	{}	1469	617
6392	5	producer	producer	{}	1469	1247
6393	6	cinematographer	\\N	{}	1469	1276
6394	1	actor	\\N	{"The Husband"}	1470	572
6395	2	actress	\\N	{"The Wife"}	1470	523
6396	3	actress	\\N	{"Bobby - the Young Son"}	1470	1249
6397	4	director	\\N	{}	1470	467
6398	5	writer	\\N	{}	1470	1277
6399	6	cinematographer	\\N	{}	1470	49
6400	1	actress	\\N	{"Mrs. Warren"}	1471	601
6401	2	actor	\\N	{"Dan Nolan - the Burglar"}	1471	1278
6402	3	director	\\N	{}	1471	617
6403	4	producer	producer	{}	1471	1247
6404	1	actor	\\N	{"Gilbert Randall"}	1472	203
6405	1	actor	\\N	{"Edward, the Duke's Nephew"}	1473	1278
6406	2	actor	\\N	{"Duke of Chatmoss"}	1473	646
6407	3	actress	\\N	{Irma}	1473	580
6408	4	actor	\\N	{"The Hunchback"}	1473	770
6409	5	director	\\N	{}	1473	617
6410	6	producer	producer	{}	1473	1247
6411	7	actress	\\N	{"One of the Ladies of the Court"}	1473	601
6412	1	actress	\\N	{"Miss Gray"}	1474	465
6413	2	actor	\\N	{"Roger Hewitt"}	1474	769
6414	3	actor	\\N	{Murphy}	1474	1279
6415	4	actress	\\N	{"Mrs. Murphy"}	1474	245
6416	5	actress	\\N	{"Mike Murphy - the Lame Child"}	1474	1280
6417	6	actress	\\N	{"One of the Murphy Children"}	1474	1281
6418	7	actor	\\N	{"One of the Murphy Children"}	1474	891
6419	8	actress	\\N	{"One of the Murphy Children"}	1474	1282
6420	1	actor	\\N	{}	1475	1283
6421	2	actress	\\N	{}	1475	1035
6422	3	director	\\N	{}	1475	811
6423	1	director	\\N	{}	1476	46
6424	2	writer	book	{}	1476	1284
6425	3	writer	translation	{}	1476	1285
6426	10	actor	\\N	{"Treasurer of the Tuberculosis Committee"}	1477	1286
6427	1	actor	\\N	{"John Bond - a Politician"}	1477	243
6428	2	actress	\\N	{"Mrs. John Bond"}	1477	1287
6429	3	actress	\\N	{"Nellie O'Brien"}	1477	465
6430	4	actor	\\N	{"George O'Brien"}	1477	248
6431	5	director	\\N	{}	1477	1257
6432	6	director	\\N	{}	1477	1288
6433	7	writer	written by	{}	1477	858
6434	8	actor	\\N	{"A Younger O'Brien"}	1477	1289
6435	9	actress	\\N	{"A Younger O'Brien"}	1477	1280
6436	10	actor	\\N	{}	1478	427
6437	1	actress	\\N	{"Helen Wilton"}	1478	1057
6438	2	actor	\\N	{"Will Carson"}	1478	1220
6439	3	actor	\\N	{"John Wilton"}	1478	939
6440	4	actor	\\N	{}	1478	1290
6441	5	director	\\N	{}	1478	429
6442	6	director	\\N	{}	1478	561
6443	7	writer	\\N	{}	1478	1216
6444	8	producer	producer	{}	1478	200
6445	9	actor	\\N	{"Helen's Father"}	1478	964
6446	1	actress	\\N	{"Sadie Allen"}	1479	601
6447	2	actor	\\N	{"George Dupont"}	1479	576
6448	3	actor	\\N	{}	1479	1278
6449	4	director	\\N	{}	1479	617
6450	5	producer	producer	{}	1479	1247
6451	1	actor	\\N	{"Walker - the Backwoodsman"}	1480	203
6452	2	actress	\\N	{"Mrs. Walker - the Wife"}	1480	918
6453	3	actor	\\N	{"The Author"}	1480	919
6454	1	actor	\\N	{"Harry Perkins"}	1481	203
6455	2	actor	\\N	{"'Bad' McGrew"}	1481	919
6456	3	actor	\\N	{}	1481	924
6457	4	actress	\\N	{"Molly Martin"}	1481	918
6458	5	actor	\\N	{}	1481	921
6459	1	actor	\\N	{"Bad Man Dan Quigley"}	1482	203
6460	2	actress	\\N	{"Alice Selling"}	1482	918
6461	3	actor	\\N	{"The Sheriff"}	1482	924
6462	4	actor	\\N	{}	1482	920
6463	5	actress	\\N	{}	1482	1291
6464	1	director	\\N	{}	1483	486
6465	10	actor	\\N	{"License Bureau Worker"}	1484	685
6466	1	actor	\\N	{"The Baron","A Waiter"}	1484	599
6467	2	actress	\\N	{"The Heiress"}	1484	1292
6468	3	actor	\\N	{"The Baron's Friend"}	1484	946
6469	4	actress	\\N	{Mother}	1484	699
6470	5	director	\\N	{}	1484	510
6471	6	writer	\\N	{}	1484	693
6472	7	cinematographer	\\N	{}	1484	873
6473	8	actor	\\N	{"Boarding House Dupe"}	1484	1089
6474	9	actress	\\N	{"Woman at License Bureau"}	1484	515
6475	10	actor	\\N	{}	1485	604
6476	1	actor	\\N	{"George Washington - Commander and Chief"}	1485	1293
6477	2	actress	\\N	{"Martha Washington"}	1485	642
6478	3	actor	\\N	{"Col. William Prescott"}	1485	1258
6479	4	actor	\\N	{"Jack - a Colonial Officer"}	1485	1152
6480	5	director	\\N	{}	1485	1257
6481	6	director	\\N	{}	1485	544
6482	7	writer	\\N	{}	1485	1294
6483	8	actor	\\N	{"General George Washington"}	1485	519
6484	9	actor	\\N	{}	1485	769
6485	1	actor	\\N	{"Lord Nelson"}	1486	1295
6486	2	actor	\\N	{"Lieutenant Prescott"}	1486	520
6487	3	actor	\\N	{"Captain Hardy"}	1486	1296
6488	4	actor	\\N	{"The Ship's Surgeon"}	1486	519
6489	5	director	\\N	{}	1486	544
6490	6	cinematographer	\\N	{}	1486	1297
6491	7	actress	\\N	{"Lt. Prescott's Fiancée"}	1486	545
6492	8	actor	\\N	{"Undetermined Role"}	1486	1298
6572	3	actor	\\N	{}	1500	920
6493	10	actor	\\N	{"A Union Officer","At Farewell"}	1487	685
6494	1	actor	\\N	{"The Boy - the Cowardly Soldier"}	1487	863
6495	2	actress	\\N	{"The Boy's Sweetheart"}	1487	695
6496	3	actor	\\N	{"The Union Commander"}	1487	958
6497	4	actor	\\N	{"Undetermined Secondary Role"}	1487	1299
6498	5	director	\\N	{}	1487	467
6499	6	cinematographer	\\N	{}	1487	49
6500	7	actor	\\N	{"A Union Officer"}	1487	693
6501	8	actor	\\N	{"Wagon Driver"}	1487	609
6502	9	actress	\\N	{"In the Town"}	1487	515
6503	1	actor	\\N	{"Gar el Hama"}	1488	1062
6504	2	director	\\N	{}	1488	1300
6505	3	cinematographer	\\N	{}	1488	319
6506	1	actress	\\N	{"Florence Williams"}	1489	601
6507	2	actor	\\N	{"Billy Thompson"}	1489	576
6508	3	director	\\N	{}	1489	617
6509	4	director	\\N	{}	1489	1254
6510	5	producer	producer	{}	1489	1247
6511	1	actor	\\N	{"Harold - the Dashing City Chap"}	1490	1301
6512	2	actress	\\N	{"Dotty - the Farmer's Daughter"}	1490	761
6513	3	actor	\\N	{"Farmer Russell"}	1490	766
6514	4	actress	\\N	{"Mrs. Russell - the Farmer's Wife"}	1490	1302
6515	5	director	\\N	{}	1490	1303
6516	6	producer	producer	{}	1490	765
6517	7	actor	\\N	{"Gordon - the Ranch Foreman"}	1490	1150
6518	8	actress	\\N	{}	1490	762
6519	1	actor	\\N	{"Louis Perry - a Reformed Crook"}	1491	1278
6520	2	actress	\\N	{"Lillian Garvey - a Salvation Army Lass"}	1491	601
6521	3	actor	\\N	{}	1491	576
6522	4	director	\\N	{}	1491	617
6523	5	producer	producer	{}	1491	1247
6524	6	cinematographer	\\N	{}	1491	1276
6525	1	actress	\\N	{Betty}	1492	1292
6526	2	actress	\\N	{"Margaret - Betty's Older Sister"}	1492	1304
6527	3	actor	\\N	{}	1492	1305
6528	4	actor	\\N	{}	1492	1306
6529	1	actor	\\N	{Mephisto}	1493	1307
6530	2	actor	\\N	{"Bill Bumper"}	1493	1308
6531	3	actress	\\N	{Marguerite}	1493	1309
6532	4	writer	play "Faust"	{}	1493	104
6533	1	actor	\\N	{"Sir Daniel Brackley"}	1494	519
6534	2	actress	\\N	{"Joanna - Brackley's Ward"}	1494	1310
6535	3	actor	\\N	{"Dick Shelton - Brackley's Nephew"}	1494	248
6536	4	actor	\\N	{"Lord Shoreby"}	1494	1311
6537	5	director	\\N	{}	1494	1257
6538	6	writer	\\N	{}	1494	1312
6539	7	writer	novel "The Black Arrow"	{}	1494	870
6540	8	actor	\\N	{"Duke of Gloucester"}	1494	1313
6541	9	actor	\\N	{"Will Lawless"}	1494	1314
6542	1	director	\\N	{}	1495	486
6543	10	actress	\\N	{"Lady in Waiting"}	1496	1196
6544	1	actress	\\N	{"The Princess"}	1496	695
6545	2	actor	\\N	{"The Poet"}	1496	863
6546	3	actor	\\N	{"Lord Selfish"}	1496	882
6547	4	actor	\\N	{"Lord Gold"}	1496	599
6548	5	director	\\N	{}	1496	467
6549	6	writer	\\N	{}	1496	1315
6550	7	cinematographer	\\N	{}	1496	49
6551	8	actor	\\N	{"Lord Folly"}	1496	573
6552	9	actor	\\N	{"Lord Presumption"}	1496	946
6553	1	actress	\\N	{}	1497	321
6554	2	director	\\N	{}	1497	721
6555	10	actress	\\N	{"Rich Wife"}	1498	699
6556	1	actor	\\N	{Bobby}	1498	392
6557	2	actor	\\N	{"Bobby's Grandfather"}	1498	644
6558	3	actress	\\N	{"Bobby's Sister"}	1498	470
6559	4	actress	\\N	{"The Girl Next Door"}	1498	1196
6560	5	director	\\N	{}	1498	467
6561	6	writer	\\N	{}	1498	599
6562	7	cinematographer	\\N	{}	1498	49
6563	8	actor	\\N	{"The Father of the Girl Next Door"}	1498	685
6564	9	actor	\\N	{"Rich Husband"}	1498	686
6565	1	actor	\\N	{Bonden}	1499	1316
6566	2	actress	\\N	{"En gatepike"}	1499	1317
6567	3	actress	\\N	{"En gatepike"}	1499	1318
6568	4	director	\\N	{}	1499	1319
6569	5	cinematographer	\\N	{}	1499	1320
6570	1	actor	\\N	{"The Border Ranger"}	1500	203
6571	2	actress	\\N	{"The Ranger's Girl"}	1500	918
6573	4	actor	\\N	{}	1500	921
6574	1	actor	\\N	{}	1501	1321
6575	2	actor	\\N	{}	1501	845
6576	1	director	\\N	{}	1502	486
6577	1	director	\\N	{}	1503	617
6578	1	actor	\\N	{}	1504	1203
6579	2	actress	\\N	{}	1504	1267
6580	3	actor	\\N	{}	1504	1269
6581	4	director	\\N	{}	1504	1270
6582	10	actor	\\N	{"The Postman"}	1505	516
6583	1	actor	\\N	{Tom}	1505	863
6584	2	actress	\\N	{Kate}	1505	1196
6585	3	actress	\\N	{"The Landlady"}	1505	699
6586	4	actress	\\N	{"The Manicurist"}	1505	575
6587	5	director	\\N	{}	1505	467
6588	6	writer	\\N	{}	1505	1315
6589	7	cinematographer	\\N	{}	1505	49
6590	8	actress	\\N	{"The Slavey"}	1505	957
6591	9	actress	\\N	{"Kate's Mother"}	1505	523
6592	10	actor	\\N	{}	1506	1322
6593	1	actor	\\N	{"Broncho Billy"}	1506	203
6594	2	actor	\\N	{"Hotel Keeper"}	1506	920
6595	3	actress	\\N	{"The Tavern Owner's Daughter"}	1506	1323
6596	4	actor	\\N	{"The Tavern Owner's Daughter's Sweetheart"}	1506	676
6597	5	actor	\\N	{Cowboy}	1506	921
6598	6	actor	\\N	{Cowboy}	1506	1324
6599	7	actor	\\N	{Cowboy}	1506	1325
6600	8	actor	\\N	{"Dr. A. Carney"}	1506	923
6601	9	actor	\\N	{}	1506	1326
6602	10	actress	\\N	{"Party Guest"}	1507	922
6603	1	actor	\\N	{"Broncho Billy"}	1507	203
6604	2	actress	\\N	{"Sheriff's Daughter"}	1507	1323
6605	3	actor	\\N	{Sheriff}	1507	920
6606	4	actress	\\N	{"Sheriff's Wife"}	1507	1291
6607	5	actor	\\N	{Deputy}	1507	1326
6608	6	actor	\\N	{"Stagecoach Guard"}	1507	919
6609	7	actor	\\N	{Cowboy}	1507	923
6610	8	actor	\\N	{"Party Guest"}	1507	676
6611	9	actor	\\N	{"Party Guest"}	1507	1327
6612	1	director	\\N	{}	1508	486
6613	1	actor	\\N	{"Johan - Bridegroom"}	1509	884
6614	2	actress	\\N	{"Marie - Maid"}	1509	1328
6615	3	actress	\\N	{"Clara - Bride"}	1509	1329
6616	4	director	\\N	{}	1509	626
6617	5	writer	\\N	{}	1509	1330
6618	1	director	\\N	{}	1510	486
6619	1	actor	\\N	{"Jake Walters"}	1511	923
6620	2	actor	\\N	{}	1511	921
6621	3	actress	\\N	{}	1511	918
6622	4	actor	\\N	{}	1511	920
6623	5	director	\\N	{}	1511	203
6624	6	actor	\\N	{}	1511	676
6625	7	actor	\\N	{}	1511	924
6626	1	director	\\N	{}	1512	486
6627	1	actor	\\N	{"Julius Caesar"}	1513	486
6628	2	actress	\\N	{"The Queen"}	1513	1331
6629	1	actor	\\N	{"Hugh Norton"}	1514	1278
6630	2	actress	\\N	{"Amy Gordon"}	1514	601
6631	3	actor	\\N	{}	1514	576
6632	4	director	\\N	{}	1514	617
6633	5	producer	producer	{}	1514	1247
6634	1	director	\\N	{}	1515	1332
6635	2	producer	producer	{}	1515	1333
6636	3	composer	\\N	{}	1515	1334
6637	1	actor	\\N	{"Captain Barnacle"}	1516	1084
6638	2	actress	\\N	{"The Girl's Mother"}	1516	579
6639	3	actor	\\N	{"Captain Bunce"}	1516	1335
6640	4	actress	\\N	{"Ivy Leach"}	1516	556
6641	5	director	\\N	{}	1516	1136
6642	6	actress	\\N	{}	1516	1304
6643	7	actor	\\N	{}	1516	565
6644	10	actor	\\N	{"Ali Ben"}	1517	1336
6645	1	actress	\\N	{"Captain Kate"}	1517	1057
6646	2	actor	\\N	{Clancy}	1517	1220
6647	3	actor	\\N	{"John Howell"}	1517	1337
6648	4	actor	\\N	{Desmond}	1517	1338
6649	5	director	\\N	{}	1517	429
6650	6	director	\\N	{}	1517	561
6651	7	writer	\\N	{}	1517	1216
6652	8	producer	producer	{}	1517	200
6653	9	actor	\\N	{"Loyal Native"}	1517	939
6654	1	actor	\\N	{"Edgar Dalmore","Captain Midnight"}	1518	1339
6655	2	actress	\\N	{Elsa}	1518	1340
6656	3	actor	\\N	{}	1518	1341
6657	4	actress	\\N	{}	1518	1342
6658	5	cinematographer	\\N	{}	1518	1343
6659	1	actress	\\N	{}	1519	1340
6660	2	actress	\\N	{}	1519	1342
6661	3	actor	\\N	{}	1519	1344
6662	4	actor	\\N	{"Captain Starlight"}	1519	1339
6663	5	writer	novel "Robbery Under Arms"	{}	1519	445
6664	6	writer	play	{}	1519	1345
6665	7	producer	producer	{}	1519	1346
6666	8	cinematographer	\\N	{}	1519	1343
6667	9	actor	\\N	{}	1519	1347
6668	1	actress	\\N	{}	1520	1348
6669	2	director	\\N	{}	1520	266
6670	3	director	\\N	{}	1520	694
6671	4	director	\\N	{}	1520	552
6672	5	writer	novel "Carmen"	{}	1520	1349
6673	1	actor	\\N	{}	1521	203
6674	1	director	\\N	{}	1522	85
6675	1	director	\\N	{}	1523	85
6676	1	actor	\\N	{"Old Man Pritchard"}	1524	920
6677	2	actor	\\N	{"Jim Pritchard - the Son"}	1524	676
6678	3	writer	\\N	{}	1524	203
6679	1	actor	\\N	{"Frank Carpenter"}	1525	203
6680	2	actress	\\N	{"Gladys Brown"}	1525	918
6681	3	actor	\\N	{"Jim Brown"}	1525	920
6682	4	actor	\\N	{}	1525	919
6683	1	actor	\\N	{"First Sleuth"}	1526	510
6684	2	actor	\\N	{"Second Sleuth"}	1526	1089
6685	3	actor	\\N	{}	1526	466
6686	4	actor	\\N	{"In Vice Committee"}	1526	1250
6687	5	writer	scenario	{}	1526	1277
6688	6	actor	\\N	{"In Vice Committee"}	1526	573
6689	7	actress	\\N	{"In Vice Committee"}	1526	1350
6690	1	director	\\N	{}	1527	909
6691	1	actor	\\N	{"Silas Warner's Son"}	1528	487
6692	2	actress	\\N	{"The Son's Wife"}	1528	1292
6693	1	actor	\\N	{Napoleon}	1529	486
6694	10	actor	\\N	{"At Settlement"}	1530	599
6695	1	actor	\\N	{"Frank - a Prospector"}	1530	882
6696	2	actor	\\N	{"Frank's Friend"}	1530	1351
6697	3	actress	\\N	{"The Indian Woman"}	1530	683
6698	4	actress	\\N	{"Susan - Frank's Fiancée"}	1530	523
6699	5	director	\\N	{}	1530	467
6700	6	cinematographer	\\N	{}	1530	49
6701	7	actor	\\N	{"The Indian Chief"}	1530	516
6702	8	actress	\\N	{"Susan's Companion"}	1530	699
6703	9	actor	\\N	{"The Servant"}	1530	466
6704	10	actress	\\N	{}	1531	804
6705	1	actor	\\N	{"Captain Rhines"}	1531	1352
6706	2	actor	\\N	{"Jack - A Young Stowaway"}	1531	877
6707	3	actress	\\N	{"May - The Captain's Daughter"}	1531	534
6708	4	actor	\\N	{}	1531	1306
6709	5	director	\\N	{}	1531	565
6710	6	writer	scenario	{}	1531	1353
6711	7	actress	\\N	{}	1531	942
6712	8	actor	\\N	{}	1531	604
6713	9	actress	\\N	{}	1531	512
6714	10	actress	\\N	{}	1532	1281
6715	1	actor	\\N	{Scrooge}	1532	769
6716	2	actor	\\N	{"Bob Cratchit"}	1532	519
6717	3	actor	\\N	{}	1532	1250
6718	4	actress	\\N	{}	1532	1354
6719	5	director	\\N	{}	1532	544
6720	6	director	\\N	{}	1532	489
6721	7	director	\\N	{}	1532	1355
6722	8	writer	short story	{}	1532	168
6723	9	actress	\\N	{}	1532	1356
6724	1	actress	\\N	{Cinderella}	1533	1196
6725	2	actor	\\N	{"The Prince"}	1533	1357
6726	3	actress	\\N	{}	1533	1358
6727	4	actor	\\N	{}	1533	871
6728	5	director	\\N	{}	1533	516
6729	6	writer	story "Cendrillon"	{}	1533	99
6730	7	actor	\\N	{}	1533	1359
6731	8	actress	\\N	{}	1533	1360
6732	1	actress	\\N	{Cinderella}	1534	1361
6733	2	actress	\\N	{"Cinderella's Mother"}	1534	1243
6734	3	actor	\\N	{"Cinderella's Father"}	1534	1337
6735	4	actress	\\N	{Stepsister}	1534	1362
6736	5	director	\\N	{}	1534	1363
6737	6	writer	story	{}	1534	1364
6738	7	writer	story	{}	1534	1365
6739	8	writer	scenario	{}	1534	1366
6740	9	producer	producer	{}	1534	200
6741	1	director	\\N	{}	1535	486
6742	1	director	\\N	{}	1536	486
6743	1	actor	\\N	{}	1538	1127
6744	10	actress	\\N	{"The Housekeeper"}	1539	1350
6745	1	actor	\\N	{Mack}	1539	510
6746	2	actor	\\N	{Jack}	1539	573
6747	3	actor	\\N	{"Charles A. Franklin"}	1539	685
6748	4	actress	\\N	{"Mrs. Charles A. Franklin"}	1539	699
6749	5	director	\\N	{}	1539	599
6750	6	cinematographer	\\N	{}	1539	873
6751	7	actress	\\N	{"The Franklin Daughter"}	1539	957
6752	8	actor	\\N	{"The Butler"}	1539	967
6753	9	actress	\\N	{"The Maid"}	1539	535
6754	10	actor	\\N	{Policeman}	1540	637
6755	1	actor	\\N	{"Howard Raymond"}	1540	693
6756	2	actress	\\N	{"Mrs. Howard Raymond"}	1540	683
6757	3	actor	\\N	{"The Hunter"}	1540	946
6758	4	actress	\\N	{"The Child"}	1540	470
6759	5	director	\\N	{}	1540	467
6760	6	cinematographer	\\N	{}	1540	49
6761	7	actor	\\N	{"The Doctor"}	1540	581
6762	8	actor	\\N	{Detective}	1540	685
6763	9	actor	\\N	{Policeman}	1540	567
6764	1	actor	\\N	{"Richard Ryder aka Galloping Dick - a Highwayman"}	1541	246
6765	2	actor	\\N	{"Sir Charles - Cicely's Father"}	1541	856
6766	3	actress	\\N	{"Cicely - Sir Walter's Sweetheart"}	1541	465
6767	4	actor	\\N	{"Sir Walter - Cicely's Sweetheart - a Conspirator"}	1541	248
6768	5	director	\\N	{}	1541	544
6769	6	writer	\\N	{}	1541	1367
6770	10	actress	\\N	{}	1542	922
6771	1	actor	\\N	{"Gerald Todds"}	1542	203
6772	2	actress	\\N	{"Ann Newton"}	1542	918
6773	3	actor	\\N	{"H. Todds","H.M. Blake"}	1542	920
6774	4	actor	\\N	{}	1542	919
6775	5	actor	\\N	{}	1542	676
6776	6	actor	\\N	{}	1542	675
6777	7	actor	\\N	{}	1542	921
6778	8	actor	\\N	{}	1542	923
6779	9	actor	\\N	{}	1542	924
6780	1	actor	\\N	{"The Count"}	1544	921
6781	2	actor	\\N	{"Stump Carney"}	1544	923
6782	3	actor	\\N	{}	1544	920
6783	4	actor	\\N	{}	1544	676
6784	5	director	\\N	{}	1544	203
6785	6	actor	\\N	{}	1544	675
6786	7	actor	\\N	{}	1544	924
6787	8	actor	\\N	{}	1544	847
6788	10	actor	\\N	{"The Farmer"}	1545	619
6789	1	actress	\\N	{"Edith - the School Teacher"}	1545	695
6790	2	actor	\\N	{"Jack - Edith's Sweetheart"}	1545	693
6791	3	actress	\\N	{"Little Billy"}	1545	1249
6792	4	actor	\\N	{"The Half-Wit"}	1545	946
6793	5	director	\\N	{}	1545	467
6794	6	cinematographer	\\N	{}	1545	49
6795	7	actress	\\N	{"Edith's Mother"}	1545	515
6796	8	actress	\\N	{"The Half-Wit's Mother"}	1545	523
6797	9	actor	\\N	{"Jack's Father"}	1545	637
6798	1	actress	\\N	{"The Country Lover"}	1546	695
6799	2	actor	\\N	{"The Country Lover"}	1546	863
6800	3	actress	\\N	{"The Mother"}	1546	699
6801	4	actor	\\N	{"Happy Jack"}	1546	510
6802	5	writer	story	{}	1546	476
6803	6	cinematographer	\\N	{}	1546	873
6804	1	actress	\\N	{Mary}	1547	601
6805	2	actor	\\N	{Owen}	1547	576
6806	3	actor	\\N	{"Uncle Bill"}	1547	1368
6807	4	actress	\\N	{}	1547	848
6808	5	director	\\N	{}	1547	684
6809	6	director	\\N	{}	1547	1254
6810	7	writer	\\N	{}	1547	1101
6811	1	actor	\\N	{Steve}	1548	203
6812	2	actress	\\N	{Katie}	1548	918
6813	3	actor	\\N	{"Cash Wilkins"}	1548	919
6814	4	actor	\\N	{"Milkface - the Cowboy Coward"}	1548	1327
6815	1	actor	\\N	{"Tom Patterson"}	1549	203
6816	1	actor	\\N	{"Diago Alves"}	1550	1369
6817	2	actress	\\N	{"Parreirinha a Sua Amante - Diogo's lover"}	1550	1370
6818	3	actress	\\N	{"Criança Testemunhadora - girl witness"}	1550	1371
6819	4	actor	\\N	{"Victim with a gun"}	1550	1372
6820	5	director	\\N	{}	1550	705
6821	6	writer	screenplay	{}	1550	369
6822	7	writer	screenplay	{}	1550	437
6823	8	writer	based on a story by	{}	1550	1373
6824	10	actor	\\N	{}	1551	466
6825	1	actor	\\N	{"The Husband"}	1551	599
6826	2	actress	\\N	{"The Wife"}	1551	683
6827	3	actress	\\N	{"The Landlady"}	1551	699
6828	4	actor	\\N	{"The Pawnbroker"}	1551	685
6829	5	director	\\N	{}	1551	467
6830	6	cinematographer	\\N	{}	1551	49
6831	7	actor	\\N	{"1st Evil Companion"}	1551	946
6832	8	actor	\\N	{"2nd Evil Companion"}	1551	863
6833	9	actress	\\N	{"A Neighbor"}	1551	515
6834	1	director	\\N	{}	1552	486
6835	1	actor	\\N	{"Dr. John Morgan"}	1553	519
6836	2	actor	\\N	{"Morgan's Friend"}	1553	856
6837	3	actor	\\N	{"Bill Crook - the Vagrant"}	1553	1279
6838	4	actor	\\N	{"Morgan's Little Son"}	1553	891
6839	5	director	\\N	{}	1553	98
6840	1	actor	\\N	{}	1554	980
6841	2	actor	\\N	{}	1554	1069
6842	3	actor	\\N	{}	1554	1374
6843	4	director	\\N	{}	1554	1153
6844	5	writer	\\N	{}	1554	745
6845	10	actor	\\N	{"Dr. Beech"}	1555	1375
6846	1	actress	\\N	{Rose}	1555	1057
6847	2	actress	\\N	{Madge}	1555	1376
6848	3	actor	\\N	{Dad}	1555	1337
6849	4	actor	\\N	{"Sam Gleason, the Sheriff"}	1555	1220
6850	5	director	\\N	{}	1555	561
6851	6	producer	producer	{}	1555	200
6852	7	actor	\\N	{"Tom Ralston, the Gambler"}	1555	939
6853	8	actor	\\N	{"Andy Thomas, an Assayer"}	1555	1377
6854	9	actor	\\N	{"One Feather, an Indian Renegade"}	1555	1129
6855	1	actress	\\N	{}	1556	601
6856	1	actress	\\N	{"Millie Easton - from the East"}	1557	465
6857	2	actor	\\N	{"Millie's Uncle"}	1557	1378
6858	3	actress	\\N	{"Millie's Aunt"}	1557	252
6859	4	actor	\\N	{"Bashful Joe - Cowboy"}	1557	522
6860	5	director	\\N	{}	1557	892
6861	6	actor	\\N	{Cowboy}	1557	1379
6862	7	actor	\\N	{Cowboy}	1557	1279
6863	8	actor	\\N	{Cowboy}	1557	1380
6864	1	actor	\\N	{"The Father"}	1558	685
6865	2	actor	\\N	{"The Son"}	1558	863
6866	3	actress	\\N	{"The Heiress"}	1558	629
6867	4	actor	\\N	{"The Tramp","A Clubman"}	1558	572
6868	5	director	\\N	{}	1558	467
6869	6	writer	\\N	{}	1558	1082
6870	7	cinematographer	\\N	{}	1558	49
6871	1	director	\\N	{}	1559	486
6872	1	director	\\N	{}	1560	85
6873	1	actor	\\N	{Hugh}	1561	487
6874	2	actress	\\N	{Helen}	1561	1292
6875	3	actress	\\N	{"Hugh's Mother"}	1561	598
6876	1	actor	\\N	{"Nathan Hale"}	1562	248
6877	2	actor	\\N	{"Dalton - a British Soldier"}	1562	769
6878	3	actress	\\N	{"Dorothy - Nathan Hale's Fiancée"}	1562	1251
6879	4	actor	\\N	{"George Washington"}	1562	519
6880	5	actor	\\N	{"Israel Putnam"}	1562	856
6881	10	actor	\\N	{"George Washington"}	1563	519
6882	1	actor	\\N	{"Thomas Jefferson"}	1563	769
6883	2	actor	\\N	{"Benjamin Franklin"}	1563	856
6884	3	actor	\\N	{"John Adams"}	1563	1381
6885	4	actress	\\N	{"Mrs. John Adams"}	1563	1287
6886	5	director	\\N	{}	1563	544
6887	6	actor	\\N	{"John Quincy Adams"}	1563	1382
6888	7	actor	\\N	{"John Hancock"}	1563	1378
6889	8	actor	\\N	{"R.R. Livingston"}	1563	1314
6890	9	actor	\\N	{"Robert Sherman"}	1563	1383
6891	10	actor	\\N	{"The Doctor"}	1564	1149
6892	1	actor	\\N	{"Kenneth Marsden - the Artist"}	1564	946
6893	2	actress	\\N	{"Mary - lst Sister"}	1564	601
6894	3	actress	\\N	{"Edith - 2nd Sister"}	1564	629
6895	4	actress	\\N	{"The Aunt"}	1564	612
6896	5	director	\\N	{}	1564	467
6897	6	writer	\\N	{}	1564	1384
6898	7	cinematographer	\\N	{}	1564	49
6899	8	actor	\\N	{"The Priest"}	1564	516
6900	9	actress	\\N	{"The Nun"}	1564	523
6901	1	actor	\\N	{"Jim Lee"}	1565	920
6902	2	actor	\\N	{}	1565	676
6903	3	actor	\\N	{}	1565	1324
6904	4	actor	\\N	{}	1565	921
6905	5	writer	\\N	{}	1565	203
6906	6	actor	\\N	{}	1565	923
6907	1	director	\\N	{}	1566	486
6908	1	actor	\\N	{}	1567	1019
6909	2	director	\\N	{}	1567	909
6910	1	director	\\N	{}	1568	486
6911	10	actress	\\N	{"Guest at Dinner Party"}	1569	1292
6912	1	actor	\\N	{"John Wilson"}	1569	572
6913	2	actress	\\N	{"Mrs. John Wilson"}	1569	508
6914	3	actor	\\N	{}	1569	573
6915	4	actor	\\N	{}	1569	882
6916	5	director	\\N	{}	1569	467
6917	6	writer	\\N	{}	1569	1077
6918	7	cinematographer	\\N	{}	1569	49
6919	8	actress	\\N	{}	1569	1196
6920	9	actor	\\N	{}	1569	967
6921	1	actor	\\N	{}	1570	1385
6922	2	actress	\\N	{}	1570	1386
6923	3	actor	\\N	{"Pierre Wallen"}	1570	1387
6924	4	actor	\\N	{}	1570	1388
6925	5	director	\\N	{}	1570	745
6926	10	actor	\\N	{"A Bather"}	1571	581
6927	1	actor	\\N	{"The Uncle"}	1571	1089
6928	2	actress	\\N	{"The Niece"}	1571	1292
6929	3	actor	\\N	{"The Uncle's Friend"}	1571	685
6930	4	actor	\\N	{"The Doctor"}	1571	686
6931	5	director	\\N	{}	1571	510
6932	6	cinematographer	\\N	{}	1571	873
6933	7	actor	\\N	{"The Bellboy"}	1571	392
6934	8	actor	\\N	{"A Bather"}	1571	567
6935	9	actress	\\N	{"A Bather"}	1571	699
6936	1	actor	\\N	{"The Doctor"}	1572	519
6937	2	actress	\\N	{"The Doctor's Fiancée"}	1572	642
6938	3	actor	\\N	{"The Father"}	1572	520
6939	4	actress	\\N	{"The Mother"}	1572	545
6940	5	director	\\N	{}	1572	544
6941	6	actress	\\N	{"The Child"}	1572	1389
6942	1	actress	\\N	{}	1573	601
6943	2	director	\\N	{}	1573	617
6944	1	director	\\N	{}	1574	266
6945	2	director	\\N	{}	1574	552
6946	1	actress	\\N	{"Nell Herbert"}	1575	601
6947	2	actor	\\N	{"Will Herbert"}	1575	576
6948	3	actor	\\N	{"The Dream Man"}	1575	770
6949	4	actor	\\N	{"Secondary Role"}	1575	1390
6950	5	director	\\N	{}	1575	617
6951	6	writer	scenario	{}	1575	1255
6952	7	composer	\\N	{}	1575	1391
6953	8	actor	\\N	{"Secondary Role"}	1575	1246
6954	9	actress	\\N	{"Bess - the Typewriter"}	1575	848
6955	1	actor	\\N	{Hans}	1576	510
6956	2	actor	\\N	{}	1576	466
6957	3	actress	\\N	{}	1576	957
6958	4	actor	\\N	{}	1576	1392
6959	5	writer	\\N	{}	1576	471
6960	6	cinematographer	\\N	{}	1576	873
6961	10	actress	\\N	{"Cleos veninne"}	1577	1393
6962	1	actress	\\N	{"Frida von Falkenstein, grevinne"}	1577	1047
6963	2	actor	\\N	{"Werner von Falkenstein, løytnant"}	1577	1394
6964	3	actor	\\N	{"General von mannheimer"}	1577	1046
6965	4	actress	\\N	{"Hans datter"}	1577	1395
6966	5	director	\\N	{}	1577	1396
6967	6	director	\\N	{}	1577	889
6968	7	actor	\\N	{"Hugo von Langen, baron"}	1577	1397
6969	8	actor	\\N	{Krüger}	1577	1398
6970	9	actress	\\N	{"Cleo, danser"}	1577	1399
6971	1	actor	\\N	{"Le petit André"}	1578	1400
6972	2	director	\\N	{}	1578	818
6973	10	actress	\\N	{}	1579	1401
6974	1	actress	\\N	{Ebba,Sophie}	1579	992
6975	2	actor	\\N	{Geheimraaden,Geheimrat}	1579	1402
6976	3	actor	\\N	{"Sohn Edgar"}	1579	1090
6977	4	actress	\\N	{Geheimratsehefrau}	1579	1063
6978	5	director	\\N	{}	1579	689
6979	6	writer	\\N	{}	1579	1403
6980	7	actress	\\N	{Lily}	1579	1404
6981	8	actor	\\N	{Laege}	1579	384
6982	9	actress	\\N	{}	1579	1405
6983	10	actress	\\N	{}	1580	699
6984	1	actor	\\N	{"Enoch Arden"}	1580	572
6985	2	actress	\\N	{"Annie Lee"}	1580	414
6986	3	actor	\\N	{"Philip Ray"}	1580	882
6987	4	actor	\\N	{"The Captain"}	1580	516
6988	5	director	\\N	{}	1580	467
6989	6	writer	story	{}	1580	475
6990	7	cinematographer	\\N	{}	1580	49
6991	8	actor	\\N	{}	1580	466
6992	9	actor	\\N	{"A Shipwrecked Sailor"}	1580	946
6993	10	actress	\\N	{"Ray's Maid"}	1581	535
6994	1	actor	\\N	{"Enoch Arden"}	1581	572
6995	2	actress	\\N	{"Annie Lee"}	1581	414
6996	3	actor	\\N	{"Philip Ray"}	1581	882
6997	4	actor	\\N	{"Teenage Arden Son"}	1581	392
6998	5	director	\\N	{}	1581	467
6999	6	writer	story	{}	1581	475
7000	7	cinematographer	\\N	{}	1581	49
7001	8	actress	\\N	{"Teenage Arden Daughter"}	1581	1196
7002	9	actor	\\N	{"Dead Shipmate"}	1581	946
7003	1	director	\\N	{}	1583	486
7004	1	actor	\\N	{"Eugene Wrayburn"}	1584	1406
7005	2	actor	\\N	{"Mortimer Lightwood"}	1584	1313
7006	3	actress	\\N	{"Lizzie Hexam"}	1584	1407
7007	4	actor	\\N	{"Charley Hexam"}	1584	1408
7008	5	writer	story	{}	1584	168
7009	6	actor	\\N	{"Bradley Headstone"}	1584	1312
7010	7	actor	\\N	{"The Lock Keeper"}	1584	1383
7011	10	actor	\\N	{"Bank Employee"}	1585	567
7012	1	actor	\\N	{"The Clerk"}	1585	572
7013	2	actress	\\N	{"The Woman"}	1585	506
7014	3	actress	\\N	{"The Clerk's Fiancée"}	1585	959
7015	4	actor	\\N	{"The Woman's Sweetheart"}	1585	693
7016	5	director	\\N	{}	1585	467
7017	6	writer	\\N	{}	1585	1077
7018	7	cinematographer	\\N	{}	1585	49
7019	8	actress	\\N	{"The Fiancée's Mother"}	1585	699
7020	9	actor	\\N	{"The Bank Manager","In Tavern"}	1585	1149
7021	1	actress	\\N	{"Edith Morton - The Fair Dentist"}	1586	601
7022	2	actor	\\N	{"Dental Patient"}	1586	1278
7023	3	actor	\\N	{"Dental Patient"}	1586	576
7024	4	actor	\\N	{"Dental Patient"}	1586	1254
7025	5	director	\\N	{}	1586	617
7026	6	producer	producer	{}	1586	1247
7027	7	actress	\\N	{"The Maid"}	1586	1409
7028	1	actor	\\N	{"Will Talbot"}	1587	203
7029	2	actor	\\N	{"The Indian"}	1587	919
7030	3	actor	\\N	{}	1587	920
7031	4	actor	\\N	{}	1587	676
7032	5	actor	\\N	{}	1587	924
7033	6	actor	\\N	{}	1587	675
7034	7	actor	\\N	{}	1587	847
7035	1	actor	\\N	{Belshazzar}	1588	486
7036	2	actress	\\N	{}	1588	1331
7037	10	actor	\\N	{}	1589	1410
7038	1	actress	\\N	{}	1589	656
7039	2	actor	\\N	{}	1589	1411
7040	3	actress	\\N	{}	1589	1412
7041	4	actor	\\N	{}	1589	1413
7042	5	director	\\N	{}	1589	1414
7043	6	director	\\N	{}	1589	1415
7044	7	cinematographer	\\N	{}	1589	1416
7045	8	actress	\\N	{}	1589	1417
7046	9	actor	\\N	{}	1589	1418
7047	10	actor	\\N	{Gram}	1590	1419
7048	1	actress	\\N	{Liljan}	1590	1420
7049	2	actor	\\N	{Erik}	1590	884
7050	3	actor	\\N	{Peter}	1590	1421
7051	4	actor	\\N	{"S. Petersen"}	1590	1422
7052	5	writer	\\N	{}	1590	1423
7053	6	cinematographer	\\N	{}	1590	889
7054	7	actor	\\N	{"Johannes von Falck"}	1590	850
7055	8	actress	\\N	{Anitta}	1590	1424
7056	9	actress	\\N	{"Mrs. Petersen"}	1590	1425
7057	10	actress	\\N	{"Mabel Wilson"}	1591	1342
7058	1	actor	\\N	{Frankie}	1591	1426
7059	2	actress	\\N	{"Cora Williams"}	1591	1427
7060	3	actor	\\N	{Toto}	1591	1428
7061	4	actor	\\N	{"Constable O'Reilly"}	1591	1429
7062	5	director	\\N	{}	1591	1341
7063	6	cinematographer	\\N	{}	1591	1430
7064	7	actress	\\N	{Bridget}	1591	1431
7065	8	actor	\\N	{}	1591	1432
7066	9	actor	\\N	{"Reverend Dr Lanceford"}	1591	1433
7067	1	director	\\N	{}	1592	486
7068	1	actor	\\N	{"Richard Malcolm"}	1593	1307
7069	2	actress	\\N	{"Alice Trevor"}	1593	1434
7070	3	actor	\\N	{}	1593	1435
7071	4	director	\\N	{}	1593	1436
7072	10	actress	\\N	{}	1594	414
7073	1	actor	\\N	{"John Lawson Jr."}	1594	863
7074	2	actress	\\N	{"John Lawson's Fiancée"}	1594	683
7075	3	actress	\\N	{"John Lawson's Fiancée's Mother"}	1594	699
7076	4	actress	\\N	{"Mary - A Waitress"}	1594	506
7077	5	director	\\N	{}	1594	467
7078	6	cinematographer	\\N	{}	1594	49
7079	7	actor	\\N	{"The Valet"}	1594	567
7080	8	actor	\\N	{"The Minister"}	1594	1149
7081	9	actor	\\N	{"The Doctor","A Servant"}	1594	882
7082	1	actress	\\N	{}	1595	1318
7083	2	actor	\\N	{}	1595	1316
7084	3	actor	\\N	{}	1595	1319
7085	4	actor	\\N	{}	1595	1437
7086	5	director	\\N	{}	1595	1438
7087	6	writer	\\N	{}	1595	1439
7088	7	actress	\\N	{}	1595	1317
7089	1	director	\\N	{}	1596	85
7090	1	director	\\N	{}	1597	85
7091	1	director	\\N	{}	1598	85
7092	1	director	\\N	{}	1599	85
7093	10	actress	\\N	{"The Son's Girlfriend's Mother"}	1600	1350
7094	1	actor	\\N	{"The Old Soldier"}	1600	516
7095	2	actress	\\N	{"The Old Soldier's Wife"}	1600	515
7096	3	actor	\\N	{"The Old Soldier's Son"}	1600	392
7097	4	actress	\\N	{"The Son's Girlfriend"}	1600	1196
7098	5	director	\\N	{}	1600	467
7099	6	writer	novel	{}	1600	51
7100	7	cinematographer	\\N	{}	1600	49
7101	8	actor	\\N	{"The Son's Girlfriend's Father"}	1600	882
7102	9	actor	\\N	{"The Wagon Driver"}	1600	466
7103	1	actor	\\N	{Fritz}	1601	884
7104	2	actress	\\N	{Aimee}	1601	780
7105	3	actress	\\N	{Louise}	1601	1440
7106	4	actor	\\N	{Adolphe}	1601	1065
7107	5	director	\\N	{}	1601	413
7108	6	director	\\N	{}	1601	889
7109	7	writer	story "Les quatres diables"	{}	1601	1441
7110	10	actor	\\N	{"At Fair"}	1602	573
7111	1	actor	\\N	{"Steve Hardester"}	1602	572
7112	2	actress	\\N	{Bertha}	1602	414
7113	3	actress	\\N	{Cora}	1602	957
7114	4	actor	\\N	{"The Minister"}	1602	686
7115	5	director	\\N	{}	1602	467
7116	6	writer	\\N	{}	1602	1315
7117	7	cinematographer	\\N	{}	1602	49
7118	8	actor	\\N	{Fisherman}	1602	685
7119	9	actor	\\N	{"At Fair"}	1602	466
7120	1	actress	\\N	{"Paula - The Fisher-Maid"}	1603	601
7121	2	actor	\\N	{"Ambrose Fenton - the Fisher-maid's Sweetheart"}	1603	576
7122	3	director	\\N	{}	1603	617
7123	4	producer	producer	{}	1603	1247
7124	5	cinematographer	\\N	{}	1603	1276
7125	1	director	\\N	{}	1604	486
7126	1	actress	\\N	{"Florence Dow"}	1605	474
7127	2	actor	\\N	{"Jack Doyle - Assistant Principal"}	1605	576
7128	3	director	\\N	{}	1605	468
7129	1	director	\\N	{}	1606	486
7130	1	director	\\N	{}	1607	486
7131	1	actress	\\N	{"Madge Spotwood"}	1608	601
7132	2	actor	\\N	{"Owen Spotwood - Madge's Brother"}	1608	576
7133	3	actor	\\N	{}	1608	845
7134	4	actor	\\N	{}	1608	617
7135	5	writer	\\N	{}	1608	1255
7136	6	producer	producer	{}	1608	1247
7137	1	director	\\N	{}	1609	486
7138	1	actor	\\N	{"The King"}	1610	1278
7139	2	actor	\\N	{"Prince Albert"}	1610	576
7140	3	actress	\\N	{"Princess Gilda"}	1610	601
7141	4	actor	\\N	{"Duke Arturo"}	1610	1254
7142	5	director	\\N	{}	1610	617
7143	6	producer	producer	{}	1610	1247
7144	7	actress	\\N	{"Queen Amelia"}	1610	1409
7145	10	actress	\\N	{}	1611	625
7146	1	actor	\\N	{"Einar Lowe",Othello}	1611	998
7147	2	actress	\\N	{"Maria Lowe",Desdemona}	1611	1442
7148	3	actor	\\N	{}	1611	663
7308	2	actress	\\N	{}	1641	957
7149	4	actor	\\N	{"Preben Winge - Actor"}	1611	1443
7150	5	director	\\N	{}	1611	689
7151	6	writer	\\N	{}	1611	1444
7152	7	writer	play "Othello"	{}	1611	126
7153	8	producer	producer	{}	1611	325
7154	9	actor	\\N	{}	1611	623
7155	1	actor	\\N	{"Rev. Small"}	1612	203
7156	2	actor	\\N	{"Henry Carter"}	1612	920
7157	3	actor	\\N	{"The sheriff"}	1612	676
7158	4	actress	\\N	{Agnes}	1612	918
7159	5	writer	story	{}	1612	1445
7160	6	actor	\\N	{}	1612	921
7161	7	actor	\\N	{}	1612	1322
7162	1	actor	\\N	{Jack}	1613	203
7163	2	actor	\\N	{Ned}	1613	919
7164	3	actor	\\N	{"Katy's Father"}	1613	920
7165	4	actress	\\N	{Katy}	1613	918
7166	5	actor	\\N	{"The Minister"}	1613	924
7167	6	actress	\\N	{"The Minister's Wife"}	1613	1291
7168	7	actor	\\N	{"An Indian"}	1613	676
7169	1	actor	\\N	{"John Wardlaw"}	1614	856
7170	2	actor	\\N	{"Arthur Wardlaw - the Son"}	1614	248
7171	3	actor	\\N	{"Rev. Robert Penfold"}	1614	769
7172	4	actor	\\N	{"Michael Penfold - Robert's Father"}	1614	1383
7173	5	director	\\N	{}	1614	1257
7174	6	writer	scenario	{}	1614	1446
7175	7	actor	\\N	{"General Rolleston"}	1614	519
7176	8	actress	\\N	{"Helen Rolleston - the General's Daughter"}	1614	465
7177	9	actor	\\N	{"Wylie - mate of the Prosperpine"}	1614	1152
7178	1	actress	\\N	{}	1615	942
7179	1	actor	\\N	{"Mr. Henpeck"}	1616	1383
7180	2	actress	\\N	{"Mrs. Henpeck - the Auntie"}	1616	1447
7181	3	actress	\\N	{"The Henpecks' Daughter"}	1616	1448
7182	4	actor	\\N	{"The Henpecks' Nephew"}	1616	248
7183	5	actor	\\N	{"Henpeck's Secretary"}	1616	1380
7184	6	actress	\\N	{"The Henpecks' Maid"}	1616	1407
7185	10	actress	\\N	{"Stubenmädchen Mizi"}	1617	1449
7186	1	actress	\\N	{"Miss May"}	1617	883
7187	2	actor	\\N	{"Sir John Wolton"}	1617	1450
7188	3	actress	\\N	{"Miss Hobbs"}	1617	1451
7189	4	actor	\\N	{"Mr. Herbert Bruce"}	1617	1452
7190	5	director	\\N	{}	1617	887
7191	6	cinematographer	\\N	{}	1617	1453
7192	7	actor	\\N	{Max}	1617	1454
7193	8	actress	\\N	{"Maxs Braut Grete"}	1617	1455
7194	9	actor	\\N	{}	1617	1456
7195	1	director	\\N	{}	1618	486
7196	1	actor	\\N	{"Mr. Gayton"}	1619	1250
7197	2	actress	\\N	{"Mrs. Gayton"}	1619	1287
7198	3	actress	\\N	{}	1619	1251
7199	4	writer	\\N	{}	1619	1457
7200	1	director	\\N	{}	1620	486
7201	1	actor	\\N	{"Billy - the Young Ensign"}	1621	1245
7202	2	actress	\\N	{"Billy's Sweetheart"}	1621	1253
7203	3	actor	\\N	{"The Lieutenant"}	1621	1458
7204	4	actress	\\N	{"Undetermined Role"}	1621	601
7205	5	producer	producer	{}	1621	1247
7206	6	actor	\\N	{"Undetermined Role"}	1621	770
7207	1	actor	\\N	{"A Frontier Doctor"}	1622	920
7208	2	actress	\\N	{"The Doctor's Daughter"}	1622	1459
7209	3	actress	\\N	{"Nan Warren, the Doctor's Sweetheart"}	1622	1323
7210	4	actor	\\N	{"Nan's Husband"}	1622	1327
7211	5	writer	\\N	{}	1622	203
7212	1	director	\\N	{}	1623	486
7213	1	actress	\\N	{"Flora Powell"}	1624	601
7214	2	actor	\\N	{"Arthur Lennox"}	1624	576
7215	3	actor	\\N	{"Rev. John Maxwell"}	1624	1254
7216	4	actor	\\N	{"Mr. Powell - Flora's Father"}	1624	1390
7217	5	director	\\N	{}	1624	617
7218	6	producer	producer	{}	1624	1247
7219	1	actor	\\N	{"Gen. Dent"}	1625	1460
7220	2	actress	\\N	{Flower}	1625	1461
7221	3	actress	\\N	{}	1625	1462
7222	4	actress	\\N	{}	1625	1304
7223	5	actor	\\N	{}	1625	775
7224	6	actress	\\N	{}	1625	942
7225	7	actor	\\N	{}	1625	373
7226	1	director	\\N	{}	1626	486
7227	10	actress	\\N	{"The Quebec Coquette"}	1627	1463
7228	1	actor	\\N	{"George Warrington"}	1627	425
7229	2	actor	\\N	{"Harry Warrington"}	1627	1464
7230	3	actor	\\N	{"Compte de Florac"}	1627	760
7231	4	actor	\\N	{"The French Duelist"}	1627	1465
7232	5	writer	story "The Virginians"	{}	1627	1466
7233	6	producer	producer	{}	1627	200
7234	7	actor	\\N	{"Sgt. Museau"}	1627	261
7235	8	actress	\\N	{"La Biche - The Indian Squaw"}	1627	1467
7236	9	actor	\\N	{"Indian Messenger"}	1627	1164
7237	10	actor	\\N	{"Daniel Briton, the Huckster"}	1628	1305
7238	1	actor	\\N	{"Daniel Briton"}	1628	487
7239	2	actress	\\N	{"Ethel Tunison"}	1628	1468
7240	3	actor	\\N	{}	1628	604
7241	4	actress	\\N	{}	1628	512
7242	5	director	\\N	{}	1628	565
7243	6	writer	scenario	{}	1628	1469
7244	7	actress	\\N	{}	1628	804
7245	8	actress	\\N	{}	1628	803
7246	9	actress	\\N	{Ethel}	1628	534
7247	1	actor	\\N	{"Bunco artist"}	1629	1215
7248	2	actor	\\N	{"The Husband"}	1629	1127
7249	3	actress	\\N	{"The Wife"}	1629	1470
7250	4	actress	\\N	{"Daughter of poor widow"}	1629	1471
7251	5	actor	\\N	{"Undetermined Role"}	1629	1357
7252	1	actor	\\N	{"Prince Sombra","Count Sombra"}	1630	769
7408	4	director	\\N	{}	1659	1506
7253	2	actress	\\N	{"Stephanie - The Prince's Bride"}	1630	1287
7254	3	actor	\\N	{"An American Millionaire"}	1630	1379
7255	4	actress	\\N	{"The Millionaire's Daughter"}	1630	465
7256	5	director	\\N	{}	1630	1355
7257	6	actress	\\N	{"The Daughter's Cousin"}	1630	754
7258	7	actor	\\N	{"The Young Artist"}	1630	1406
7259	1	actor	\\N	{"Jack King"}	1631	203
7260	2	actor	\\N	{"Tom Gray"}	1631	919
7261	1	actress	\\N	{"The Girl"}	1632	465
7262	2	actor	\\N	{"A Young Inventor"}	1632	1406
7263	3	actress	\\N	{"The Girl's Mother"}	1632	1287
7264	4	actor	\\N	{"The Rival"}	1632	769
7265	5	director	\\N	{}	1632	1355
7266	1	actor	\\N	{"Dan Morris"}	1633	203
7267	2	actor	\\N	{"Dick Graham"}	1633	920
7268	3	actress	\\N	{"Betty Graham"}	1633	918
7269	1	actor	\\N	{"Jack Caxton"}	1634	1203
7270	2	director	\\N	{}	1634	1270
7271	1	director	\\N	{}	1635	1472
7272	2	cinematographer	\\N	{}	1635	1473
7273	1	actress	\\N	{}	1636	474
7274	2	actor	\\N	{"John Lacy"}	1636	469
7275	3	actor	\\N	{}	1636	1474
7276	4	actor	\\N	{}	1636	1271
7277	5	director	\\N	{}	1636	468
7278	6	producer	producer	{}	1636	119
7279	7	actress	\\N	{}	1636	1272
7280	1	actor	\\N	{"Harry Robbins"}	1637	1307
7281	2	actress	\\N	{"Marion Walters"}	1637	1434
7282	3	director	\\N	{}	1637	1436
7283	1	actor	\\N	{"Curly Hitchcock"}	1638	1203
7284	2	actress	\\N	{"Edna Curtis"}	1638	1267
7285	3	actor	\\N	{"Bill Fremont"}	1638	1269
7286	4	director	\\N	{}	1638	1270
7287	10	actor	\\N	{}	1639	1475
7288	1	actor	\\N	{Zachar}	1639	1476
7289	2	actress	\\N	{"Rachel - Zachar's daughter"}	1639	1477
7290	3	actress	\\N	{}	1639	1478
7291	4	actor	\\N	{}	1639	1479
7292	5	director	\\N	{}	1639	1480
7293	6	writer	play	{}	1639	1481
7294	7	producer	producer	{}	1639	1482
7295	8	cinematographer	\\N	{}	1639	1483
7296	9	actor	\\N	{}	1639	1484
7297	10	actor	\\N	{Courtier}	1640	1149
7298	1	actor	\\N	{"The Father"}	1640	516
7299	2	actress	\\N	{"The Daughter"}	1640	575
7300	3	actor	\\N	{"The Lover"}	1640	572
7301	4	actor	\\N	{"The Nobleman - the Fiancé"}	1640	882
7302	5	director	\\N	{}	1640	467
7303	6	cinematographer	\\N	{}	1640	49
7304	7	actress	\\N	{Lady-in-Waiting}	1640	1350
7305	8	actor	\\N	{"A Servant"}	1640	1073
7306	9	actor	\\N	{Courtier}	1640	567
7307	1	actor	\\N	{}	1641	572
7309	3	actor	\\N	{}	1641	946
7310	4	director	\\N	{}	1641	467
7311	5	cinematographer	\\N	{}	1641	49
7312	1	actress	\\N	{"Mrs. Browne - the Heiress"}	1642	1485
7313	2	actor	\\N	{"Mrs. Browne's Suitor"}	1642	1486
7314	1	actress	\\N	{Pearl}	1643	1131
7315	2	actor	\\N	{Albert}	1643	1271
7316	3	actor	\\N	{William}	1643	1487
7317	4	director	\\N	{}	1643	1055
7318	5	writer	\\N	{}	1643	1274
7319	6	producer	producer	{}	1643	119
7320	1	actor	\\N	{"Henry VIII"}	1644	1488
7321	2	actor	\\N	{"Cardinal Wolsey"}	1644	121
7322	3	actress	\\N	{"Queen Katharine"}	1644	1489
7323	4	actress	\\N	{"Anne Boleyn"}	1644	1490
7324	5	director	\\N	{}	1644	1068
7325	6	writer	play	{}	1644	126
7326	7	writer	play	{}	1644	1491
7327	8	composer	\\N	{}	1644	1492
7328	9	production_designer	\\N	{}	1644	1493
7329	10	actor	\\N	{"On Street","Accident Witness"}	1645	392
7330	1	actress	\\N	{"The Daughter"}	1645	1292
7331	2	actor	\\N	{"The Daughter's Sweetheart"}	1645	1494
7332	3	actress	\\N	{"The Crippled Mother"}	1645	515
7333	4	actor	\\N	{}	1645	693
7334	5	director	\\N	{}	1645	467
7335	6	cinematographer	\\N	{}	1645	49
7336	7	actor	\\N	{"A Doctor"}	1645	685
7337	8	actor	\\N	{"Accident Witness"}	1645	567
7338	9	actor	\\N	{"Accident Witness"}	1645	637
7339	1	actor	\\N	{"Mortimer Bunny"}	1646	1084
7340	2	actress	\\N	{"The Governess"}	1646	579
7341	3	actress	\\N	{"Helen, the Child"}	1646	804
7342	4	actress	\\N	{"Amelia, Mortimer's Sister"}	1646	1495
7343	5	director	\\N	{}	1646	1496
7344	6	actress	\\N	{"The Nurse"}	1646	1497
7345	7	actress	\\N	{"The Maid"}	1646	1498
7346	1	actress	\\N	{Ruth}	1647	601
7347	2	director	\\N	{}	1647	617
7348	3	producer	producer	{}	1647	1247
7349	1	actor	\\N	{"Mr. Brown"}	1648	1084
7350	2	actress	\\N	{"Mrs. Brown"}	1648	579
7351	3	actor	\\N	{}	1648	487
7352	4	actress	\\N	{}	1648	942
7353	5	director	\\N	{}	1648	565
7354	6	actress	\\N	{}	1648	965
7355	7	actor	\\N	{}	1648	1499
7356	1	actress	\\N	{"The Barmaid"}	1649	957
7357	2	actor	\\N	{"The Widow's Son"}	1649	863
7358	3	actress	\\N	{"The Widow's Son's Sweetheart"}	1649	1196
7359	4	actor	\\N	{"The Widow's Son's Rival"}	1649	581
7360	5	director	\\N	{}	1649	467
7361	6	cinematographer	\\N	{}	1649	49
7362	7	actress	\\N	{"The Widow"}	1649	699
7363	8	actor	\\N	{"Undetermined Secondary Role"}	1649	967
7364	1	actress	\\N	{"The Younger Brother's Wife"}	1650	474
7365	2	actor	\\N	{"The Clergyman"}	1650	469
7366	3	actor	\\N	{"The Younger Brother"}	1650	1271
7367	4	actor	\\N	{}	1650	1212
7368	5	director	\\N	{}	1650	468
7369	6	producer	producer	{}	1650	119
7370	7	actor	\\N	{}	1650	1500
7371	1	actor	\\N	{"The Old Miner"}	1651	1383
7372	2	actress	\\N	{"Lulu - the Old Miner's Daughter"}	1651	1501
7373	3	actor	\\N	{"Wild Dick"}	1651	519
7374	4	actor	\\N	{"Tom - a Young Easterner"}	1651	248
7375	5	director	\\N	{}	1651	858
7376	1	actor	\\N	{"William Hart"}	1652	920
7377	2	actress	\\N	{"The Miner's Wife"}	1652	575
7378	3	actor	\\N	{"1st Indian"}	1652	919
7379	4	actor	\\N	{"2nd Indian"}	1652	924
7380	5	director	\\N	{}	1652	203
7381	1	actor	\\N	{}	1653	1502
7382	2	actress	\\N	{}	1653	1503
7383	3	director	\\N	{}	1653	925
7384	4	producer	producer	{}	1653	617
7385	1	director	\\N	{}	1654	486
7386	1	actress	\\N	{"Mrs. Grey - the Wife"}	1655	1131
7387	2	director	\\N	{}	1655	1055
7388	3	writer	\\N	{}	1655	1504
7389	4	producer	producer	{}	1655	119
7390	1	director	\\N	{}	1656	486
7391	10	actress	\\N	{}	1657	414
7392	1	actor	\\N	{"William Whittier"}	1657	693
7393	2	actress	\\N	{Mary}	1657	508
7394	3	actor	\\N	{"John Whittier - William's Father"}	1657	644
7395	4	actor	\\N	{"Mary's Alcoholic Father"}	1657	516
7396	5	director	\\N	{}	1657	467
7397	6	writer	\\N	{}	1657	941
7398	7	cinematographer	\\N	{}	1657	49
7399	8	actress	\\N	{"Mary's Little Sister"}	1657	470
7400	9	actress	\\N	{"The Neighbor"}	1657	515
7401	1	actor	\\N	{"Mr. Kirby"}	1658	1390
7402	2	actress	\\N	{"Mrs. Kirby"}	1658	601
7403	3	director	\\N	{}	1658	617
7404	4	producer	producer	{}	1658	1247
7405	1	actor	\\N	{"The Artist"}	1659	1307
7406	2	actress	\\N	{"Zenia, the Model"}	1659	1505
7407	3	actress	\\N	{"Undetermined Role"}	1659	1434
7409	1	director	\\N	{}	1660	486
7410	1	actor	\\N	{"Holmes - a Miner"}	1661	1502
7411	2	actress	\\N	{"Nell Holmes - the Miner's Daughter"}	1661	1253
7412	3	actor	\\N	{"Haven - a Young Prospector"}	1661	1301
7413	4	actor	\\N	{}	1661	1507
7414	5	director	\\N	{}	1661	617
7415	1	actress	\\N	{"Donald's Mother"}	1662	965
7416	2	actor	\\N	{"Donald Gray"}	1662	487
7417	3	actress	\\N	{"Donald's Fiancee"}	1662	1292
7418	4	actress	\\N	{"Donald's Flirt"}	1662	805
7419	5	writer	story	{}	1662	1508
7420	1	actor	\\N	{"Will - 1st Brother"}	1663	572
7421	2	actor	\\N	{"Charles - 2nd Brother"}	1663	863
7422	3	actress	\\N	{"The Pioneer Girl"}	1663	575
7423	4	actor	\\N	{"The Messenger"}	1663	619
7424	5	director	\\N	{}	1663	467
7425	6	writer	\\N	{}	1663	1315
7426	7	cinematographer	\\N	{}	1663	49
7427	8	actress	\\N	{"The Girl's Mother"}	1663	515
7428	9	actor	\\N	{"The Girl's Father"}	1663	644
7429	1	actor	\\N	{}	1664	925
7430	2	actor	\\N	{}	1664	261
7431	3	actress	\\N	{}	1664	1509
7432	4	actress	\\N	{}	1664	1510
7433	5	director	\\N	{}	1664	617
7434	1	actress	\\N	{"Buster aka Budge - One of the Children"}	1665	803
7435	2	actress	\\N	{"Boxer aka Toodle - One of the Children"}	1665	804
7436	3	actor	\\N	{"Undetermined Role"}	1665	1084
7437	4	actor	\\N	{"Harry Burton - the Children's Uncle"}	1665	487
7438	5	actress	\\N	{"Helen Manton - Harry's Sweetheart"}	1665	1511
7439	6	actor	\\N	{"Harry's Sister's Husband"}	1665	1352
7440	7	actress	\\N	{"Harry's Sister"}	1665	1512
7441	10	actress	\\N	{}	1666	414
7442	1	actor	\\N	{George}	1666	572
7443	2	actor	\\N	{"Colonel Frazier"}	1666	599
7444	3	actress	\\N	{"Colonel Frazier's Wife"}	1666	523
7445	4	actress	\\N	{"The Fraziers' Child"}	1666	707
7446	5	director	\\N	{}	1666	467
7447	6	writer	\\N	{}	1666	1078
7448	7	cinematographer	\\N	{}	1666	49
7449	8	actress	\\N	{"The Daughter as an Adult"}	1666	575
7450	9	actor	\\N	{"The Daughter's Sweetheart"}	1666	1494
7451	10	actress	\\N	{"The Little Orphan"}	1667	470
7452	1	actor	\\N	{George}	1667	572
7453	2	actress	\\N	{"Mrs. Frazier"}	1667	523
7454	3	actress	\\N	{"The Frazier Child"}	1667	534
7455	4	actress	\\N	{"The Frazier Child as an Adult"}	1667	575
7456	5	director	\\N	{}	1667	467
7457	6	writer	\\N	{}	1667	1078
7458	7	cinematographer	\\N	{}	1667	49
7459	8	actor	\\N	{"The English Cousin - The Grown Daughter's Sweetheart"}	1667	1494
7460	9	actor	\\N	{"John Gray - the Lawyer"}	1667	686
7461	1	actor	\\N	{"Mr. Carter"}	1668	519
7462	2	actress	\\N	{"Mrs. Carter"}	1668	1287
7463	3	actor	\\N	{"The Carter Son"}	1668	248
7464	4	actor	\\N	{"An Editor"}	1668	1513
7465	5	director	\\N	{}	1668	1257
7466	6	writer	scenario	{}	1668	858
7467	7	actor	\\N	{"A Man About Town"}	1668	243
7468	8	actress	\\N	{"An Actress"}	1668	535
7469	9	actor	\\N	{"A Clubman"}	1668	1514
7470	1	actor	\\N	{}	1669	1515
7471	2	actress	\\N	{}	1669	1516
7472	3	actress	\\N	{"Mary Lanon"}	1669	1131
7473	4	director	\\N	{}	1669	1055
7474	5	writer	story	{}	1669	1517
7475	1	actor	\\N	{"The Groom"}	1670	1127
7476	2	actress	\\N	{"The Bride"}	1670	1470
7477	1	actress	\\N	{"Mary Fuller"}	1671	601
7478	2	actor	\\N	{"John Hollister"}	1671	576
7479	1	actress	\\N	{}	1672	601
7480	2	actress	\\N	{"Maid Purity"}	1672	1253
7481	3	actor	\\N	{"Prince Charming"}	1672	1518
7482	4	director	\\N	{}	1672	617
7483	5	producer	producer	{}	1672	1247
7484	1	actress	\\N	{"Betty Carleton"}	1673	512
7485	2	actress	\\N	{}	1673	1519
7486	3	actress	\\N	{}	1673	598
7487	4	actor	\\N	{"The Burglar"}	1673	604
7488	5	actress	\\N	{"Betty's Rival"}	1673	1292
7489	1	actress	\\N	{"Mrs. Murray"}	1674	1287
7490	2	actress	\\N	{"Faith Murray - the Daughter"}	1674	642
7491	3	actor	\\N	{"George Washington"}	1674	519
7492	4	actor	\\N	{"Israel Putnam"}	1674	856
7493	5	director	\\N	{}	1674	544
7494	6	actor	\\N	{"Bob - a Young Continental Officer"}	1674	248
7495	7	actor	\\N	{"British Officer"}	1674	1520
7496	8	actor	\\N	{"Mean Hessian Officer"}	1674	1239
7497	9	actress	\\N	{}	1674	1521
7498	1	actress	\\N	{Mary}	1675	695
7499	2	actress	\\N	{"Mary's Cousin"}	1675	957
7500	3	actor	\\N	{"Mary's Sweetheart"}	1675	946
7501	4	actress	\\N	{}	1675	515
7502	5	director	\\N	{}	1675	467
7503	6	writer	\\N	{}	1675	414
7504	7	cinematographer	\\N	{}	1675	49
7505	8	actress	\\N	{}	1675	1196
7506	9	actor	\\N	{}	1675	863
7507	10	actor	\\N	{"The Butler"}	1676	1383
7508	1	actor	\\N	{"Sir Andrew"}	1676	769
7509	2	actor	\\N	{"Honorable Grant Richmond"}	1676	519
7510	3	actress	\\N	{"The Hostess"}	1676	1522
7511	4	actress	\\N	{"Amateur Actress"}	1676	642
7512	5	director	\\N	{}	1676	1355
7513	6	writer	story	{}	1676	1523
7514	7	actor	\\N	{"Amateur Actor"}	1676	243
7515	8	actress	\\N	{"Amateur Actress"}	1676	247
7516	9	actor	\\N	{"Amateur Actor"}	1676	1286
7517	1	director	\\N	{}	1677	82
7518	2	director	\\N	{}	1677	486
7519	1	actress	\\N	{Annie}	1678	883
7520	2	actor	\\N	{"Heinz Nelson"}	1678	1524
7521	3	actor	\\N	{"Johann, Kutscher auf dem Gute"}	1678	1525
7522	4	actor	\\N	{"Rittergutsbesitzer Bergmann"}	1678	1526
7523	5	director	\\N	{}	1678	887
7524	6	cinematographer	\\N	{}	1678	1453
7525	7	actress	\\N	{"Bergmann Frau"}	1678	1451
7526	10	actor	\\N	{}	1679	1527
7527	1	actor	\\N	{Navarre}	1679	925
7528	2	actress	\\N	{"Lucy Dickenson"}	1679	512
7529	3	actor	\\N	{Travis}	1679	1099
7530	4	actor	\\N	{"Lieutenant Dickenson"}	1679	1528
7531	5	director	\\N	{}	1679	977
7532	6	producer	producer	{}	1679	71
7533	7	cinematographer	\\N	{}	1679	926
7534	8	actor	\\N	{}	1679	1529
7535	9	actress	\\N	{}	1679	1530
7536	1	actor	\\N	{Scudder}	1680	425
7537	2	actor	\\N	{}	1680	427
7538	3	actress	\\N	{}	1680	1057
7539	4	actor	\\N	{}	1680	939
7540	5	director	\\N	{}	1680	429
7541	6	writer	\\N	{}	1680	1531
7542	7	producer	producer	{}	1680	200
7543	1	actress	\\N	{Zelda}	1681	601
7544	2	actor	\\N	{"Jose Gomez"}	1681	576
7545	3	director	\\N	{}	1681	617
7546	4	producer	producer	{}	1681	1247
7547	10	actor	\\N	{"The Bartender"}	1682	685
7548	1	actor	\\N	{"Bill Weston"}	1682	516
7549	2	actress	\\N	{"Edith Weston - Bill's Wife"}	1682	523
7550	3	actor	\\N	{"Handsome Jack"}	1682	599
7551	4	actress	\\N	{"Edith's Friend"}	1682	575
7552	5	director	\\N	{}	1682	467
7553	6	writer	\\N	{}	1682	1077
7554	7	cinematographer	\\N	{}	1682	49
7555	8	actor	\\N	{"Jack's Friend"}	1682	619
7556	9	actor	\\N	{"The Fiddler"}	1682	863
7557	1	actress	\\N	{}	1683	465
7558	2	actor	\\N	{}	1683	769
7559	3	actress	\\N	{}	1683	642
7560	4	actor	\\N	{"The Old Duke"}	1683	519
7561	5	director	\\N	{}	1683	544
7642	8	actress	\\N	{}	1697	1545
7562	1	actor	\\N	{"Dick Harding 'A black sheep'"}	1684	425
7563	2	actress	\\N	{"Juanita Lopez"}	1684	426
7564	3	actor	\\N	{"Juan Lopez"}	1684	1532
7565	4	actor	\\N	{"Enrique Lopez"}	1684	1464
7566	5	director	\\N	{}	1684	1533
7567	6	producer	producer	{}	1684	200
7568	7	actress	\\N	{"Mother Lopez"}	1684	1534
7569	1	director	\\N	{}	1685	486
7570	1	actor	\\N	{"Lt. Robbins"}	1686	1278
7571	2	actress	\\N	{Haidee}	1686	601
7572	3	actor	\\N	{}	1686	576
7573	4	actress	\\N	{"A Woman of the Harem"}	1686	1409
7574	5	director	\\N	{}	1686	1535
7575	6	director	\\N	{}	1686	617
7576	7	producer	producer	{}	1686	1247
7577	8	actor	\\N	{}	1686	1254
7578	10	actor	\\N	{"In Second Tribe"}	1687	1073
7579	1	actor	\\N	{"The Indian Chief"}	1687	911
7580	2	actor	\\N	{"The Indian Chief's Brother"}	1687	572
7581	3	actor	\\N	{"The Renegade"}	1687	581
7582	4	actor	\\N	{"At Funeral"}	1687	573
7583	5	director	\\N	{}	1687	467
7584	6	cinematographer	\\N	{}	1687	49
7585	7	actor	\\N	{Indian}	1687	882
7586	8	actress	\\N	{}	1687	1196
7587	9	actor	\\N	{"In Second Tribe","At Funeral"}	1687	619
7588	1	actor	\\N	{"Revered Warren Addington"}	1688	203
7589	2	actress	\\N	{"Red Feather"}	1688	1509
7590	3	actor	\\N	{"Jack Beardsley"}	1688	920
7591	4	actor	\\N	{}	1688	924
7592	5	actor	\\N	{}	1688	921
7593	6	actor	\\N	{}	1688	675
7594	7	actor	\\N	{}	1688	676
7595	1	actor	\\N	{"Grey Deer"}	1689	203
7596	1	actress	\\N	{}	1690	1292
7597	1	director	\\N	{}	1691	85
7598	1	actor	\\N	{"Broncho Billy"}	1692	203
7599	2	actor	\\N	{}	1692	923
7600	3	actor	\\N	{}	1692	924
7601	4	actor	\\N	{}	1692	921
7602	5	actor	\\N	{}	1692	675
7603	6	actor	\\N	{}	1692	920
7604	10	actress	\\N	{"Mrs. Vanderfield"}	1693	545
7605	1	actress	\\N	{"Belle Travers - the Heart Breaker"}	1693	465
7606	2	actor	\\N	{"The American"}	1693	522
7607	3	actor	\\N	{"The Englishman"}	1693	1536
7608	4	actor	\\N	{"The German"}	1693	1379
7609	5	director	\\N	{}	1693	892
7610	6	actor	\\N	{"The Irishman"}	1693	1279
7611	7	actor	\\N	{"The Hebrew"}	1693	1537
7612	8	actor	\\N	{}	1693	1514
7613	9	actor	\\N	{}	1693	1296
7614	1	director	\\N	{}	1694	486
7615	10	actor	\\N	{"In Shop"}	1695	573
7616	1	actor	\\N	{Tony}	1695	946
7617	2	actress	\\N	{Alice}	1695	601
7618	3	actress	\\N	{"Florence - Alice's Sister"}	1695	629
7619	4	actor	\\N	{"Bobby Mack - Florence's Fiancé"}	1695	510
7620	5	director	\\N	{}	1695	467
7621	6	cinematographer	\\N	{}	1695	49
7622	7	actress	\\N	{"The Mother"}	1695	515
7623	8	actor	\\N	{"At Ball"}	1695	567
7624	9	actor	\\N	{"At Ball"}	1695	466
7625	10	actress	\\N	{}	1696	1292
7626	1	actor	\\N	{}	1696	863
7627	2	actress	\\N	{"The Wife"}	1696	957
7628	3	actor	\\N	{}	1696	946
7629	4	actor	\\N	{}	1696	693
7630	5	director	\\N	{}	1696	467
7631	6	writer	\\N	{}	1696	1082
7632	7	cinematographer	\\N	{}	1696	49
7633	8	actor	\\N	{}	1696	1201
7634	9	actor	\\N	{}	1696	572
7635	1	actor	\\N	{}	1697	1538
7636	2	actor	\\N	{}	1697	1539
7637	3	actress	\\N	{}	1697	1540
7638	4	actress	\\N	{}	1697	1541
7639	5	director	\\N	{}	1697	1542
7640	6	cinematographer	\\N	{}	1697	1543
7641	7	actress	\\N	{}	1697	1544
7643	1	actress	\\N	{"Jane Shore"}	1698	508
7644	2	director	\\N	{}	1698	688
7645	3	writer	play	{}	1698	1546
7646	1	actor	\\N	{"The Husband"}	1699	466
7647	2	actress	\\N	{"The Wife"}	1699	957
7648	3	actor	\\N	{"The Doctor"}	1699	599
7649	4	director	\\N	{}	1699	467
7650	5	director	\\N	{}	1699	967
7651	6	cinematographer	\\N	{}	1699	49
7652	1	director	\\N	{}	1700	486
7653	1	actor	\\N	{"Mark Anthony"}	1701	588
7654	2	actress	\\N	{Portia}	1701	1547
7655	3	actor	\\N	{Brutus}	1701	1548
7656	4	actor	\\N	{"Julius Caesar"}	1701	1549
7657	5	writer	play	{}	1701	126
7658	6	actress	\\N	{Calpurnia}	1701	1550
7659	7	actor	\\N	{Cassius}	1701	1551
7660	1	director	\\N	{}	1702	486
7661	10	actress	\\N	{"Waitress at the Inn"}	1703	1552
7662	1	actor	\\N	{Axelsson}	1703	1185
7663	2	actress	\\N	{"Anna, Axelssons daughter"}	1703	1553
7664	3	actor	\\N	{Dahl}	1703	1188
7665	4	actor	\\N	{Jäger}	1703	1190
7666	5	director	\\N	{}	1703	1186
7667	6	writer	play	{}	1703	1554
7668	7	writer	\\N	{}	1703	1555
7669	8	cinematographer	\\N	{}	1703	1229
7670	9	actress	\\N	{"Mrs Strömqvist"}	1703	1189
7671	1	director	\\N	{}	1704	486
7672	1	director	\\N	{}	1705	486
7673	10	actress	\\N	{"Lat-to-nick as a Child"}	1706	1556
7674	1	actor	\\N	{"Kit Carson"}	1706	760
7675	2	actress	\\N	{Lat-to-nick}	1706	1467
7676	3	actor	\\N	{"Chief Azakah"}	1706	1557
7677	4	actor	\\N	{"The Express Agent"}	1706	261
7678	5	director	\\N	{}	1706	429
7679	6	writer	\\N	{}	1706	1531
7680	7	producer	producer	{}	1706	200
7681	8	actor	\\N	{"The Stage Driver"}	1706	1558
7682	9	actress	\\N	{"Azakah's White Squaw"}	1706	1559
7683	1	director	\\N	{}	1707	486
7684	10	actor	\\N	{Rescuer}	1708	1073
7685	1	actor	\\N	{"The Hobo"}	1708	599
7686	2	actor	\\N	{"The Rancher"}	1708	516
7687	3	actress	\\N	{"The Rancher's Daughter"}	1708	575
7688	4	actor	\\N	{"The Foreman"}	1708	573
7689	5	director	\\N	{}	1708	467
7690	6	cinematographer	\\N	{}	1708	49
7691	7	actor	\\N	{"The Hobo's Friend"}	1708	466
7692	8	actress	\\N	{"1st Servant"}	1708	1350
7693	9	actress	\\N	{"2nd Servant"}	1708	515
7694	1	director	\\N	{}	1709	486
7695	10	actor	\\N	{"Cavalry Officer"}	1710	573
7696	1	actress	\\N	{Mary}	1710	695
7697	2	actor	\\N	{"Jim - Mary's Sweetheart"}	1710	863
7698	3	actor	\\N	{"John - Mary's Suitor"}	1710	946
7699	4	actor	\\N	{"John's Friend","In Wagon Train"}	1710	882
7700	5	director	\\N	{}	1710	467
7701	6	writer	story	{}	1710	578
7702	7	writer	\\N	{}	1710	472
7703	8	cinematographer	\\N	{}	1710	49
7704	9	actor	\\N	{"The Indian","In Wagon Train"}	1710	619
7705	1	director	\\N	{}	1711	486
7706	1	actor	\\N	{"James Brown"}	1712	1307
7707	2	director	\\N	{}	1712	1560
7708	3	producer	producer	{}	1712	881
7709	1	writer	novel "The Last of the Mohicans"	{}	1713	784
7710	2	producer	producer	{}	1713	1132
7711	1	actor	\\N	{"Jack Corning - the Sheriff's Son"}	1714	1301
7712	2	director	\\N	{}	1714	764
7713	3	producer	producer	{}	1714	765
7714	1	actor	\\N	{"Bridget O'Flynn"}	1715	1084
7715	2	actor	\\N	{}	1715	565
7716	3	actor	\\N	{}	1715	1159
7717	4	actor	\\N	{"A Playwright"}	1715	1134
7718	5	director	\\N	{}	1715	1561
7719	6	writer	scenario	{}	1715	1562
7720	1	actress	\\N	{}	1716	1340
7721	2	actor	\\N	{Gabbett}	1716	1341
7722	3	actress	\\N	{}	1716	1342
7723	4	director	\\N	{}	1716	1339
7724	5	writer	novel "For the Term of His Natural Life"	{}	1716	1563
7725	6	cinematographer	\\N	{}	1716	1343
7726	1	actor	\\N	{"Bert Duncan"}	1717	1245
7727	2	actress	\\N	{"Polly Berry - the Lighthouse Keeper's Daughter"}	1717	601
7728	3	actor	\\N	{"Nat Berry - The Lighthouse Keeper"}	1717	1246
7729	4	actor	\\N	{"Tom Atkins"}	1717	1564
7730	5	director	\\N	{}	1717	617
7731	6	producer	producer	{}	1717	1247
7732	7	actor	\\N	{"Wedding Guest"}	1717	1518
7733	8	actress	\\N	{"Wedding Guest"}	1717	848
7734	10	actor	\\N	{"One of the Father's Friends"}	1718	685
7735	1	actress	\\N	{"The Tenement Girl"}	1718	575
7736	2	actress	\\N	{"The Tenement Girl's Mother"}	1718	612
7737	3	actor	\\N	{"The Tenement Girl's Father"}	1718	644
7738	4	actor	\\N	{"The Tenement Owner"}	1718	516
7739	5	director	\\N	{}	1718	467
7740	6	cinematographer	\\N	{}	1718	49
7741	7	actor	\\N	{"The Clothing Contractor"}	1718	619
7742	8	actor	\\N	{"The Doctor"}	1718	882
7743	9	actor	\\N	{"The Butler"}	1718	1073
7744	1	director	\\N	{}	1719	486
7745	1	director	\\N	{}	1720	82
7746	2	director	\\N	{}	1720	486
7747	1	actress	\\N	{}	1721	601
7748	2	actor	\\N	{}	1721	1518
7749	3	director	\\N	{}	1721	617
7750	4	producer	producer	{}	1721	1247
7751	1	self	\\N	{Self}	1722	334
7752	2	self	\\N	{"Self - John Bunny"}	1722	1084
7753	3	self	\\N	{"Self - Maurice Costello"}	1722	487
7754	4	self	\\N	{"Self - George McManus"}	1722	1565
7755	5	director	\\N	{}	1722	93
7756	6	cinematographer	\\N	{}	1722	1566
7757	10	actress	\\N	{"Old Granny"}	1723	1567
7758	1	actress	\\N	{"Little Red Riding Hood"}	1723	601
7759	2	actor	\\N	{}	1723	576
7760	3	actress	\\N	{}	1723	848
7761	4	actor	\\N	{}	1723	684
7762	5	director	\\N	{}	1723	1254
7763	6	writer	story "Le Petit Chaperon rouge"	{}	1723	99
7764	7	writer	\\N	{}	1723	1101
7765	8	actress	\\N	{"The Mother"}	1723	1568
7766	9	actor	\\N	{"The Father"}	1723	1569
7767	1	actor	\\N	{"The Invalid"}	1724	1383
7768	2	actor	\\N	{"The Invalid's Son"}	1724	1408
7769	3	actor	\\N	{"Judge Porter"}	1724	856
7770	4	actress	\\N	{"Judge Porter's Daughter"}	1724	1570
7771	5	director	\\N	{}	1724	892
7772	10	actor	\\N	{"The Telegrapher"}	1725	466
7773	1	actress	\\N	{"The Telegrapher"}	1725	695
7774	2	actor	\\N	{"The Lonedale Operator - the Telegrapher's Father"}	1725	516
7775	3	actor	\\N	{"The Engineer"}	1725	882
7776	4	actor	\\N	{"The Fireman"}	1725	572
7777	5	director	\\N	{}	1725	467
7778	6	writer	\\N	{}	1725	510
7779	7	actor	\\N	{"1st Tramp"}	1725	599
7780	8	actor	\\N	{"2nd Tramp"}	1725	946
7781	9	actor	\\N	{"The Company Agent"}	1725	863
7782	10	actor	\\N	{"At Party"}	1726	693
7783	1	actress	\\N	{Edith}	1726	695
7784	2	actress	\\N	{"Edith's Mother"}	1726	699
7785	3	actor	\\N	{Ned}	1726	863
7786	4	actress	\\N	{"Ned's Wife"}	1726	523
7787	5	director	\\N	{}	1726	467
7788	6	writer	\\N	{}	1726	1082
7789	7	cinematographer	\\N	{}	1726	49
7790	8	actress	\\N	{"Ned's Son"}	1726	1249
7791	9	actress	\\N	{"Mother Superior"}	1726	515
7792	1	actor	\\N	{"Bill - the Husband"}	1727	1486
7793	2	actress	\\N	{"Grace - the Wife"}	1727	1485
7794	3	director	\\N	{}	1727	98
7795	1	actress	\\N	{"The Sleepwalking Heroine"}	1728	1131
7796	2	actress	\\N	{"The Laundress"}	1728	1050
7797	3	actor	\\N	{"The Son of the Laundress"}	1728	845
7798	4	director	\\N	{}	1728	1055
7799	5	writer	scenario	{}	1728	1274
7800	1	director	\\N	{}	1729	486
7801	1	actor	\\N	{"Davis - an Explorer"}	1730	964
7802	2	actor	\\N	{"Capt. John Smith - Explorer"}	1730	1571
7803	3	actor	\\N	{"Chief of the Eskimo Tribe"}	1730	1572
7804	4	actress	\\N	{"The Eskimo Orphan"}	1730	1573
7805	5	producer	producer	{}	1730	200
7806	6	actress	\\N	{"The Eskimo Chief's Wife"}	1730	1574
7807	7	actor	\\N	{"The Bear Hunter"}	1730	1575
7808	10	actress	\\N	{Elephant}	1731	1576
7809	1	actress	\\N	{"Meta Kruga"}	1731	1057
7810	2	actor	\\N	{"Jan Kruga"}	1731	964
7811	3	actor	\\N	{"Sir John Morgan"}	1731	1337
7812	4	actor	\\N	{Hirshal}	1731	1220
7813	5	director	\\N	{}	1731	561
7814	6	writer	\\N	{}	1731	1577
7815	7	producer	producer	{}	1731	200
7816	8	actor	\\N	{Hans}	1731	1578
7817	9	actor	\\N	{"Undetermined Role"}	1731	427
7818	1	director	\\N	{}	1732	486
7819	1	actress	\\N	{Mary}	1733	601
7820	2	actor	\\N	{Jack}	1733	576
7821	1	actress	\\N	{}	1734	1331
7822	2	director	\\N	{}	1734	486
7823	1	actress	\\N	{"Nell - a Young Schoolteacher"}	1735	1579
7824	2	actor	\\N	{"Jack - the First Suitor"}	1735	519
7825	3	actor	\\N	{"Tom - the Second Suitor"}	1735	1514
7826	4	actor	\\N	{}	1735	243
7827	5	writer	\\N	{}	1735	1580
7828	1	director	\\N	{}	1736	486
7829	10	actor	\\N	{"Undetermined Role"}	1737	1201
7830	1	actress	\\N	{"The Mountain Girl"}	1737	695
7831	2	actor	\\N	{"The Manley Suitor"}	1737	572
7832	3	actor	\\N	{"The Shiftless Suitor"}	1737	863
7833	4	actor	\\N	{"The City Suitor"}	1737	946
7834	5	director	\\N	{}	1737	467
7835	6	writer	\\N	{}	1737	599
7836	7	cinematographer	\\N	{}	1737	49
7837	8	actress	\\N	{"The Girl's Mother"}	1737	1350
7838	9	actor	\\N	{}	1737	684
7839	1	director	\\N	{}	1738	486
7840	1	director	\\N	{}	1739	486
7841	1	actor	\\N	{}	1740	1581
7842	2	actor	\\N	{}	1740	1582
7843	3	actor	\\N	{}	1740	1265
7844	4	actress	\\N	{}	1740	1583
7845	5	director	\\N	{}	1740	85
7846	6	director	\\N	{}	1740	1584
7847	1	actor	\\N	{"George Maxwell"}	1741	203
7848	2	actress	\\N	{"The Woman"}	1741	918
7849	3	actor	\\N	{"A Mexican"}	1741	676
7850	4	actor	\\N	{"A Mexican"}	1741	924
7851	5	actor	\\N	{}	1741	675
7852	6	actor	\\N	{}	1741	678
7853	7	actress	\\N	{}	1741	1509
7854	8	actor	\\N	{}	1741	923
7855	9	actor	\\N	{}	1741	920
7856	1	director	\\N	{}	1742	486
7857	1	actor	\\N	{"Ludwig Heintz"}	1743	1514
7858	2	actress	\\N	{"Theresa Linde - Ludwig's Sweetheart"}	1743	1407
7859	3	actor	\\N	{"Herr Linde - Theresa's Father"}	1743	1383
7860	4	actor	\\N	{"Herman Schmidt"}	1743	522
7861	5	director	\\N	{}	1743	892
7862	6	actor	\\N	{"One of the Boys in the Butcher Shop"}	1743	1408
7863	7	actor	\\N	{"One of the Boys in the Butcher Shop"}	1743	1382
7864	8	actress	\\N	{"The Landlady"}	1743	245
7865	1	actor	\\N	{"The Boy"}	1744	248
7866	2	actor	\\N	{"The Father"}	1744	1383
7867	3	actress	\\N	{"The Mother"}	1744	245
7868	4	actress	\\N	{"The Girl"}	1744	465
7869	5	director	\\N	{}	1744	1355
7870	6	actress	\\N	{"The Girl's Mother"}	1744	252
7871	7	actor	\\N	{"A Theatrical Manager"}	1744	1379
7872	1	actor	\\N	{Macbeth}	1745	588
7873	2	actress	\\N	{"Lady Macbeth"}	1745	1547
7874	3	actor	\\N	{}	1745	1548
7875	4	actress	\\N	{}	1745	1550
7876	5	writer	play	{}	1745	126
7877	6	actor	\\N	{}	1745	1551
7878	7	actor	\\N	{}	1745	1549
7879	1	actor	\\N	{Babylas}	1746	1585
7880	2	director	\\N	{}	1746	818
7881	10	actor	\\N	{}	1747	946
7882	1	actor	\\N	{}	1747	693
7883	2	actress	\\N	{}	1747	683
7884	3	actor	\\N	{}	1747	686
7885	4	actor	\\N	{}	1747	466
7886	5	director	\\N	{}	1747	467
7887	6	writer	\\N	{}	1747	601
7888	7	cinematographer	\\N	{}	1747	49
7889	8	actor	\\N	{}	1747	573
7890	9	actor	\\N	{}	1747	882
7891	1	director	\\N	{}	1748	718
7892	1	actor	\\N	{"The Madman"}	1749	1307
7893	2	actor	\\N	{"The Warden"}	1749	1308
7894	3	actor	\\N	{Butler}	1749	1435
7895	4	actor	\\N	{Official}	1749	1586
7896	5	actor	\\N	{Guard}	1749	1587
7897	6	actor	\\N	{Balloonist}	1749	1588
7898	1	director	\\N	{}	1750	486
7899	1	actress	\\N	{"Elsie Keene"}	1751	601
7900	2	actor	\\N	{"Jimmie Keene"}	1751	576
7901	3	actor	\\N	{}	1751	770
7902	4	director	\\N	{}	1751	617
7903	5	producer	producer	{}	1751	1247
7904	1	director	\\N	{}	1752	486
7905	10	actor	\\N	{"An Usher","At Dance"}	1753	466
7906	1	actor	\\N	{"The Leading Man"}	1753	599
7907	2	actress	\\N	{"The Young Woman"}	1753	695
7908	3	actor	\\N	{"Young Woman's Family (unconfirmed) (unconfirmed)"}	1753	693
7909	4	actress	\\N	{"In First Audience"}	1753	515
7910	5	director	\\N	{}	1753	467
7911	6	writer	\\N	{}	1753	1589
7912	7	cinematographer	\\N	{}	1753	49
7913	8	actor	\\N	{"Young Woman's Family"}	1753	685
7914	9	actor	\\N	{Actor,Backstage}	1753	567
7915	1	actor	\\N	{"The Good for Nothing"}	1754	1314
7916	2	actress	\\N	{"The Ranchman's Wife"}	1754	1287
7917	3	actress	\\N	{"The Ranchman's Daughter"}	1754	535
7918	4	actress	\\N	{"The Little Sick Girl"}	1754	1389
7919	5	director	\\N	{}	1754	1257
7920	6	actor	\\N	{"The Ranchman's Foreman"}	1754	1514
7921	7	actor	\\N	{"The Chinese Servant"}	1754	1312
7922	8	actor	\\N	{"The Leader of the Outlaws"}	1754	519
7923	10	actress	\\N	{"Lunchroom Hostess"}	1755	699
7924	1	actor	\\N	{"The Barber"}	1755	510
7925	2	actress	\\N	{"The Manicure Lady"}	1755	957
7926	3	actor	\\N	{"The Rival"}	1755	466
7927	4	actress	\\N	{"First Customer's Wife"}	1755	515
7928	5	writer	story	{}	1755	693
7929	6	cinematographer	\\N	{}	1755	873
7930	7	actor	\\N	{"Maitre D'"}	1755	685
7931	8	actor	\\N	{"First Customer"}	1755	686
7932	9	actor	\\N	{"Third Customer"}	1755	581
7933	1	actor	\\N	{}	1756	1245
7934	2	actress	\\N	{"Elinor Williams"}	1756	601
7935	3	actor	\\N	{"Norman Duncan"}	1756	576
7936	4	actress	\\N	{Lola}	1756	1409
7937	5	director	\\N	{}	1756	617
7938	6	producer	producer	{}	1756	1247
7939	7	cinematographer	\\N	{}	1756	1276
7940	8	actor	\\N	{Petro}	1756	770
7941	1	actor	\\N	{}	1757	773
7942	2	actor	\\N	{}	1757	630
7943	3	director	\\N	{}	1757	1054
7944	1	actor	\\N	{"Basil King - the Master"}	1758	1278
7945	2	actress	\\N	{"Elsie Graham"}	1758	601
7946	3	actor	\\N	{"Henry Jenkins - the Servant"}	1758	1390
7947	4	director	\\N	{}	1758	617
7948	5	producer	producer	{}	1758	1247
7949	10	actress	\\N	{"Maud's Mother"}	1759	1590
7950	1	actress	\\N	{"Maud Muller"}	1759	1591
7951	2	actor	\\N	{"The Judge"}	1759	1592
7952	3	actress	\\N	{"The Judge's Bride"}	1759	1593
7953	4	actress	\\N	{"The Judge's Mother"}	1759	1233
7954	5	director	\\N	{}	1759	1303
7955	6	writer	play	{}	1759	1594
7956	7	writer	poem	{}	1759	514
7957	8	producer	producer	{}	1759	765
7958	9	actress	\\N	{"The Judge's Sister"}	1759	1595
7959	1	actor	\\N	{Max}	1760	773
7960	2	actor	\\N	{}	1760	1596
7961	3	actress	\\N	{}	1760	1597
7962	4	actor	\\N	{}	1760	1598
7963	5	actor	\\N	{}	1760	1599
7964	6	actress	\\N	{}	1760	1600
7965	7	actress	\\N	{}	1760	1601
7966	8	actor	\\N	{}	1760	799
7967	1	actor	\\N	{"Tom - an Honest Attorney"}	1761	487
7968	2	actor	\\N	{"Dick - Tom's Dissolute Brother"}	1761	1306
7969	3	actress	\\N	{"Tom's Wife"}	1761	598
7970	4	actress	\\N	{"One of Tom's Children"}	1761	803
7971	5	actress	\\N	{"One of Tom's Children"}	1761	804
7972	6	actor	\\N	{"The Judge"}	1761	373
7973	7	actor	\\N	{"The Gambler"}	1761	1602
7974	8	actress	\\N	{"The Maid"}	1761	942
7975	9	actor	\\N	{"A Thief"}	1761	1603
7976	1	writer	\\N	{}	1762	1604
7977	1	actress	\\N	{"Louise Spencer"}	1763	601
7978	2	actor	\\N	{"Lieutenant Shannon"}	1763	576
7979	3	director	\\N	{}	1763	617
7980	4	producer	producer	{}	1763	1247
7981	5	cinematographer	\\N	{}	1763	1276
7982	1	director	\\N	{}	1764	689
7983	1	actor	\\N	{Mike}	1765	1605
7984	2	actor	\\N	{"Mike's Hero"}	1765	1383
7985	3	actress	\\N	{"Mike's Mother"}	1765	1606
7986	4	actress	\\N	{"MIke's Sweetheart"}	1765	1521
7987	1	actor	\\N	{"The Superintendent"}	1766	519
7988	2	actor	\\N	{Mike}	1766	1382
7989	3	director	\\N	{}	1766	858
7990	4	writer	story	{}	1766	1312
7991	1	actor	\\N	{"Silas Strong"}	1767	203
7992	2	actress	\\N	{"The Squatter's Daughter"}	1767	918
7993	1	director	\\N	{}	1768	486
7994	1	director	\\N	{}	1769	1339
7995	1	actor	\\N	{"The Minute Man"}	1770	519
7996	2	actress	\\N	{"His Wife"}	1770	1287
7997	3	actor	\\N	{"His Father"}	1770	1383
7998	4	actor	\\N	{"His Son"}	1770	1408
7999	5	director	\\N	{}	1770	1257
8000	6	actress	\\N	{"His Daughter"}	1770	1389
8001	7	actor	\\N	{"A British Officer"}	1770	1258
8002	8	actor	\\N	{}	1770	1296
8003	1	actor	\\N	{Dick}	1771	1278
8004	2	actress	\\N	{Dorothy}	1771	601
8005	3	actor	\\N	{Paul}	1771	576
8006	4	director	\\N	{}	1771	617
8007	5	producer	producer	{}	1771	1247
8008	6	cinematographer	\\N	{}	1771	1276
8009	1	director	\\N	{}	1772	82
8010	2	director	\\N	{}	1772	486
8011	10	actor	\\N	{"Jules - the Thief"}	1773	609
8012	1	actor	\\N	{"The Miser"}	1773	1149
8013	2	actress	\\N	{"Little Kathy"}	1773	1607
8014	3	actor	\\N	{"First Crook"}	1773	572
8015	4	actor	\\N	{"Second Crook"}	1773	958
8016	5	director	\\N	{}	1773	467
8017	6	writer	\\N	{}	1773	1277
8018	7	cinematographer	\\N	{}	1773	49
8019	8	actress	\\N	{"Kathy's Mother"}	1773	414
8020	9	actor	\\N	{"Down-and-Out Young Man"}	1773	466
8021	10	cinematographer	\\N	{}	1774	1209
8022	1	actor	\\N	{"Jean Valjean"}	1774	1374
8023	2	actor	\\N	{Javert}	1774	1608
8024	3	actress	\\N	{"Fantine Thénardier"}	1774	1609
8025	4	actress	\\N	{"Éponine Thénardier"}	1774	1610
8026	5	director	\\N	{}	1774	1153
8027	6	writer	adaptation	{}	1774	980
8028	7	writer	novel	{}	1774	278
8029	8	producer	producer	{}	1774	1611
8030	9	cinematographer	\\N	{}	1774	1612
8031	1	actress	\\N	{"A Modern Cinderella"}	1775	465
8032	2	actor	\\N	{"A Modern Prince Charming"}	1775	1406
8033	3	actress	\\N	{}	1775	642
8034	4	actor	\\N	{}	1775	1295
8035	5	director	\\N	{}	1775	544
8036	6	writer	\\N	{}	1775	858
8037	7	actor	\\N	{}	1775	248
8038	8	actor	\\N	{}	1775	246
8039	1	actress	\\N	{Diana}	1776	465
8040	2	actor	\\N	{"Diana's Sweetheart"}	1776	248
8041	3	actor	\\N	{"An Indian Servant"}	1776	519
8042	4	actress	\\N	{"The Servant's Wife"}	1776	1606
8043	1	director	\\N	{}	1777	486
8044	1	director	\\N	{}	1778	82
8045	2	director	\\N	{}	1778	486
8046	1	director	\\N	{}	1779	85
8047	1	director	\\N	{}	1780	85
8048	1	actor	\\N	{"Hungry Bill - the Tramp"}	1781	1383
8049	2	director	\\N	{}	1781	98
8050	1	actor	\\N	{"Dave Williams"}	1782	203
8051	2	actress	\\N	{"Janey Barker"}	1782	1323
8052	1	actor	\\N	{}	1783	1025
8053	2	actress	\\N	{}	1783	906
8054	3	director	\\N	{}	1783	909
8055	1	director	\\N	{}	1784	486
8056	1	actor	\\N	{"Mustang Pete"}	1785	924
8057	2	actor	\\N	{"Alkali Ike"}	1785	923
8058	3	actress	\\N	{"Mrs. Riley"}	1785	922
8059	4	actor	\\N	{}	1785	921
8060	5	director	\\N	{}	1785	1613
8061	6	writer	\\N	{}	1785	203
8062	7	actor	\\N	{}	1785	676
8063	8	actress	\\N	{"Mrs. Dugan"}	1785	918
8064	1	director	\\N	{}	1786	1614
8065	2	writer	novel	{}	1786	1615
8066	3	cinematographer	\\N	{}	1786	157
8067	1	director	\\N	{}	1787	82
8068	2	director	\\N	{}	1787	486
8069	1	director	\\N	{}	1788	486
8070	1	actor	\\N	{"Mr. Wilson - a New England Farmer"}	1789	856
8071	2	actress	\\N	{"Mrs. Wilson - the Farmer's Wife"}	1789	1287
8072	3	actress	\\N	{"Little Mary - the Farmer's Grandchild"}	1789	1389
8073	4	actor	\\N	{"The Minister"}	1789	1383
8074	1	actor	\\N	{}	1790	925
8075	2	actress	\\N	{"Bar Z's New Cook"}	1790	1253
8076	3	actor	\\N	{"Undetermined Role"}	1790	617
8077	10	actor	\\N	{"The Fieldhand"}	1791	619
8078	1	actor	\\N	{Jose}	1791	572
8079	2	actress	\\N	{Marta}	1791	575
8080	3	actor	\\N	{"The Father"}	1791	644
8081	4	actress	\\N	{"The Painted Woman"}	1791	957
8082	5	director	\\N	{}	1791	467
8083	6	writer	\\N	{}	1791	699
8084	7	cinematographer	\\N	{}	1791	49
8085	8	actor	\\N	{"The Priest at Wedding","At Market"}	1791	685
8086	9	actor	\\N	{"The Doctor"}	1791	882
8087	1	actor	\\N	{"Philip Carlton"}	1792	1307
8088	2	actor	\\N	{"Samuel Gorman"}	1792	1616
8089	3	actress	\\N	{"Nellie Gorman"}	1792	1434
8090	4	actor	\\N	{"New Manager"}	1792	1588
8091	5	director	\\N	{}	1792	1436
8092	1	director	\\N	{}	1793	486
8093	1	actor	\\N	{"The O'Neill - an Irish Patriot"}	1794	1617
8094	2	actress	\\N	{Elinor}	1794	372
8095	3	actor	\\N	{}	1794	606
8096	4	actor	\\N	{}	1794	376
8097	5	writer	play	{}	1794	224
8098	6	cinematographer	\\N	{}	1794	1618
8099	1	actress	\\N	{Iocasta}	1795	1619
8100	2	actor	\\N	{Oedipus}	1795	486
8101	3	writer	play	{}	1795	1620
8102	1	actor	\\N	{"Old Daddy Dodson"}	1796	572
8103	2	actress	\\N	{"Lady Bountiful"}	1796	699
8104	3	actress	\\N	{"One of the Children"}	1796	1249
8105	4	director	\\N	{}	1796	467
8106	5	writer	\\N	{}	1796	1621
8107	6	cinematographer	\\N	{}	1796	49
8108	1	director	\\N	{}	1797	486
8109	1	actor	\\N	{"Jed - a Young Fisherman"}	1798	1486
8110	2	actress	\\N	{"Tess - a Girl of the Village"}	1798	1485
8111	3	actor	\\N	{"Sam - Tess's Demented Brother"}	1798	1622
8112	4	actor	\\N	{"A Fisherman"}	1798	1623
8113	5	director	\\N	{}	1798	98
8114	1	actor	\\N	{"Hal Morley"}	1799	203
8115	2	actor	\\N	{"Ed Sawyer"}	1799	924
8116	3	actor	\\N	{}	1799	676
8117	4	actor	\\N	{}	1799	923
8118	5	actor	\\N	{}	1799	921
8119	6	actor	\\N	{}	1799	1624
8120	1	actress	\\N	{Marie}	1800	1471
8121	10	actress	\\N	{"At Dance"}	1801	629
8122	1	actress	\\N	{"Mrs. Vane"}	1801	695
8123	2	actor	\\N	{"Mr. Vane"}	1801	693
8124	3	actress	\\N	{"The Young Widow"}	1801	535
8125	4	actor	\\N	{"At Dance"}	1801	567
8126	5	director	\\N	{}	1801	467
8127	6	actor	\\N	{"At Dance"}	1801	573
8128	7	actor	\\N	{}	1801	946
8129	8	actor	\\N	{"At Dance"}	1801	958
8130	9	actor	\\N	{"At Dance"}	1801	619
8131	1	actor	\\N	{"Jack Mason"}	1802	203
8132	2	actor	\\N	{"Detective Clarington"}	1802	920
8133	1	actor	\\N	{"Dan Warrington"}	1803	203
8134	2	actor	\\N	{"The Sheriff"}	1803	920
8135	3	actor	\\N	{"The Deputy"}	1803	924
8136	4	actor	\\N	{"A Prisoner"}	1803	677
8137	5	actor	\\N	{"A Prisoner"}	1803	847
8138	6	actor	\\N	{}	1803	676
8139	7	actor	\\N	{}	1803	678
8140	1	actor	\\N	{"Buck Stevens"}	1804	203
8141	2	actress	\\N	{"Mrs. Kelly"}	1804	918
8142	1	actor	\\N	{}	1805	487
8143	2	actress	\\N	{}	1805	556
8144	3	actress	\\N	{}	1805	1292
8145	4	actor	\\N	{}	1805	1625
8146	5	actor	\\N	{}	1805	877
8147	6	actress	\\N	{}	1805	534
8148	10	actress	\\N	{}	1806	1409
8149	1	actor	\\N	{"Wayne Holland"}	1806	1278
8150	2	actress	\\N	{"Ethel Edgar"}	1806	1626
8151	3	actor	\\N	{}	1806	424
8152	4	actress	\\N	{}	1806	1210
8153	5	director	\\N	{}	1806	1500
8154	6	director	\\N	{}	1806	1254
8155	7	writer	scenario	{}	1806	1255
8156	8	writer	poem	{}	1806	607
8157	9	producer	producer	{}	1806	1247
8158	1	actor	\\N	{"Jack Manley"}	1807	203
8159	2	actress	\\N	{"Marie Wentworth"}	1807	918
8160	3	actor	\\N	{"John French"}	1807	919
8161	4	actor	\\N	{"U. S. Marshal",Minister}	1807	924
8162	5	actor	\\N	{"The Doctor"}	1807	920
8163	1	actor	\\N	{}	1808	773
8164	2	actor	\\N	{}	1808	630
8165	10	actor	\\N	{Footman}	1809	911
8166	1	actor	\\N	{"The Parson"}	1809	686
8167	2	actor	\\N	{Pete}	1809	510
8168	3	actress	\\N	{"An Angel","A Maid"}	1809	957
8169	4	actress	\\N	{"An Angel","A Maid"}	1809	1196
8170	5	director	\\N	{}	1809	688
8171	6	cinematographer	\\N	{}	1809	49
8172	7	actor	\\N	{"The Parson's Friend"}	1809	685
8173	8	actress	\\N	{"Pete's Wife"}	1809	515
8174	9	actress	\\N	{"Pete's Daughter"}	1809	470
8175	1	actress	\\N	{Cleopatra}	1810	1331
8176	2	director	\\N	{}	1810	486
8177	1	director	\\N	{}	1811	486
8178	1	actress	\\N	{"Theresa Girhardi"}	1812	1292
8179	2	actor	\\N	{"Comte de Charney, a Prisoner"}	1812	775
8180	1	actress	\\N	{"The Little Lame Boy"}	1813	1471
8181	2	actress	\\N	{}	1813	1627
8182	3	actor	\\N	{}	1813	871
8183	4	actor	\\N	{}	1813	1321
8184	5	director	\\N	{}	1813	1628
8185	6	writer	poem	{}	1813	840
8186	7	actor	\\N	{}	1813	1127
8187	8	actress	\\N	{}	1813	1470
8188	1	director	\\N	{}	1814	1629
8189	2	director	\\N	{}	1814	1630
8190	3	cinematographer	\\N	{}	1814	332
8191	1	actor	\\N	{"Jim Stevenson"}	1815	1203
8192	2	actress	\\N	{"Hazel Kendall"}	1815	1267
8193	3	actor	\\N	{"John Morgan"}	1815	1269
8194	4	actress	\\N	{"Mrs. Kendall"}	1815	1631
8195	5	director	\\N	{}	1815	1270
8196	6	actor	\\N	{}	1815	678
8197	7	actor	\\N	{}	1815	1268
8198	1	actor	\\N	{"Simon Stubbs"}	1816	1084
8199	2	actress	\\N	{"Widow Merritt"}	1816	579
8200	3	actor	\\N	{Binks}	1816	584
8201	4	director	\\N	{}	1816	1136
8202	10	actor	\\N	{Gambler}	1817	685
8203	1	actor	\\N	{"The Father"}	1817	599
8204	2	actress	\\N	{"The Mother"}	1817	699
8205	3	actress	\\N	{"The Daughter"}	1817	629
8206	4	actress	\\N	{"Tenement Woman"}	1817	515
8207	5	director	\\N	{}	1817	688
8208	6	writer	\\N	{}	1817	776
8209	7	producer	producer	{}	1817	98
8210	8	cinematographer	\\N	{}	1817	49
8211	9	cinematographer	\\N	{}	1817	118
8212	1	actor	\\N	{"Jim Reed - an Outlaw"}	1818	203
8213	1	actor	\\N	{Benham}	1819	1053
8214	2	actress	\\N	{Margaret}	1819	1131
8215	3	director	\\N	{}	1819	1055
8216	1	actor	\\N	{"John Braham - falsely arrested"}	1820	519
8217	2	actress	\\N	{"Mrs. Helen Johnson"}	1820	1287
8218	3	actress	\\N	{"One of Mrs. Johnson's Daughters"}	1820	621
8219	4	actress	\\N	{"One of Mrs. Johnson's Daughters"}	1820	1389
8220	5	actor	\\N	{"The Minister"}	1820	1383
8221	1	director	\\N	{}	1821	486
8222	10	actress	\\N	{"The Millionaire's Jilted Girlfriend"}	1822	957
8223	1	actor	\\N	{"The Fisherman"}	1822	572
8224	2	actress	\\N	{"The Woman"}	1822	523
8225	3	actress	\\N	{"The Woman's Mother"}	1822	699
8226	4	actor	\\N	{"The Creditor"}	1822	599
8227	5	director	\\N	{}	1822	467
8228	6	writer	\\N	{}	1822	1078
8229	7	cinematographer	\\N	{}	1822	49
8230	8	actor	\\N	{"The Millionaire"}	1822	946
8231	9	actor	\\N	{"The Millionaire's Friend","At Club"}	1822	573
8232	1	actress	\\N	{Priscilla}	1823	508
8233	2	actor	\\N	{Paul}	1823	466
8234	3	actor	\\N	{"The Doctor"}	1823	510
8235	4	actor	\\N	{}	1823	516
8236	5	director	\\N	{}	1823	688
8237	6	writer	\\N	{}	1823	476
8238	7	cinematographer	\\N	{}	1823	118
8239	8	actress	\\N	{}	1823	575
8240	1	actress	\\N	{}	1824	737
8241	2	actor	\\N	{}	1824	739
8242	3	actor	\\N	{}	1824	1632
8243	4	cinematographer	\\N	{}	1824	636
8244	1	actor	\\N	{"The Professor"}	1825	1383
8245	2	actress	\\N	{"The Professor's Daughter"}	1825	465
8246	3	actor	\\N	{"The Professor's Daughter's Sweetheart"}	1825	1408
8247	4	director	\\N	{}	1825	858
8248	10	actor	\\N	{"General Favar"}	1826	1532
8249	1	actor	\\N	{"Captain Dubois - the Profligate"}	1826	425
8250	2	actress	\\N	{"Pauline Revere - the Wronged Wife"}	1826	1242
8251	3	actor	\\N	{"M. Lamotte - the Fencing Master"}	1826	1633
8252	4	actress	\\N	{"Mercedes - Pauline's Sister"}	1826	426
8253	5	director	\\N	{}	1826	429
8254	6	writer	\\N	{}	1826	1531
8255	7	producer	producer	{}	1826	200
8256	8	actor	\\N	{"M. George Revere"}	1826	1634
8257	9	actor	\\N	{"Napoleon Bonaparte"}	1826	1635
8258	1	director	\\N	{}	1827	211
8259	2	writer	story "Thumbelin"	{}	1827	99
8260	10	actor	\\N	{}	1828	919
8261	1	actor	\\N	{"Harvey Barton"}	1828	203
8262	2	actress	\\N	{"The City Girl"}	1828	918
8263	3	actress	\\N	{"Kate Bowers"}	1828	1509
8264	4	actor	\\N	{}	1828	675
8265	5	actor	\\N	{}	1828	923
8266	6	actor	\\N	{}	1828	924
8267	7	actor	\\N	{}	1828	960
8268	8	actress	\\N	{}	1828	922
8269	9	actor	\\N	{}	1828	921
8270	1	actor	\\N	{Jimmy}	1829	891
8271	2	actor	\\N	{"Jimmy's Father"}	1829	1250
8272	3	actress	\\N	{"Jimmy's Mother"}	1829	545
8273	4	actress	\\N	{"A Servant"}	1829	1251
8274	5	actor	\\N	{"The Iceman"}	1829	1279
8275	6	actress	\\N	{"Undetermined Role"}	1829	1287
8276	1	actor	\\N	{"Capt. Andrews"}	1830	376
8277	2	actor	\\N	{Engineer}	1830	606
8278	3	actor	\\N	{Anderson,"Confederate officer"}	1830	1617
8279	4	actor	\\N	{"Federal Officer"}	1830	1636
8280	5	cinematographer	\\N	{}	1830	1618
8281	1	actor	\\N	{"Allen Harley - the Ranchman's Son"}	1831	675
8282	2	actor	\\N	{}	1831	203
8283	3	actor	\\N	{}	1831	920
8284	1	actor	\\N	{"The drummer"}	1832	1203
8285	2	actress	\\N	{"The hotel-keeper's daughter"}	1832	1267
8286	3	actor	\\N	{"The sheriff"}	1832	1269
8287	4	director	\\N	{}	1832	1270
8288	1	director	\\N	{}	1833	486
8289	10	actor	\\N	{}	1834	1637
8290	1	actor	\\N	{}	1834	1638
8291	2	actress	\\N	{}	1834	1639
8292	3	actress	\\N	{}	1834	1640
8293	4	actor	\\N	{}	1834	395
8294	5	director	\\N	{}	1834	277
8295	6	cinematographer	\\N	{}	1834	1641
8296	7	actor	\\N	{}	1834	808
8297	8	actor	\\N	{}	1834	1642
8298	9	actor	\\N	{}	1834	1643
8299	1	actor	\\N	{"Curtis Greer - The Street Railway Magnate"}	1835	856
8300	2	actress	\\N	{"Gertrude Greer - Curtis' Daughter"}	1835	1287
8301	3	actor	\\N	{"John McNamara"}	1835	519
8302	4	actor	\\N	{"John Bryce - Gertrude's Fiance"}	1835	248
8303	5	actor	\\N	{"Editor of the Morning Echo"}	1835	1312
8304	6	actress	\\N	{"Edith Sinclair - a Reporter"}	1835	465
8305	1	actor	\\N	{"The Reporter"}	1836	1644
8306	2	actor	\\N	{"Rosenbaum, Editor"}	1836	1645
8307	3	actor	\\N	{"Cohn, Jones' Assistant"}	1836	1159
8308	4	actor	\\N	{"Mr. Snow"}	1836	1646
8309	5	producer	producer	{}	1836	200
8310	6	actress	\\N	{"Mrs. Snow"}	1836	1647
8311	1	actor	\\N	{"The Revenue Man"}	1837	693
8312	2	actress	\\N	{"The Moonshiner's Daughter"}	1837	575
8313	3	actress	\\N	{}	1837	1292
8314	4	actress	\\N	{}	1837	629
8315	5	director	\\N	{}	1837	467
8316	6	cinematographer	\\N	{}	1837	49
8317	10	actor	\\N	{"Duke of Norfolk"}	1838	1648
8318	1	actor	\\N	{"King Henry VI"}	1838	1649
8319	2	actor	\\N	{"King Edward IV"}	1838	1650
8320	3	actress	\\N	{"Edward, Prince of Wales"}	1838	1651
8321	4	actor	\\N	{"George, Duke of Clarence"}	1838	1548
8322	5	director	\\N	{}	1838	588
8323	6	writer	play	{}	1838	126
8324	7	composer	\\N	{}	1838	127
8325	8	actor	\\N	{"Henry, Earl of Richmond"}	1838	1652
8326	9	actor	\\N	{"Duke of Buckingham"}	1838	1653
8327	1	actor	\\N	{}	1839	980
8328	2	actor	\\N	{}	1839	1654
8329	3	actress	\\N	{}	1839	1021
8330	4	actor	\\N	{}	1839	1207
8331	5	director	\\N	{}	1839	1153
8332	6	writer	\\N	{}	1839	745
8333	7	actor	\\N	{}	1839	1069
8334	8	actor	\\N	{}	1839	1374
8335	1	actor	\\N	{"Weary Willie"}	1840	1383
8336	2	actor	\\N	{"Reverend Dr. Helpall"}	1840	243
8337	3	actor	\\N	{"Newspaper Reporter"}	1840	1514
8338	4	actor	\\N	{"A Lucky Tramp"}	1840	1279
8339	5	director	\\N	{}	1840	892
8340	1	actor	\\N	{"Sherwin Wells"}	1841	203
8341	2	actor	\\N	{"Walton - The Rancher"}	1841	920
8342	3	actress	\\N	{"Alice Walton - The Rancher's Daughter"}	1841	918
8343	1	actor	\\N	{"Tom Wilson, a Texas Ranger"}	1842	939
8344	2	actor	\\N	{"Smith, an Old Settler"}	1842	1655
8345	3	actor	\\N	{"Pedro, a Mexican Bootlegger"}	1842	1656
8346	4	actress	\\N	{"Nellie Smith, Tom's Sweetheart"}	1842	1176
8347	5	director	\\N	{}	1842	1363
8348	6	director	\\N	{}	1842	1657
8349	7	producer	producer	{}	1842	200
8350	8	actress	\\N	{}	1842	426
8351	10	actor	\\N	{"Capt. Luff - Smuggler"}	1843	1658
8352	1	actress	\\N	{"Margaret Catchpole"}	1843	1342
8353	2	actor	\\N	{"Will Laud"}	1843	1341
8354	3	actor	\\N	{"Lt. Barry"}	1843	1344
8355	4	actress	\\N	{"Little Kitty"}	1843	1659
8356	5	producer	producer	{}	1843	1346
8357	6	cinematographer	\\N	{}	1843	1430
8358	7	actor	\\N	{"Lord Chief Justice"}	1843	1660
8359	8	actor	\\N	{"Justice Heath"}	1843	1661
8360	9	actor	\\N	{"Chaloner Archdeckne"}	1843	1662
8361	1	actress	\\N	{"The Elder Sister"}	1844	523
8362	2	actress	\\N	{"The Younger Sister"}	1844	470
8363	3	actor	\\N	{Eugene}	1844	946
8364	4	actor	\\N	{"Carlos - the Slain Brother"}	1844	1663
8365	5	director	\\N	{}	1844	467
8366	6	writer	\\N	{}	1844	472
8367	7	cinematographer	\\N	{}	1844	49
8368	8	actor	\\N	{"Carlos' Father"}	1844	685
8369	1	actor	\\N	{"Young Payne"}	1845	1307
8370	2	actress	\\N	{"Ruth Martin"}	1845	1434
8371	3	director	\\N	{}	1845	1436
8372	10	actress	\\N	{}	1846	1196
8373	1	actor	\\N	{"The Planter"}	1846	572
8374	2	actress	\\N	{"The Orphan"}	1846	629
8375	3	actor	\\N	{"The Planter's Yonger Partner"}	1846	863
8376	4	actress	\\N	{"The Housekeeper"}	1846	515
8377	5	director	\\N	{}	1846	467
8378	6	cinematographer	\\N	{}	1846	49
8379	7	actress	\\N	{"The Mother"}	1846	1350
8380	8	actor	\\N	{"The Servant"}	1846	685
8381	9	actor	\\N	{}	1846	693
8382	1	actor	\\N	{"Gerald Kinney"}	1847	1278
8383	2	actress	\\N	{"Myrtle Edgar"}	1847	1626
8384	3	actor	\\N	{"Undetermined Role"}	1847	424
8385	4	actress	\\N	{"Undetermined Role"}	1847	1409
8386	5	director	\\N	{}	1847	1500
8387	6	director	\\N	{}	1847	1254
8388	7	producer	producer	{}	1847	1247
8389	10	actress	\\N	{"One of the Children"}	1848	470
8390	1	actress	\\N	{"Little Billy"}	1848	1249
8391	2	actor	\\N	{"Billy's Father"}	1848	572
8392	3	actress	\\N	{"Billy's Mother"}	1848	523
8393	4	actress	\\N	{"Billy's Sister"}	1848	1664
8394	5	director	\\N	{}	1848	467
8395	6	cinematographer	\\N	{}	1848	49
8396	7	actor	\\N	{}	1848	693
8397	8	actress	\\N	{"One of the Servants"}	1848	515
8398	9	actor	\\N	{"At Dock"}	1848	573
8399	1	director	\\N	{}	1849	909
8400	1	actor	\\N	{Samson}	1850	486
8401	1	actress	\\N	{}	1851	1292
8402	1	actor	\\N	{"The Young Clerk"}	1852	946
8403	2	actress	\\N	{"The Stenographer"}	1852	1292
8404	3	actor	\\N	{"The Proprietor"}	1852	958
8405	4	actor	\\N	{"A Guest"}	1852	685
8406	5	director	\\N	{}	1852	467
8407	6	writer	\\N	{}	1852	1277
8408	7	cinematographer	\\N	{}	1852	49
8409	10	actor	\\N	{"Undetermined Role"}	1853	424
8410	1	actor	\\N	{"Reverend Dimmesdale"}	1853	1278
8411	2	actress	\\N	{"Hester Prynne"}	1853	1626
8412	3	actor	\\N	{Roger}	1853	1390
8413	4	actress	\\N	{"Undetermined Role"}	1853	580
8414	5	director	\\N	{}	1853	1500
8415	6	director	\\N	{}	1853	1254
8416	7	writer	\\N	{}	1853	1255
8417	8	writer	novel	{}	1853	1079
8418	9	producer	producer	{}	1853	1247
8419	1	actor	\\N	{"The Schoolmaster of Mariposa"}	1854	425
8420	2	actress	\\N	{"Miss Williams"}	1854	426
8421	3	director	\\N	{}	1854	429
8422	4	writer	story	{}	1854	1531
8423	5	producer	producer	{}	1854	200
8424	1	actress	\\N	{"Mrs. Crawford"}	1855	601
8425	2	actor	\\N	{"Dr. Crawford"}	1855	1278
8426	3	actress	\\N	{"Lassie - a Dog"}	1855	1665
8427	4	actor	\\N	{"The Puppy"}	1855	1666
8428	5	writer	story "A Dog's Tale"	{}	1855	388
8429	6	producer	producer	{}	1855	1247
8430	1	actor	\\N	{"Tom Moorland"}	1856	1278
8431	2	actress	\\N	{"Gertrude Edgar"}	1856	601
8432	3	actor	\\N	{"Owen Jackson"}	1856	576
8433	4	actor	\\N	{"Undetermined Role"}	1856	1254
8434	5	director	\\N	{}	1856	617
8435	6	director	\\N	{}	1856	1500
8436	7	producer	producer	{}	1856	1247
8437	1	actress	\\N	{}	1857	601
8438	2	director	\\N	{}	1857	617
8439	3	producer	producer	{}	1857	1247
8440	10	actor	\\N	{}	1858	1359
8441	1	actress	\\N	{She}	1858	1470
8442	2	actor	\\N	{"Leo Vincey",Kallikrates}	1858	1321
8443	3	actress	\\N	{"Amenartes, the Pharaoh's daughter"}	1858	1667
8444	4	actor	\\N	{"Horace Holly"}	1858	1668
8445	5	director	\\N	{}	1858	516
8446	6	writer	novel	{}	1858	117
8447	7	writer	scenario	{}	1858	1628
8448	8	actress	\\N	{}	1858	1669
8449	9	actor	\\N	{}	1858	1357
8450	1	actor	\\N	{"The Sheriff's Brother"}	1859	203
8451	2	actor	\\N	{"The Sheriff"}	1859	920
8452	1	actor	\\N	{"Sheriff Will Phelps"}	1860	203
8453	2	actress	\\N	{"Jessie Phelps"}	1860	918
8454	3	actor	\\N	{"George Arden, the Sheriff's Chum"}	1860	919
8455	4	actor	\\N	{Prisoner}	1860	676
8456	5	actor	\\N	{}	1860	924
8457	6	actor	\\N	{}	1860	921
8458	7	actor	\\N	{}	1860	678
8459	8	actor	\\N	{}	1860	675
8460	1	actor	\\N	{"Steve Jameson"}	1861	203
8461	2	actress	\\N	{"Nita Sanchez"}	1861	918
8462	3	actor	\\N	{"Manuel Garcia, the Gambler"}	1861	1327
8463	1	director	\\N	{}	1862	595
8464	1	actress	\\N	{"The Girl with the Silent Tongue"}	1863	465
8465	2	actor	\\N	{"The Girl's Father"}	1863	1670
8466	3	actor	\\N	{"Bob - the Girl's Father's Nephew"}	1863	1671
8467	4	director	\\N	{}	1863	858
8468	1	director	\\N	{}	1864	486
8469	1	director	\\N	{}	1865	82
8470	2	director	\\N	{}	1865	486
8471	1	actor	\\N	{"Sir Percy Granville"}	1866	925
8472	2	actress	\\N	{Mary}	1866	512
8473	3	actor	\\N	{"Billy James"}	1866	1099
8474	4	director	\\N	{}	1866	977
8475	5	producer	producer	{}	1866	71
8476	6	cinematographer	\\N	{}	1866	926
8477	10	actor	\\N	{}	1867	1374
8478	1	actor	\\N	{}	1867	1608
8479	2	actor	\\N	{}	1867	1672
8480	3	actor	\\N	{}	1867	1673
8481	4	actor	\\N	{}	1867	1674
8482	5	director	\\N	{}	1867	909
8483	6	actor	\\N	{}	1867	1675
8484	7	actor	\\N	{}	1867	980
8485	8	actor	\\N	{}	1867	1676
8486	9	actor	\\N	{}	1867	1677
8487	1	actress	\\N	{}	1868	601
8488	2	director	\\N	{}	1868	617
8489	3	producer	producer	{}	1868	1247
8490	1	actor	\\N	{"Charles Rawden, the Sky Pilot"}	1869	373
8491	2	actress	\\N	{"Bertha, A Widow, later Rawden's Bride"}	1869	1678
8492	3	actor	\\N	{"Bertha's First Husband"}	1869	1679
8493	4	actor	\\N	{}	1869	1352
8494	5	actress	\\N	{}	1869	965
8495	6	actress	\\N	{}	1869	942
8496	1	actress	\\N	{"Jeanne his Wife"}	1870	1009
8497	2	actor	\\N	{"Ravaud, blind organist"}	1870	1680
8498	3	actor	\\N	{"Ali Baba"}	1870	1681
8499	4	actress	\\N	{"Ravauds Daughter"}	1870	1682
8500	5	director	\\N	{}	1870	1683
8501	6	writer	\\N	{}	1870	1065
8502	7	actor	\\N	{}	1870	1684
8503	8	actor	\\N	{}	1870	851
8504	1	actress	\\N	{"The Peasant Woman"}	1871	695
8505	2	actor	\\N	{}	1871	693
8506	3	actor	\\N	{}	1871	644
8507	4	actor	\\N	{"The Child"}	1871	1685
8508	5	director	\\N	{}	1871	467
8509	6	writer	\\N	{}	1871	1077
8510	7	cinematographer	\\N	{}	1871	49
8511	1	actor	\\N	{"The Husband"}	1872	572
8512	2	actress	\\N	{"The Wife"}	1872	523
8513	3	actor	\\N	{"The Child"}	1872	1685
8514	4	actress	\\N	{}	1872	1196
8515	5	director	\\N	{}	1872	467
8516	6	cinematographer	\\N	{}	1872	49
8517	7	actor	\\N	{}	1872	619
8518	10	actress	\\N	{}	1873	1686
8519	1	actress	\\N	{Stella}	1873	883
8520	2	actor	\\N	{"Grev Johan Waldberg"}	1873	998
8521	3	actor	\\N	{"Hofjuveler A. Hirsch"}	1873	897
8522	4	actor	\\N	{}	1873	1525
8523	5	director	\\N	{}	1873	887
8524	6	writer	screenplay	{}	1873	1687
8525	7	cinematographer	\\N	{}	1873	1688
8526	8	cinematographer	\\N	{}	1873	1453
8527	9	actor	\\N	{}	1873	1524
8528	10	actor	\\N	{}	1874	466
8529	1	actor	\\N	{Jose}	1874	572
8530	2	actress	\\N	{Pepita}	1874	957
8531	3	actress	\\N	{"Pepita's Mother"}	1874	515
8532	4	actor	\\N	{"The Doctor"}	1874	685
8533	5	director	\\N	{}	1874	467
8534	6	cinematographer	\\N	{}	1874	49
8535	7	actress	\\N	{Mariana}	1874	535
8536	8	actress	\\N	{Paula}	1874	523
8537	9	actor	\\N	{Spaniard}	1874	686
8538	1	actor	\\N	{"Spike Shannon"}	1875	203
8539	2	actress	\\N	{"Nora Flannigan"}	1875	918
8540	3	actor	\\N	{"The Fight Promoter"}	1875	920
8541	4	actor	\\N	{"The Opponent"}	1875	675
8542	5	actor	\\N	{"A Fighter"}	1875	1689
8543	6	actor	\\N	{"The Referee"}	1875	1690
8544	7	actress	\\N	{}	1875	922
8545	10	cinematographer	\\N	{}	1877	1691
8546	1	actress	\\N	{"Wild Flower"}	1877	1292
8547	2	actor	\\N	{"Gray Fox"}	1877	619
8548	3	actor	\\N	{"White Eagle"}	1877	940
8549	4	actress	\\N	{"Silver Fawn"}	1877	523
8550	5	director	\\N	{}	1877	467
8551	6	writer	\\N	{}	1877	472
8552	7	cinematographer	\\N	{}	1877	49
8553	8	cinematographer	\\N	{}	1877	392
8554	9	cinematographer	\\N	{}	1877	873
8555	1	actor	\\N	{"Tom Percival"}	1878	203
8556	2	actress	\\N	{"Alice Lacey"}	1878	1323
8557	3	actor	\\N	{"William Lacey - Alice's Father"}	1878	920
8558	4	actress	\\N	{Nell}	1878	918
8559	5	actor	\\N	{}	1878	923
8560	6	actor	\\N	{}	1878	676
8561	7	actor	\\N	{}	1878	1322
8562	1	actress	\\N	{}	1879	465
8563	2	director	\\N	{}	1879	858
8564	1	actress	\\N	{"Nello - The Bandit's Daughter"}	1880	601
8565	2	actor	\\N	{"The Rancher's Son"}	1880	576
8566	3	director	\\N	{}	1880	617
8567	4	producer	producer	{}	1880	1247
8568	10	actor	\\N	{}	1881	1312
8569	1	actor	\\N	{"Francis Scott Key"}	1881	1258
8570	2	actor	\\N	{"President James Monroe"}	1881	1295
8571	3	actress	\\N	{}	1881	465
8572	4	actress	\\N	{}	1881	621
8573	5	director	\\N	{}	1881	544
8574	6	actor	\\N	{}	1881	604
8575	7	actress	\\N	{}	1881	1521
8576	8	actor	\\N	{}	1881	519
8577	9	actress	\\N	{}	1881	545
8578	1	actor	\\N	{"The Owner of the Dog"}	1882	1380
8579	2	actor	\\N	{"An Innocent Purchaser"}	1882	1313
8580	3	actor	\\N	{"The Tramp"}	1882	1383
8581	1	actor	\\N	{"The Young Indian Brave"}	1883	769
8582	2	actress	\\N	{"White Arrow"}	1883	1287
8583	3	actress	\\N	{"A Tourist"}	1883	465
8584	4	actor	\\N	{"A Tourist"}	1883	1406
8585	5	director	\\N	{}	1883	1355
8586	6	actor	\\N	{"A Tourist"}	1883	1379
8587	7	actress	\\N	{"A Tourist"}	1883	754
8588	8	actor	\\N	{"A Tourist"}	1883	891
8589	1	actor	\\N	{"Jim Logan"}	1884	203
8590	2	actress	\\N	{"Mrs. Logan"}	1884	918
8591	3	actor	\\N	{"J.C. Phillips"}	1884	920
8592	4	actor	\\N	{}	1884	921
8593	5	actor	\\N	{}	1884	923
8594	6	actor	\\N	{}	1884	676
8595	1	actor	\\N	{"The Young Author"}	1885	693
8596	2	actress	\\N	{Alice}	1885	695
8597	3	actress	\\N	{Jennie}	1885	629
8598	4	actor	\\N	{}	1885	845
8599	5	director	\\N	{}	1885	467
8600	6	cinematographer	\\N	{}	1885	49
8601	1	actor	\\N	{"A Country Farmer"}	1886	1383
8602	2	actress	\\N	{"Nellie Brown - the Farmer's Daughter"}	1886	465
8603	3	actor	\\N	{"The Daughter's Sweetheart"}	1886	1514
8604	4	actor	\\N	{"The Rich Man"}	1886	1296
8605	5	director	\\N	{}	1886	544
8606	6	actress	\\N	{"The Rich Man's Daughter"}	1886	545
8607	1	actor	\\N	{"Mr. Nag"}	1887	1084
8608	2	actress	\\N	{"Mrs. Nag"}	1887	579
8609	3	actress	\\N	{"Miss Prue, the Stenographer"}	1887	1292
8610	4	actress	\\N	{}	1887	1519
8611	5	director	\\N	{}	1887	1136
8612	6	writer	\\N	{}	1887	565
8613	7	actor	\\N	{}	1887	1305
8614	1	actress	\\N	{"The Maid"}	1888	506
8615	2	actor	\\N	{"The Stable Boy"}	1888	466
8616	3	actress	\\N	{"The Maid's Employer"}	1888	699
8617	4	director	\\N	{}	1888	467
8618	5	writer	\\N	{}	1888	1315
8619	6	cinematographer	\\N	{}	1888	49
8620	1	actor	\\N	{"Norman Marsden - the Surgeon"}	1889	519
8621	2	actor	\\N	{"Frank W. Evans"}	1889	1295
8622	3	actress	\\N	{"Cecilia West"}	1889	465
8623	1	director	\\N	{}	1890	486
8624	10	actor	\\N	{"Secondary Role"}	1891	1246
8625	1	actress	\\N	{"Polly Biblett"}	1891	601
8626	2	actor	\\N	{"Edward Jackson"}	1891	1278
8627	3	actor	\\N	{"Ashton Orcutt - Duelist"}	1891	576
8628	4	actor	\\N	{"Second Duelist"}	1891	1245
8629	5	director	\\N	{}	1891	617
8630	6	producer	producer	{}	1891	1247
8631	7	actor	\\N	{"Young Earl Jackson"}	1891	845
8632	8	actress	\\N	{"Young Lettie Terrell"}	1891	848
8633	9	actor	\\N	{"Undetermined Role"}	1891	770
8634	1	actress	\\N	{"Nell Gwynne"}	1892	1692
8635	2	actor	\\N	{"King Charles II"}	1892	1344
8636	3	actor	\\N	{"Lord Jeffries"}	1892	1693
8637	4	actor	\\N	{"Lord Rochester"}	1892	1694
8638	5	director	\\N	{}	1892	1341
8639	6	writer	play	{}	1892	1695
8640	7	writer	play	{}	1892	1696
8641	8	producer	producer	{}	1892	1697
8642	9	cinematographer	\\N	{}	1892	1343
8643	1	actor	\\N	{"Bill - the Switchman"}	1893	520
8644	2	actress	\\N	{"Bill's Wife"}	1893	465
8645	3	actress	\\N	{"Bill's Little Daughter"}	1893	1389
8646	4	actor	\\N	{"The Engineer"}	1893	1296
8647	10	actor	\\N	{"Jennie's Father"}	1894	882
8648	1	actor	\\N	{"Hugh Frazier"}	1894	572
8649	2	actress	\\N	{"Irene Lambert"}	1894	523
8650	3	actress	\\N	{"Jennie Baker"}	1894	575
8651	4	actor	\\N	{"Old Ben"}	1894	685
8652	5	director	\\N	{}	1894	467
8653	6	writer	\\N	{}	1894	1078
8654	7	cinematographer	\\N	{}	1894	49
8655	8	actor	\\N	{"The Union Suitor"}	1894	863
8656	9	actor	\\N	{"Hugh's Father"}	1894	686
8657	1	actress	\\N	{"Hanna Meyer"}	1895	883
8658	2	actor	\\N	{"Junger Maler Marten"}	1895	1698
8659	3	actor	\\N	{"Vater Meyer"}	1895	1525
8660	4	actor	\\N	{"Maler Prof. Harlow"}	1895	1699
8661	5	director	\\N	{}	1895	887
8662	6	writer	novel	{}	1895	1700
8663	7	cinematographer	\\N	{}	1895	1453
8664	8	actor	\\N	{"Hans Braun"}	1895	1701
8665	9	actress	\\N	{"Tochter Fanny Harlow"}	1895	1702
8666	10	actress	\\N	{"Madame Defarge"}	1896	1498
8667	1	actor	\\N	{"Sydney Carton"}	1896	487
8668	2	actress	\\N	{"Lucie Manette"}	1896	556
8669	3	actor	\\N	{"Dr. Manette"}	1896	489
8670	4	actor	\\N	{Darnay}	1896	1306
8671	5	director	\\N	{}	1896	775
8672	6	writer	novel "A Tale of Two Cities"	{}	1896	168
8673	7	writer	scenario	{}	1896	776
8674	8	actor	\\N	{"Jarvis Lorry"}	1896	584
8675	9	actor	\\N	{Defarge}	1896	1352
8676	1	director	\\N	{}	1897	85
8677	10	actor	\\N	{"Outside Theatre"}	1898	685
8678	1	actor	\\N	{Harry}	1898	946
8679	2	actor	\\N	{"Harry's Father"}	1898	599
8680	3	actress	\\N	{Dolly}	1898	957
8681	4	actor	\\N	{"A Friend of Harry's"}	1898	581
8682	5	director	\\N	{}	1898	467
8683	6	writer	\\N	{}	1898	1078
8684	7	cinematographer	\\N	{}	1898	49
8685	8	actor	\\N	{"A Friend of Father's"}	1898	686
8686	9	actress	\\N	{"Outside Theatre"}	1898	515
8687	1	actor	\\N	{Telemachus}	1899	486
8688	1	actor	\\N	{"Tom Mason - a Rustler"}	1900	939
8689	2	actor	\\N	{"Tip - Tom's Side Partner"}	1900	1703
8690	3	actor	\\N	{"Will Wright - the Sheriff"}	1900	1655
8691	4	actress	\\N	{"Mabel Madden"}	1900	1176
8692	5	producer	producer	{}	1900	200
8693	6	actor	\\N	{Bartender}	1900	1704
8694	7	actor	\\N	{"The Line Rider"}	1900	1464
8695	8	actor	\\N	{"Tom's Horse"}	1900	1705
8696	1	director	\\N	{}	1901	718
8697	10	actor	\\N	{"A Policeman"}	1902	524
8857	1	actor	\\N	{}	1930	203
8698	1	actor	\\N	{"The District Attorney"}	1902	572
8699	2	actress	\\N	{"The District Attorney's Son"}	1902	1249
8700	3	actor	\\N	{Dick}	1902	958
8701	4	actress	\\N	{"The Housekeeper"}	1902	515
8702	5	director	\\N	{}	1902	467
8703	6	writer	\\N	{}	1902	1621
8704	7	cinematographer	\\N	{}	1902	49
8705	8	actor	\\N	{"The Rescuer"}	1902	1201
8706	9	actor	\\N	{"One of the District Attorney's Friends"}	1902	637
8707	1	actress	\\N	{"Winsome Winnie"}	1903	1521
8708	2	actor	\\N	{"Winnie's Sweetheart"}	1903	1406
8709	3	actor	\\N	{"The Busiest Man in the Hall"}	1903	1279
8710	4	actor	\\N	{"The Successful Bidder at the Auction"}	1903	519
8711	5	writer	\\N	{}	1903	1706
8712	10	actress	\\N	{Maid}	1904	1707
8713	1	actress	\\N	{"Mae Darcy"}	1904	601
8714	2	actor	\\N	{"Tom Owen"}	1904	576
8715	3	actor	\\N	{"In crowd at train station"}	1904	617
8716	4	actor	\\N	{Poet}	1904	1246
8717	5	director	\\N	{}	1904	1254
8718	6	producer	producer	{}	1904	1247
8719	7	cinematographer	\\N	{}	1904	1276
8720	8	actor	\\N	{"At party"}	1904	1518
8721	9	actor	\\N	{"In crowd at train station"}	1904	368
8722	1	actor	\\N	{"The Thief"}	1905	572
8723	2	actress	\\N	{"The Girl"}	1905	1196
8724	3	actor	\\N	{"The Child"}	1905	1685
8725	4	actor	\\N	{}	1905	882
8726	5	director	\\N	{}	1905	467
8727	6	cinematographer	\\N	{}	1905	49
8728	1	actor	\\N	{"Arthur White"}	1906	1203
8729	2	actress	\\N	{Estella}	1906	1267
8730	3	actor	\\N	{"Joseph Close"}	1906	1268
8731	4	actress	\\N	{}	1906	1631
8732	5	director	\\N	{}	1906	1270
8733	10	actress	\\N	{"Constance, the Queen's Attendent"}	1907	465
8734	1	actor	\\N	{"D'Artagnan, a young Gascon"}	1907	1295
8735	2	actor	\\N	{Athos}	1907	1708
8736	3	actor	\\N	{Porthos}	1907	1314
8737	4	actor	\\N	{Aramis}	1907	248
8738	5	director	\\N	{}	1907	544
8739	6	writer	novel "Les trois mousquetaires"	{}	1907	100
8740	7	actor	\\N	{"Cardinal Richelieu"}	1907	769
8741	8	actor	\\N	{"King Louis XIII"}	1907	1250
8742	9	actress	\\N	{"The Queen"}	1907	1287
8743	10	actress	\\N	{}	1908	612
8744	1	actress	\\N	{Mary}	1908	601
8745	2	actress	\\N	{Florence}	1908	629
8746	3	actress	\\N	{"Adele - the Eldest Sister"}	1908	957
8747	4	actress	\\N	{"The Mother"}	1908	515
8748	5	director	\\N	{}	1908	467
8749	6	cinematographer	\\N	{}	1908	49
8750	7	actor	\\N	{"Mary's Admirer"}	1908	863
8751	8	actor	\\N	{"Florence's Admirer"}	1908	1494
8752	9	actor	\\N	{"The Curate"}	1908	572
8753	10	actor	\\N	{"Second Doctor"}	1909	685
8754	1	actress	\\N	{Grace}	1909	695
8755	2	actress	\\N	{"Grace's Mother"}	1909	699
8756	3	actor	\\N	{"Dave - Grace's Sweetheart"}	1909	863
8757	4	actor	\\N	{"Howard - the Village Beau"}	1909	946
8758	5	director	\\N	{}	1909	467
8759	6	writer	\\N	{}	1909	472
8760	7	cinematographer	\\N	{}	1909	49
8761	8	actor	\\N	{"First Doctor"}	1909	599
8762	9	actress	\\N	{Nurse}	1909	1350
8763	1	actor	\\N	{"A Friend"}	1910	1089
8764	2	actress	\\N	{Wifey}	1910	1292
8765	3	actor	\\N	{}	1910	466
8766	4	actor	\\N	{}	1910	510
8767	5	writer	\\N	{}	1910	1277
8768	6	cinematographer	\\N	{}	1910	873
8769	10	actress	\\N	{"Undetermined Role"}	1911	556
8770	1	actor	\\N	{"Abe Case - the Husband"}	1911	373
8771	2	actress	\\N	{"Helen Mowbry Case - the Wife"}	1911	1462
8772	3	actor	\\N	{"Jack Plympton - Helen's Sweetheart"}	1911	513
8773	4	actor	\\N	{"Martini - Case's Partner"}	1911	1709
8774	5	director	\\N	{}	1911	565
8775	6	writer	\\N	{}	1911	1469
8776	7	actor	\\N	{"Undetermined Role"}	1911	487
8777	8	actor	\\N	{"Undetermined Role"}	1911	1710
8778	9	actress	\\N	{"Undetermined Role"}	1911	942
8779	1	actor	\\N	{"Bob Griswald"}	1912	203
8780	2	actor	\\N	{"The Mexican"}	1912	919
8781	3	actress	\\N	{"Nell Ollcott"}	1912	918
8782	1	actress	\\N	{"The Tomboy"}	1913	1470
8783	2	actor	\\N	{"The Guardian"}	1913	1357
8784	3	actress	\\N	{"The Tomboy's Little Sister"}	1913	1471
8785	1	actress	\\N	{}	1914	1711
8786	2	director	\\N	{}	1914	486
8787	3	writer	play "La Tosca"	{}	1914	796
8788	1	actress	\\N	{"Alice Barton - the Farmer's Daughter"}	1915	601
8789	2	actor	\\N	{"Dan Gardner"}	1915	1712
8790	3	actress	\\N	{}	1915	1253
8791	4	actress	\\N	{}	1915	848
8792	5	director	\\N	{}	1915	617
8793	6	producer	producer	{}	1915	1247
8794	10	actress	\\N	{"Zeetah - as an Adult"}	1916	1467
8795	1	actor	\\N	{Sachem}	1916	261
8796	2	actress	\\N	{"Sachem's Squaw"}	1916	1559
8797	3	actress	\\N	{"Lotokah - Sachem's Son as a Child (prologue)"}	1916	1463
8798	4	actress	\\N	{"Zeetah - as a Child"}	1916	1556
8799	5	director	\\N	{}	1916	561
8800	6	writer	\\N	{}	1916	425
8801	7	producer	producer	{}	1916	200
8802	8	actress	\\N	{"A Maiden (prologue)"}	1916	1713
8803	9	actor	\\N	{"An Ojibway Warrior (prologue)"}	1916	760
8804	1	actress	\\N	{"The Widowed Mother"}	1917	465
8805	2	actor	\\N	{"Little Daniel - the Son"}	1917	891
8806	3	actor	\\N	{"Mr. Lawrence - the Suitor"}	1917	769
8807	1	actor	\\N	{"The Husband"}	1918	693
8808	2	actress	\\N	{"The Wife"}	1918	1196
8809	3	actress	\\N	{"The Child"}	1918	1607
8810	4	director	\\N	{}	1918	467
8811	5	writer	\\N	{}	1918	1714
8812	6	cinematographer	\\N	{}	1918	49
8813	1	actor	\\N	{"Gray Wolf"}	1919	203
8814	2	actress	\\N	{"Dorothy Sloane"}	1919	918
8815	3	actor	\\N	{}	1919	675
8816	1	actor	\\N	{Svengali}	1920	486
8817	2	actress	\\N	{Trilby}	1920	1331
8818	1	actor	\\N	{"Harding - The Father"}	1921	1084
8819	2	actress	\\N	{"Betty Harding"}	1921	1292
8820	3	actor	\\N	{"Ralph - The Successful Suitor"}	1921	604
8821	4	actor	\\N	{}	1921	1460
8822	5	actor	\\N	{}	1921	1305
8823	1	actor	\\N	{"Bob Bonner"}	1922	1301
8824	2	actress	\\N	{"Mrs. Bonner - Bob & Jack's Mother"}	1922	1233
8825	3	director	\\N	{}	1922	764
8826	4	producer	producer	{}	1922	765
8827	1	director	\\N	{}	1923	486
8828	1	director	\\N	{}	1924	486
8829	1	director	\\N	{}	1925	486
8830	1	actor	\\N	{"Jack Harvey"}	1926	203
8831	2	actor	\\N	{}	1926	920
8832	3	actor	\\N	{}	1926	921
8833	1	actress	\\N	{Helen}	1927	465
8834	2	actor	\\N	{"Richard Gray - a Cavalry Officer"}	1927	1295
8835	3	actor	\\N	{"Henry Montgomery - a Cavalry Officer"}	1927	769
8836	10	producer	producer	{}	1928	200
8837	1	actress	\\N	{"Henriette (orphan)"}	1928	1057
8838	2	actress	\\N	{Louise}	1928	1243
8839	3	actor	\\N	{"Chevalier Maurice De Vaudrey"}	1928	1715
8840	4	actor	\\N	{"Count de Linieres, Minister of Police"}	1928	1220
8841	5	director	\\N	{}	1928	561
8842	6	director	\\N	{}	1928	429
8843	7	writer	novel "Les deux orphelines"	{}	1928	260
8844	8	writer	novel "Les deux orphelines"	{}	1928	1716
8845	9	writer	\\N	{}	1928	1717
8846	10	actor	\\N	{Footman}	1929	567
8847	1	actress	\\N	{Florence}	1929	506
8848	2	actor	\\N	{"Nellie's Husband"}	1929	572
8849	3	actor	\\N	{"The Tempter"}	1929	1149
8850	4	actress	\\N	{"The Tempter's Companion"}	1929	699
8851	5	director	\\N	{}	1929	467
8852	6	cinematographer	\\N	{}	1929	49
8853	7	actress	\\N	{"The Mother"}	1929	612
8854	8	actress	\\N	{}	1929	414
8855	9	actress	\\N	{}	1929	508
8856	10	actor	\\N	{}	1930	924
8858	2	actress	\\N	{}	1930	918
8859	3	actor	\\N	{}	1930	676
8860	4	actor	\\N	{}	1930	920
8861	5	actor	\\N	{}	1930	923
8862	6	actor	\\N	{}	1930	678
8863	7	actor	\\N	{}	1930	960
8864	8	actress	\\N	{}	1930	922
8865	9	actor	\\N	{}	1930	919
8866	10	actor	\\N	{Laborer}	1931	882
8867	1	actor	\\N	{"The Mexican Laborer"}	1931	599
8868	2	actress	\\N	{"The Mexican Laborer's Wife"}	1931	515
8869	3	actor	\\N	{"The Rancher"}	1931	685
8870	4	actress	\\N	{"The Rancher's Daughter"}	1931	470
8871	5	director	\\N	{}	1931	467
8872	6	cinematographer	\\N	{}	1931	49
8873	7	actress	\\N	{"The Nurse"}	1931	1350
8874	8	actor	\\N	{"The Foreman"}	1931	573
8875	9	actor	\\N	{}	1931	466
8876	1	actor	\\N	{"Jack Harvey - the Two-Gun Man"}	1932	203
8877	2	actor	\\N	{"Dan Hicks - the Squatter"}	1932	920
8878	10	actor	\\N	{"Jeremiah Brown - the Storekeeper"}	1933	1718
8879	1	actor	\\N	{"Uncle Hiram"}	1933	1383
8880	2	actor	\\N	{"Jimmie Long"}	1933	891
8881	3	actress	\\N	{"Jimmie's Mother"}	1933	252
8882	4	actress	\\N	{"Jimmie's Sister"}	1933	1448
8883	5	director	\\N	{}	1933	1257
8884	6	actress	\\N	{"Jimmie's Sweetheart"}	1933	1281
8885	7	actor	\\N	{"Lars Olesen"}	1933	519
8886	8	actor	\\N	{"Seth Jones"}	1933	856
8887	9	actress	\\N	{"Samanthy Jones"}	1933	1447
8888	1	director	\\N	{}	1934	82
8889	2	director	\\N	{}	1934	486
8890	1	actor	\\N	{"A Young Officer of the Confederate Army"}	1935	925
8891	2	director	\\N	{}	1935	71
8892	3	cinematographer	\\N	{}	1935	926
8893	10	actress	\\N	{Danser}	1936	1719
8894	1	actor	\\N	{Arthur}	1936	1720
8895	2	actress	\\N	{Francisca}	1936	1399
8896	3	actor	\\N	{Camillo}	1936	1721
8897	4	actress	\\N	{Julia}	1936	1318
8898	5	director	\\N	{}	1936	1438
8899	6	writer	\\N	{}	1936	1722
8900	7	actor	\\N	{Sanger}	1936	1316
8901	8	actress	\\N	{Danser}	1936	1723
8902	9	actress	\\N	{Danser}	1936	1724
8903	1	actor	\\N	{"The Young Man"}	1937	1380
8904	2	actress	\\N	{"The Girl"}	1937	1570
8905	3	actor	\\N	{"The Boy's Father"}	1937	1383
8906	4	actor	\\N	{"The Girl's Father"}	1937	1381
8907	1	actor	\\N	{"The Boy"}	1938	392
8908	2	actress	\\N	{"The Showgirl"}	1938	1292
8909	3	actress	\\N	{"The Boy's Mother"}	1938	699
8910	4	actor	\\N	{}	1938	685
8911	5	director	\\N	{}	1938	467
8912	6	writer	\\N	{}	1938	1725
8913	7	cinematographer	\\N	{}	1938	49
8914	8	actress	\\N	{}	1938	523
8915	1	actor	\\N	{"Jim Edwards"}	1939	925
8916	2	actress	\\N	{Nellie}	1939	512
8917	3	actor	\\N	{"Nellie's Father"}	1939	1100
8918	4	director	\\N	{}	1939	977
8919	5	producer	producer	{}	1939	71
8920	6	cinematographer	\\N	{}	1939	926
8921	1	actor	\\N	{"Van Bibber"}	1940	1726
8922	2	actor	\\N	{}	1940	769
8923	3	actress	\\N	{}	1940	642
8924	4	actor	\\N	{}	1940	519
8925	5	director	\\N	{}	1940	1355
8926	6	writer	story	{}	1940	1523
8927	10	actor	\\N	{Block}	1941	1087
8928	1	actor	\\N	{"Aage Hellertz"}	1941	998
8929	2	actress	\\N	{"Anna Hansen"}	1941	992
8930	3	actress	\\N	{"Metha Hellertz - Widow"}	1941	1727
8931	4	actor	\\N	{"Hansen - Waiter"}	1941	1728
8932	5	director	\\N	{}	1941	689
8933	6	writer	\\N	{}	1941	1729
8934	7	writer	\\N	{}	1941	1730
8935	8	cinematographer	\\N	{}	1941	319
8936	9	actor	\\N	{Bruun}	1941	1731
8937	10	actor	\\N	{}	1942	1732
8938	1	actress	\\N	{Yvonne}	1942	883
8939	2	actor	\\N	{"Marquis de Bougival"}	1942	1526
9183	9	actor	\\N	{}	1981	676
8940	3	actor	\\N	{"Lieutenant von Mallwitz"}	1942	1733
8941	4	actor	\\N	{"Vujrat, leader of the partisans"}	1942	1525
8942	5	director	\\N	{}	1942	887
8943	6	writer	\\N	{}	1942	1734
8944	7	cinematographer	\\N	{}	1942	1453
8945	8	production_designer	\\N	{}	1942	1735
8946	9	actor	\\N	{}	1942	1736
8947	1	director	\\N	{}	1943	1737
8948	2	cinematographer	\\N	{}	1943	1416
8949	3	cinematographer	\\N	{}	1943	1738
8950	1	actor	\\N	{"The Jewelry Clerk"}	1944	1089
8951	2	actor	\\N	{"The Husband"}	1944	599
8952	3	actress	\\N	{"The Wife"}	1944	959
8953	4	actress	\\N	{}	1944	1292
8954	5	director	\\N	{}	1944	510
8955	6	writer	\\N	{}	1944	1739
8956	7	cinematographer	\\N	{}	1944	873
8957	1	actress	\\N	{}	1945	1035
8958	2	actress	\\N	{}	1945	1740
8959	3	actor	\\N	{}	1945	1283
8960	4	director	\\N	{}	1945	811
8961	10	actor	\\N	{"The Clerk"}	1946	466
8962	1	actor	\\N	{"The Husband"}	1946	693
8963	2	actress	\\N	{"The Wife"}	1946	695
8964	3	actress	\\N	{"The Child"}	1946	1607
8965	4	actor	\\N	{"The False Friend"}	1946	946
8966	5	director	\\N	{}	1946	467
8967	6	writer	\\N	{}	1946	1277
8968	7	cinematographer	\\N	{}	1946	49
8969	8	actress	\\N	{"The Maid"}	1946	515
8970	9	actress	\\N	{"The Typist"}	1946	506
8971	10	actor	\\N	{"The Doctor"}	1947	882
8972	1	actor	\\N	{"Norris Hilton"}	1947	572
8973	2	actor	\\N	{"Hilton's Friend"}	1947	946
8974	3	actor	\\N	{"The Rancher"}	1947	644
8975	4	actress	\\N	{"Kate - the Rancher's Daughter"}	1947	695
8976	5	director	\\N	{}	1947	467
8977	6	writer	\\N	{}	1947	1078
8978	7	cinematographer	\\N	{}	1947	49
8979	8	actor	\\N	{"The Foreman"}	1947	599
8980	9	actress	\\N	{"The Maid"}	1947	1350
8981	10	actor	\\N	{}	1948	677
8982	1	actor	\\N	{"Spike Shannon"}	1948	203
8983	2	actress	\\N	{"Nora Flannigan"}	1948	918
8984	3	actor	\\N	{"Fight promoter"}	1948	920
8985	4	actor	\\N	{Fighter}	1948	1689
8986	5	actor	\\N	{Referee}	1948	1690
8987	6	actress	\\N	{}	1948	922
8988	7	actor	\\N	{}	1948	676
8989	8	actor	\\N	{}	1948	924
8990	9	actor	\\N	{}	1948	923
8991	10	actor	\\N	{"Sheriff Strong's Horse"}	1949	1705
8992	1	actor	\\N	{"Sam Long"}	1949	1715
8993	2	actor	\\N	{"Sheriff Strong"}	1949	939
8994	3	actor	\\N	{"Dr. Lane"}	1949	1657
8995	4	actor	\\N	{"A Gambler"}	1949	1655
8996	5	director	\\N	{}	1949	1055
8997	6	producer	producer	{}	1949	200
8998	7	actress	\\N	{"Mrs. Long"}	1949	1176
8999	8	actor	\\N	{"Slick Hoover"}	1949	1741
9000	9	actor	\\N	{"A Miner"}	1949	1742
9001	1	actor	\\N	{Tom}	1950	203
9002	2	actor	\\N	{"John Harris"}	1950	920
9003	3	actress	\\N	{"Mrs. Harris"}	1950	1291
9004	4	actor	\\N	{"Steve Wilson"}	1950	675
9005	5	actor	\\N	{"Stage Driver"}	1950	1322
9006	6	actor	\\N	{Deputy}	1950	676
9007	7	actor	\\N	{}	1950	919
9008	8	actor	\\N	{}	1950	924
9009	9	actor	\\N	{}	1950	923
9010	10	actress	\\N	{"Prostitute on Witness Stand"}	1951	957
9011	1	actor	\\N	{"The Old Carpenter"}	1951	644
9012	2	actress	\\N	{"The Old Carpenter's Wife"}	1951	523
9013	3	actor	\\N	{"The Doctor"}	1951	1149
9014	4	actor	\\N	{"The Judge"}	1951	516
9015	5	director	\\N	{}	1951	467
9016	6	cinematographer	\\N	{}	1951	49
9017	7	actor	\\N	{"The Policeman"}	1951	882
9018	8	actor	\\N	{"Violent Jailbird"}	1951	572
9019	9	actor	\\N	{"Violent Jailbird's Victim"}	1951	1141
9020	1	actor	\\N	{"Frank Mills"}	1952	203
9021	10	actress	\\N	{"Alice Hazen"}	1953	1057
9022	1	actor	\\N	{"James Hazen"}	1953	1220
9023	2	actor	\\N	{"Florrie Cook"}	1953	1337
9024	3	actor	\\N	{"Richard Courtright"}	1953	1655
9025	4	actor	\\N	{"The Minister"}	1953	1129
9026	5	director	\\N	{}	1953	561
9027	6	writer	story	{}	1953	1366
9028	7	producer	producer	{}	1953	200
9029	8	actor	\\N	{"The Gardner"}	1953	1743
9030	9	actor	\\N	{"The Butler"}	1953	1744
9031	10	actor	\\N	{}	1954	1745
9032	1	actor	\\N	{"Broncho Billy"}	1954	203
9033	2	actress	\\N	{"Elizabeth Barton"}	1954	1746
9034	3	actor	\\N	{"Juan Martin"}	1954	1747
9035	4	actor	\\N	{"The Sheriff"}	1954	1748
9036	5	writer	\\N	{}	1954	1749
9037	6	cinematographer	\\N	{}	1954	1750
9038	7	actor	\\N	{"The Deputy"}	1954	924
9039	8	actor	\\N	{}	1954	1751
9040	9	actor	\\N	{}	1954	1752
9041	1	actor	\\N	{"Alcibiades Shamley"}	1955	1753
9042	2	actress	\\N	{Cassandra}	1955	1026
9043	3	actor	\\N	{}	1955	1028
9044	10	actor	\\N	{}	1956	466
9045	1	actor	\\N	{"Mr. Bach - the Rich Bachelor"}	1956	599
9046	2	actress	\\N	{Tessie}	1956	601
9047	3	actor	\\N	{"John Watson - Tessie's Suitor"}	1956	863
9048	4	actor	\\N	{"Tessie's Father"}	1956	516
9049	5	director	\\N	{}	1956	467
9050	6	writer	\\N	{}	1956	1101
9051	7	cinematographer	\\N	{}	1956	49
9052	8	actor	\\N	{"The Preacher"}	1956	686
9053	9	actress	\\N	{"The Preacher's Companion"}	1956	699
9054	1	actor	\\N	{"Jack Howard"}	1957	1305
9055	2	actress	\\N	{"Mabel, Jack's Wife"}	1957	1292
9056	3	actor	\\N	{"A Reporter"}	1957	820
9057	4	actress	\\N	{}	1957	805
9058	1	actress	\\N	{"Dorothy - the Wife"}	1958	601
9059	2	actor	\\N	{"Parker - the Husband"}	1958	770
9060	3	director	\\N	{}	1958	617
9061	4	producer	producer	{}	1958	1247
9062	1	actor	\\N	{"Professor A. Leclerque"}	1959	1635
9063	2	actress	\\N	{"Mlle. Julie"}	1959	426
9064	3	actor	\\N	{"Sitting Horse"}	1959	425
9065	4	actress	\\N	{"Daughter of Sitting Horse"}	1959	1754
9066	5	director	\\N	{}	1959	429
9067	6	producer	producer	{}	1959	200
9068	7	actress	\\N	{"Sitting Horse's Squaw"}	1959	1534
9069	8	actor	\\N	{"Medicine Man"}	1959	1633
9070	9	actor	\\N	{"A 'Stewed' Cowboy"}	1959	1164
9071	1	actor	\\N	{"Gene Thomas"}	1960	1301
9072	2	director	\\N	{}	1960	98
9073	10	actor	\\N	{}	1961	567
9074	1	actress	\\N	{"White Rose"}	1961	695
9075	2	actor	\\N	{"White Rose's Brother"}	1961	392
9076	3	actor	\\N	{"White Rose's Father"}	1961	644
9077	4	actor	\\N	{"First Outlaw"}	1961	572
9078	5	director	\\N	{}	1961	467
9079	6	writer	story	{}	1961	578
9080	7	writer	\\N	{}	1961	476
9081	8	cinematographer	\\N	{}	1961	49
9082	9	actor	\\N	{"Second Outlaw"}	1961	946
9083	10	actress	\\N	{"At Club"}	1962	1755
9084	1	actor	\\N	{"The Husband"}	1962	1089
9085	2	actress	\\N	{"The Wife"}	1962	1292
9086	3	actor	\\N	{"One of the Husband's Chums"}	1962	466
9087	4	actor	\\N	{"One of the Husband's Chums"}	1962	685
9088	5	director	\\N	{}	1962	967
9089	6	director	\\N	{}	1962	510
9090	7	writer	\\N	{}	1962	1141
9091	8	writer	story	{}	1962	1277
9092	9	cinematographer	\\N	{}	1962	873
9093	1	actor	\\N	{"John Armstrong"}	1963	519
9094	2	actor	\\N	{"James Norton"}	1963	1295
9095	3	actress	\\N	{"Mrs. James Norton"}	1963	1287
9096	4	actress	\\N	{"The Nortons' Son"}	1963	621
9097	1	director	\\N	{}	1964	82
9098	2	director	\\N	{}	1964	486
9099	10	actor	\\N	{"A Policeman"}	1965	637
9100	1	actor	\\N	{"The Doctor"}	1965	572
9101	2	actress	\\N	{"The Doctor's Wife"}	1965	523
9102	3	actress	\\N	{"The Doctor's Child"}	1965	1607
9103	4	actor	\\N	{"The Sneak Thief"}	1965	1149
9104	5	director	\\N	{}	1965	467
9105	6	writer	\\N	{}	1965	1277
9106	7	cinematographer	\\N	{}	1965	49
9107	8	actress	\\N	{"The Sneak Thief's Sweetheart"}	1965	957
9108	9	actor	\\N	{"The Sneak Thief's Companion"}	1965	619
9109	1	director	\\N	{}	1966	486
9110	10	actor	\\N	{"In Office"}	1967	685
9111	1	actor	\\N	{"The Husband"}	1967	693
9112	2	actress	\\N	{"The Wife"}	1967	508
9113	3	actress	\\N	{"The Husband's Mother"}	1967	699
9114	4	actress	\\N	{"The Wife's Mother"}	1967	515
9115	5	director	\\N	{}	1967	467
9116	6	writer	\\N	{}	1967	941
9117	7	cinematographer	\\N	{}	1967	49
9118	8	actor	\\N	{"The Rake"}	1967	599
9119	9	actor	\\N	{"A Business Associate"}	1967	882
9120	1	actor	\\N	{"John Darrow"}	1968	1203
9121	2	actress	\\N	{}	1968	1267
9122	3	actor	\\N	{"Ikey Rosenthal"}	1968	1268
9123	4	director	\\N	{}	1968	1270
9124	1	actress	\\N	{}	1969	321
9125	2	director	\\N	{}	1969	1756
9126	1	director	\\N	{}	1970	916
9127	2	writer	\\N	{}	1970	745
9128	1	actor	\\N	{"Rant - the Hungry Actor"}	1971	1757
9129	2	actress	\\N	{"The Daughter of the House"}	1971	1758
9130	3	director	\\N	{}	1971	486
9131	4	writer	writer	{}	1971	1759
9132	5	producer	producer	{}	1971	200
9133	1	actor	\\N	{Adam}	1972	373
9134	2	actress	\\N	{Eve}	1972	1760
9135	3	actor	\\N	{"The Peddler"}	1972	1761
9136	4	actor	\\N	{"Adam's Father"}	1972	584
9137	5	actress	\\N	{"Adam's Mother"}	1972	965
9138	1	actor	\\N	{"Lambert Chase - the Detective"}	1973	487
9139	2	actor	\\N	{"Aubrey, The Artist Under Suspicion"}	1973	1305
9140	3	actress	\\N	{"The Model"}	1973	1760
9141	4	actress	\\N	{"The Model's Mother"}	1973	1511
9142	5	director	\\N	{}	1973	565
9143	6	writer	story	{}	1973	1762
9144	7	actor	\\N	{"Luigi - the Model's Rejected Suitor"}	1973	1603
9145	8	actor	\\N	{}	1973	1306
9146	1	actor	\\N	{"Morrison - the Retired Army Colonel"}	1974	565
9147	2	actor	\\N	{"Lambert Chase - the Detective"}	1974	487
9148	3	actor	\\N	{"Prior - the Police Constable"}	1974	1134
9149	4	actor	\\N	{"The Chief of Police"}	1974	1763
9150	1	director	\\N	{}	1975	1764
9151	1	actor	\\N	{Fina}	1976	1765
9152	2	actor	\\N	{}	1976	1766
9153	3	actor	\\N	{}	1976	1767
9154	4	actor	\\N	{Hotelportier}	1976	1768
9155	5	director	\\N	{}	1976	1769
9156	6	cinematographer	\\N	{}	1976	1187
9157	7	actor	\\N	{}	1976	1770
9158	1	actor	\\N	{"The Brave Cowboy"}	1977	1203
9159	2	actress	\\N	{"The Rancher's Daughter"}	1977	1267
9160	3	actress	\\N	{}	1977	1771
9161	4	director	\\N	{}	1977	1270
9162	5	writer	\\N	{}	1977	1772
9163	1	self	\\N	{Self}	1978	1773
9164	1	actor	\\N	{Basilio}	1979	990
9165	2	actress	\\N	{Melitta}	1979	1026
9166	3	actor	\\N	{"The Alcalde"}	1979	1774
9167	4	actress	\\N	{"His Sister"}	1979	1775
9168	5	director	\\N	{}	1979	1028
9169	1	actor	\\N	{"Weston aka William Sargent"}	1980	1307
9170	2	actress	\\N	{"Mrs. Weston"}	1980	1776
9171	3	actor	\\N	{Sargent}	1980	1435
9172	4	actress	\\N	{"The Child"}	1980	1777
9173	5	actor	\\N	{"Hotel Clerk"}	1980	1588
9174	10	actor	\\N	{}	1981	1326
9175	1	actor	\\N	{"Alkali Ike"}	1981	923
9176	2	actor	\\N	{"Broncho Billy"}	1981	203
9177	3	actor	\\N	{Ben}	1981	920
9178	4	actress	\\N	{}	1981	1291
9179	5	actor	\\N	{}	1981	1325
9180	6	actress	\\N	{}	1981	922
9181	7	actor	\\N	{}	1981	921
9182	8	actor	\\N	{}	1981	924
9184	1	actor	\\N	{"Alkali Ike"}	1982	923
9185	2	actress	\\N	{Sophie}	1982	922
9186	3	actor	\\N	{}	1982	924
9187	4	actor	\\N	{}	1982	920
9188	5	director	\\N	{}	1982	203
9189	6	actor	\\N	{}	1982	921
9190	7	actor	\\N	{}	1982	676
9191	1	actor	\\N	{"Alkali Ike"}	1983	923
9192	2	actress	\\N	{Sophie}	1983	922
9193	3	actor	\\N	{}	1983	924
9194	4	actor	\\N	{}	1983	921
9195	5	director	\\N	{}	1983	203
9196	6	actor	\\N	{}	1983	1325
9197	7	actor	\\N	{}	1983	676
9198	8	actress	\\N	{}	1983	1778
9199	9	actor	\\N	{}	1983	1748
9200	1	actor	\\N	{"Alkali Ike"}	1984	923
9201	2	actress	\\N	{Bridget}	1984	922
9202	3	actor	\\N	{}	1984	920
9203	4	actor	\\N	{}	1984	676
9204	5	director	\\N	{}	1984	203
9205	6	actor	\\N	{}	1984	924
9206	7	actor	\\N	{}	1984	1324
9207	8	actor	\\N	{}	1984	1779
9208	9	actor	\\N	{}	1984	1322
9209	1	actor	\\N	{"Alkali Ike"}	1985	923
9210	2	actor	\\N	{"Slippery Slim"}	1985	921
9211	3	director	\\N	{}	1985	203
9212	1	actor	\\N	{"Alkali Ike"}	1986	923
9213	2	actor	\\N	{"Mustang Pete"}	1986	924
9214	3	actress	\\N	{"Betty Brown"}	1986	922
9215	4	director	\\N	{}	1986	203
9216	1	actor	\\N	{"Alkali Ike"}	1987	923
9217	2	actress	\\N	{Sophie}	1987	922
9218	3	actor	\\N	{}	1987	676
9219	4	actor	\\N	{}	1987	924
9220	5	director	\\N	{}	1987	203
9221	6	actor	\\N	{}	1987	1780
9222	7	actor	\\N	{}	1987	377
9223	10	actor	\\N	{}	1988	921
9224	1	actor	\\N	{"Alkali Ike"}	1988	923
9225	2	actress	\\N	{Sophie}	1988	922
9226	3	actor	\\N	{"Coyote Simpson"}	1988	676
9227	4	actor	\\N	{"Mustang Pete"}	1988	924
9228	5	director	\\N	{}	1988	203
9229	6	actor	\\N	{}	1988	1748
9230	7	actor	\\N	{}	1988	1324
9231	8	actor	\\N	{}	1988	1325
9232	9	actor	\\N	{}	1988	1326
9233	1	actor	\\N	{"Harold Preston"}	1989	1255
9234	2	actress	\\N	{"Elaine Preston"}	1989	1781
9235	3	actor	\\N	{"Old Tom"}	1989	1782
9236	4	actor	\\N	{"Old Will"}	1989	1783
9237	5	producer	producer	{}	1989	1247
9238	6	actress	\\N	{"Old Mother Lawton"}	1989	1784
9239	7	actress	\\N	{"Little Elaine as a Child"}	1989	470
9240	1	actor	\\N	{"Billy Joy, a Reporter"}	1990	1785
9241	2	actress	\\N	{"Claire Taylor"}	1990	1786
9242	3	actor	\\N	{"J.C. Moss - Newspaper Editor"}	1990	373
9243	4	actress	\\N	{"Mrs. Gardner"}	1990	1760
9244	5	director	\\N	{}	1990	1787
9245	6	writer	\\N	{}	1990	1159
9246	7	actress	\\N	{"Bridget Malloy - the Cook"}	1990	1495
9247	8	actor	\\N	{"Undetermined Secondary Role"}	1990	1406
9248	1	actress	\\N	{}	1991	1399
9249	2	actor	\\N	{}	1991	1788
9250	3	actor	\\N	{}	1991	1789
9251	4	director	\\N	{}	1991	1438
9252	1	actor	\\N	{"Lt. Hart"}	1992	1301
9253	2	actress	\\N	{"Bright Star"}	1992	1509
9254	3	actor	\\N	{}	1992	925
9255	4	director	\\N	{}	1992	617
9256	5	writer	story	{}	1992	1790
9257	1	director	\\N	{}	1993	266
9258	2	writer	play	{}	1993	1791
9259	1	actor	\\N	{"The Butler"}	1994	1089
9260	2	actor	\\N	{"The Chef"}	1994	1392
9261	3	actress	\\N	{"The Heiress"}	1994	762
9262	4	actor	\\N	{"The Heiress's Father"}	1994	911
9263	5	director	\\N	{}	1994	510
9264	6	actress	\\N	{"The Heiress's Mother"}	1994	1302
9265	7	actress	\\N	{}	1994	1292
9266	1	actor	\\N	{"James Pattie"}	1995	990
9267	2	actress	\\N	{"Donna Ysidora Sepulveda"}	1995	1026
9268	3	director	\\N	{}	1995	1028
9269	1	director	\\N	{}	1996	595
9270	10	cinematographer	\\N	{}	1997	1792
9271	1	actress	\\N	{"Queen Elizabeth I"}	1997	138
9272	2	actor	\\N	{"Robert Devereux, Earl of Essex"}	1997	979
9273	3	actor	\\N	{"Howard, Earl of Nottingham"}	1997	1793
9274	4	actress	\\N	{"Arabella, the Countess of Nottingham"}	1997	1794
9275	5	director	co-director	{}	1997	1072
9276	6	director	co-director	{}	1997	982
9277	7	writer	play	{}	1997	795
9278	8	composer	\\N	{}	1997	1795
9279	9	cinematographer	\\N	{}	1997	141
9280	1	actor	\\N	{"The Rich Father"}	1998	1321
9281	2	actress	\\N	{"The Rich Father's Daughter, a Charity Worker"}	1998	1470
9282	3	actress	\\N	{"The Poor Mother"}	1998	1796
9283	4	actress	\\N	{"The Poor Mother's Child"}	1998	1471
9284	5	actor	\\N	{}	1998	1797
9285	6	self	\\N	{"Himself, Cardinal Farley"}	1998	1798
9286	1	actor	\\N	{}	1999	1799
9287	2	actor	\\N	{}	1999	1632
9288	3	director	\\N	{}	1999	739
9289	4	writer	play	{}	1999	1800
9290	5	cinematographer	\\N	{}	1999	636
9291	10	actress	\\N	{"The Angel's Wife"}	2000	1447
9292	1	actor	\\N	{"The Troupe Manager"}	2000	1670
9293	2	actor	\\N	{"The Tragedian"}	2000	769
9294	3	actress	\\N	{"The Leading Lady"}	2000	1801
9295	4	actress	\\N	{"The Ingenue"}	2000	1802
9296	5	director	\\N	{}	2000	892
9297	6	actor	\\N	{"The Comedian"}	2000	1279
9298	7	actor	\\N	{"The Leading Juvenile"}	2000	581
9299	8	actor	\\N	{"The Old Man"}	2000	1803
9300	9	actor	\\N	{"Squire Mudge - the Angel"}	2000	519
9301	1	actor	\\N	{"Jonathan Carey"}	2001	1203
9302	2	actress	\\N	{"Jane Stevens"}	2001	1804
9303	3	actor	\\N	{"Hal Evers"}	2001	1269
9304	4	actress	\\N	{"Anne Carey - Jonathan's Mother"}	2001	1631
9305	5	director	\\N	{}	2001	1270
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 41, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 35, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 2001, true);


--
-- Name: movies_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_person_id_seq', 1804, true);


--
-- Name: movies_personmovie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_personmovie_id_seq', 9305, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: movies_movie movies_movie_imdb_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_movie
    ADD CONSTRAINT movies_movie_imdb_id_key UNIQUE (imdb_id);


--
-- Name: movies_movie movies_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_movie
    ADD CONSTRAINT movies_movie_pkey PRIMARY KEY (id);


--
-- Name: movies_person movies_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_person
    ADD CONSTRAINT movies_person_pkey PRIMARY KEY (id);


--
-- Name: movies_personmovie movies_personmovie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_personmovie
    ADD CONSTRAINT movies_personmovie_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: movies_movie_imdb_id_07ddfa3f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX movies_movie_imdb_id_07ddfa3f_like ON public.movies_movie USING btree (imdb_id varchar_pattern_ops);


--
-- Name: movies_personmovie_movie_id_id_6e77cf38; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX movies_personmovie_movie_id_id_6e77cf38 ON public.movies_personmovie USING btree (movie_id);


--
-- Name: movies_personmovie_person_id_id_e4c77a9a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX movies_personmovie_person_id_id_e4c77a9a ON public.movies_personmovie USING btree (person_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_personmovie movies_personmovie_movie_id_b2ad4607_fk_movies_movie_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_personmovie
    ADD CONSTRAINT movies_personmovie_movie_id_b2ad4607_fk_movies_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: movies_personmovie movies_personmovie_person_id_5f520c23_fk_movies_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_personmovie
    ADD CONSTRAINT movies_personmovie_person_id_5f520c23_fk_movies_person_id FOREIGN KEY (person_id) REFERENCES public.movies_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

