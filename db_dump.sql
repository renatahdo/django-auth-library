Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO renata_hurtado;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO renata_hurtado;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO renata_hurtado;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO renata_hurtado;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO renata_hurtado;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO renata_hurtado;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: renata_hurtado
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


ALTER TABLE public.auth_user OWNER TO renata_hurtado;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO renata_hurtado;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO renata_hurtado;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO renata_hurtado;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO renata_hurtado;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO renata_hurtado;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO renata_hurtado;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO renata_hurtado;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO renata_hurtado;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO renata_hurtado;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO renata_hurtado;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO renata_hurtado;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_booksgenres; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_booksgenres (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.books_booksgenres OWNER TO renata_hurtado;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_booksgenres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksgenres_id_seq OWNER TO renata_hurtado;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_booksgenres_id_seq OWNED BY public.books_booksgenres.id;


--
-- Name: books_bookslanguages; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_bookslanguages (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    language_id bigint NOT NULL
);


ALTER TABLE public.books_bookslanguages OWNER TO renata_hurtado;

--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_bookslanguages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookslanguages_id_seq OWNER TO renata_hurtado;

--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_bookslanguages_id_seq OWNED BY public.books_bookslanguages.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO renata_hurtado;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO renata_hurtado;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_language; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.books_language (
    id bigint NOT NULL,
    language character varying(128) NOT NULL
);


ALTER TABLE public.books_language OWNER TO renata_hurtado;

--
-- Name: books_language_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.books_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_language_id_seq OWNER TO renata_hurtado;

--
-- Name: books_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.books_language_id_seq OWNED BY public.books_language.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: renata_hurtado
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


ALTER TABLE public.django_admin_log OWNER TO renata_hurtado;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO renata_hurtado;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO renata_hurtado;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO renata_hurtado;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO renata_hurtado;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO renata_hurtado;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO renata_hurtado;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO renata_hurtado;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO renata_hurtado;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: renata_hurtado
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO renata_hurtado;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: renata_hurtado
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO renata_hurtado;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renata_hurtado
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_booksgenres id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksgenres ALTER COLUMN id SET DEFAULT nextval('public.books_booksgenres_id_seq'::regclass);


--
-- Name: books_bookslanguages id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_bookslanguages ALTER COLUMN id SET DEFAULT nextval('public.books_bookslanguages_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_language id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_language ALTER COLUMN id SET DEFAULT nextval('public.books_language_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
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
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add genre	10	add_genre
38	Can change genre	10	change_genre
39	Can delete genre	10	delete_genre
40	Can view genre	10	view_genre
41	Can add language	11	add_language
42	Can change language	11	change_language
43	Can delete language	11	delete_language
44	Can view language	11	view_language
45	Can add books languages	12	add_bookslanguages
46	Can change books languages	12	change_bookslanguages
47	Can delete books languages	12	delete_bookslanguages
48	Can view books languages	12	view_bookslanguages
49	Can add books genres	13	add_booksgenres
50	Can change books genres	13	change_booksgenres
51	Can delete books genres	13	delete_booksgenres
52	Can view books genres	13	view_booksgenres
53	Can add blacklisted token	14	add_blacklistedtoken
54	Can change blacklisted token	14	change_blacklistedtoken
55	Can delete blacklisted token	14	delete_blacklistedtoken
56	Can view blacklisted token	14	view_blacklistedtoken
57	Can add outstanding token	15	add_outstandingtoken
58	Can change outstanding token	15	change_outstandingtoken
59	Can delete outstanding token	15	delete_outstandingtoken
60	Can view outstanding token	15	view_outstandingtoken
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$Rs30TshqN36iyckpQJA6t0$2uEUBoe3ndnikT4MyfE+oYW2Sp56xYUJYdWKyRjXfms=	\N	t	renata			renatah2198@gmail.com	t	t	2022-04-12 16:15:49.289801+00
2		\N	f	nuevousuario			nuevo@usuario.com	f	t	2022-04-12 17:08:10.139581+00
3		\N	f	renata2			renatah2198@gmail.com	f	t	2022-04-12 17:09:05.44801+00
7	nuevo1	\N	f	nuevo1			nuevo@usuario.com	f	t	2022-04-12 17:47:58.875503+00
8	nuevo5	\N	f	nuevo5			nuevo5@usuario.com	f	t	2022-04-12 17:56:29.872765+00
9	pbkdf2_sha256$320000$vTSgEIe6gabTu7COYVGco4$iQldHORJFOvgfnsMJU8cXI6oVQVeRxWQLbIYpjCxs/0=	\N	f	nuevobueno			nuevobueno@usuario.com	f	t	2022-04-12 18:05:13.710695+00
10	pbkdf2_sha256$320000$lrQdgxTjo2mrmFp4C7Wv7q$iE9AYmO6/vV0d/xo4JMqPms0ZVr7uuGoJqmc67qx+YQ=	\N	f	nuevo7			nuevo7@usuario.com	f	t	2022-04-12 20:56:52.577+00
11	pbkdf2_sha256$320000$5ytmHnLmAmtAbS2FSjOGFN$dAhhpbQNNmB0oeXNctJ6SQZkgmsly8RMuesDHo+FVL0=	\N	f	nuevofront1			nuevofront1@gmail.com	f	t	2022-04-12 21:54:46.643279+00
12	pbkdf2_sha256$320000$3rPMiQv6GAY7IJ3DBoD6Lg$aiWaxYfQSec4UgGvB+zEWltijl8Iy2ZPuCD7OojD7RI=	\N	f	nuevofront2			nuevofront2@gmail.com	f	t	2022-04-12 23:05:36.060679+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
1	Ao Haru Ride	2015	200	300.50	2022-04-11 20:13:06.145518+00	2022-04-11 20:13:06.145544+00
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_booksgenres; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_booksgenres (id, book_id, genre_id) FROM stdin;
\.


--
-- Data for Name: books_bookslanguages; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_bookslanguages (id, book_id, language_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_genre (id, name) FROM stdin;
\.


--
-- Data for Name: books_language; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.books_language (id, language) FROM stdin;
1	Korean
2	Spanish
3	English
4	Japanese
5	Japanese
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	genre
11	books	language
12	books	bookslanguages
13	books	booksgenres
14	token_blacklist	blacklistedtoken
15	token_blacklist	outstandingtoken
16	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-11 20:12:30.29731+00
2	auth	0001_initial	2022-04-11 20:12:30.367278+00
3	admin	0001_initial	2022-04-11 20:12:30.385958+00
4	admin	0002_logentry_remove_auto_add	2022-04-11 20:12:30.392097+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-11 20:12:30.397951+00
6	contenttypes	0002_remove_content_type_name	2022-04-11 20:12:30.409734+00
7	auth	0002_alter_permission_name_max_length	2022-04-11 20:12:30.416666+00
8	auth	0003_alter_user_email_max_length	2022-04-11 20:12:30.422739+00
9	auth	0004_alter_user_username_opts	2022-04-11 20:12:30.429088+00
10	auth	0005_alter_user_last_login_null	2022-04-11 20:12:30.435085+00
11	auth	0006_require_contenttypes_0002	2022-04-11 20:12:30.436523+00
12	auth	0007_alter_validators_add_error_messages	2022-04-11 20:12:30.441997+00
13	auth	0008_alter_user_username_max_length	2022-04-11 20:12:30.451328+00
14	auth	0009_alter_user_last_name_max_length	2022-04-11 20:12:30.457492+00
15	auth	0010_alter_group_name_max_length	2022-04-11 20:12:30.464758+00
16	auth	0011_update_proxy_permissions	2022-04-11 20:12:30.471749+00
17	auth	0012_alter_user_first_name_max_length	2022-04-11 20:12:30.478135+00
18	books	0001_initial	2022-04-11 20:12:30.500553+00
19	books	0002_genre_language_bookslanguages_booksgenres_and_more	2022-04-11 20:12:30.540549+00
20	sessions	0001_initial	2022-04-11 20:12:30.552566+00
21	token_blacklist	0001_initial	2022-04-12 16:14:12.520668+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 16:14:12.52955+00
23	token_blacklist	0003_auto_20171017_2007	2022-04-12 16:14:12.540758+00
24	token_blacklist	0004_auto_20171017_2013	2022-04-12 16:14:12.552146+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 16:14:12.559927+00
26	token_blacklist	0006_auto_20171017_2113	2022-04-12 16:14:12.567119+00
27	token_blacklist	0007_auto_20171017_2214	2022-04-12 16:14:12.587961+00
28	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 16:14:12.629151+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 16:14:12.641508+00
30	token_blacklist	0011_linearizes_history	2022-04-12 16:14:12.643403+00
31	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 16:14:12.65057+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 23:07:02.731291+00	6
2	2022-04-12 23:10:59.584052+00	7
3	2022-04-12 23:22:27.824435+00	26
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: renata_hurtado
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg2NzEzMCwiaWF0IjoxNjQ5NzgwNzMwLCJqdGkiOiI4YTI5N2M4NmYyMDY0ZjIxYWE1Njg0OWQxZjk3OTU1OSIsInVzZXJfaWQiOjF9.NCp20aRpPBLzrLCjzm7O8wgABxxUZkMTa3B899Bw-dU	2022-04-12 16:25:30.366551+00	2022-04-13 16:25:30+00	1	8a297c86f2064f21aa56849d1f979559
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg2NzIzOCwiaWF0IjoxNjQ5NzgwODM4LCJqdGkiOiIwOGRlMGJmNGY4M2E0NGExOThhNjFlY2M1ZTg4YWEwNSIsInVzZXJfaWQiOjF9.kwBKWeBqia90BnWTRRkULWsBrYa0SGRdBEIol5KCOzg	2022-04-12 16:27:18.557809+00	2022-04-13 16:27:18+00	1	08de0bf4f83a44a198a61ecc5e88aa05
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3MzExOCwiaWF0IjoxNjQ5Nzg2NzE4LCJqdGkiOiI0NDdlMmEwNGFmZTg0YWYwYTMzMGNlNTQyYjcyNWJmMSIsInVzZXJfaWQiOjl9.D8stLBUKx4v6lF43gxbpXrysJ6at9Oi1_nZTCdQ-egs	2022-04-12 18:05:18.320324+00	2022-04-13 18:05:18+00	9	447e2a04afe84af0a330ce542b725bf1
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTgzMSwiaWF0IjoxNjQ5Nzk5NDMxLCJqdGkiOiIzOTRlN2ZhOTMyMWM0Zjc3YjRjN2Y2OWQwMjg1NGJjNCIsInVzZXJfaWQiOjEwfQ.IqyE_htyKLR7wMqTZ3lXY1J98vMyn49y4oqRp0VaSOQ	2022-04-12 21:37:11.239534+00	2022-04-13 21:37:11+00	10	394e7fa9321c4f77b4c7f69d02854bc4
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjkwMCwiaWF0IjoxNjQ5ODAwNTAwLCJqdGkiOiI0ODZlOTE4NWE1ZTc0ZmEyOTM3N2ZiMmNlNTIwNjhkYiIsInVzZXJfaWQiOjExfQ.usWTjTvzf7czvJC2Ijvd1E3YEwo5uZK4mJm-_BTNZEo	2022-04-12 21:55:00.707616+00	2022-04-13 21:55:00+00	11	486e9185a5e74fa29377fb2ce52068db
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTE4MSwiaWF0IjoxNjQ5ODA0NzgxLCJqdGkiOiI5Mzk0YzkyMWVhOWM0NjJhOGE1ZWQ3YzY1ODQ2YzJhZiIsInVzZXJfaWQiOjEyfQ.wOla2gmjFEgIZ0fIT1drLYJj0QnA3huwfyylohhMG_0	2022-04-12 23:06:21.621275+00	2022-04-13 23:06:21+00	12	9394c921ea9c462a8a5ed7c65846c2af
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTQyNCwiaWF0IjoxNjQ5ODA1MDI0LCJqdGkiOiJiN2JkNDJiMmE5ZTg0OWU1ODM5MmI0MTFmMTk1Mzk2MCIsInVzZXJfaWQiOjEyfQ.W2vnPTPKe0d9SgA5kpPkFI9Ey8ryMiMMZZjRnPceS4c	2022-04-12 23:10:24.447053+00	2022-04-13 23:10:24+00	12	b7bd42b2a9e849e58392b411f1953960
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU1MCwiaWF0IjoxNjQ5ODA1MTUwLCJqdGkiOiJkNTM0YTI0MjMxM2I0YmIyODYxZTkxYTQ1MzNlMGUwOCIsInVzZXJfaWQiOjEyfQ.mysLCeEW3KE2wVKzrNePE8kAJuGNUSTnU3ABBJkdPpQ	2022-04-12 23:12:30.436014+00	2022-04-13 23:12:30+00	12	d534a242313b4bb2861e91a4533e0e08
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU1MywiaWF0IjoxNjQ5ODA1MTUzLCJqdGkiOiIzOGJmMzU4MzFmNGU0ZDM0OTA4NTIwMWVjMTBlNDg1OCIsInVzZXJfaWQiOjEyfQ.Tgv5LhbCcX706mvShBTwXFXk9smUwBqYdV--1EdPRIg	2022-04-12 23:12:33.341292+00	2022-04-13 23:12:33+00	12	38bf35831f4e4d349085201ec10e4858
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU2OCwiaWF0IjoxNjQ5ODA1MTY4LCJqdGkiOiIyMDM0ODY0YmMxNjc0ZmU1YjA0OWQ1ODhjYTU0ZTE4OSIsInVzZXJfaWQiOjEyfQ.GC-8m7Gj1kYFCT-MCpWNwdqa80MUS7HmDWzYMvy4ntA	2022-04-12 23:12:48.094169+00	2022-04-13 23:12:48+00	12	2034864bc1674fe5b049d588ca54e189
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU3MCwiaWF0IjoxNjQ5ODA1MTcwLCJqdGkiOiJjNzIyMjZhMmViY2U0NzRlYjg1ZDYzYzAzMjM2N2NjYiIsInVzZXJfaWQiOjEyfQ.7b_LB0qMjzSrd2oAAY8TDR6gD9bLhPTtbbnxAatdVzo	2022-04-12 23:12:50.08495+00	2022-04-13 23:12:50+00	12	c72226a2ebce474eb85d63c032367ccb
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU3NywiaWF0IjoxNjQ5ODA1MTc3LCJqdGkiOiJlNzY5NzgzNDQ2MjQ0MDA4YmU2M2NmNjU3YjJlMGMxMiIsInVzZXJfaWQiOjEyfQ.yYhgIM_fjp8V4OxtWIBNfePug2tpHvznzFWe_slrT_8	2022-04-12 23:12:57.407619+00	2022-04-13 23:12:57+00	12	e769783446244008be63cf657b2e0c12
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU4MiwiaWF0IjoxNjQ5ODA1MTgyLCJqdGkiOiJkNzc3ZmRhMmRmNGM0ZWEwODBhYzQ3MDVmYzBlYmVjMiIsInVzZXJfaWQiOjEyfQ.3rOxyOSBrBDciVVfhLmhMZdmMbhk1-sP-_qwr4YOCTM	2022-04-12 23:13:02.997699+00	2022-04-13 23:13:02+00	12	d777fda2df4c4ea080ac4705fc0ebec2
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU4OCwiaWF0IjoxNjQ5ODA1MTg4LCJqdGkiOiI2OTRkZDkzMWQ2MDI0NmFhYjFkNDBhODVmODBmM2E4MCIsInVzZXJfaWQiOjEyfQ.ESJgAi3Q8oeBCtnuPTZ9Euyk11c9fcN_blZaSpGcloI	2022-04-12 23:13:08.539358+00	2022-04-13 23:13:08+00	12	694dd931d60246aab1d40a85f80f3a80
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTU5OSwiaWF0IjoxNjQ5ODA1MTk5LCJqdGkiOiIxYTE3NmU5MDM2YTM0MWM3YmQ5MWU5YTM1MWQ3OGMwOCIsInVzZXJfaWQiOjEyfQ.SuvqY8-GlgQFbMshaV0BALcehaB_6q5DGFTloP9cFe8	2022-04-12 23:13:19.798554+00	2022-04-13 23:13:19+00	12	1a176e9036a341c7bd91e9a351d78c08
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTYwMSwiaWF0IjoxNjQ5ODA1MjAxLCJqdGkiOiI0NTFmNGVjNmMyNGQ0N2E3YmQxZDk0M2VjYjViNjMwYiIsInVzZXJfaWQiOjEyfQ.vZmLGDJLCNztmLh3W0sCtjevlQnTFWQaq4c9TpvKZC0	2022-04-12 23:13:21.998131+00	2022-04-13 23:13:21+00	12	451f4ec6c24d47a7bd1d943ecb5b630b
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTY1NywiaWF0IjoxNjQ5ODA1MjU3LCJqdGkiOiJiOGU4ZDNmN2Q2YTk0Mjk5OGQ3NDQyNmU1ZGFkMThjMyIsInVzZXJfaWQiOjEyfQ.CM6eHkxBpePMWQKvOyzqmxWbVt9FS-xbQINdWpGXPFA	2022-04-12 23:14:17.336627+00	2022-04-13 23:14:17+00	12	b8e8d3f7d6a942998d74426e5dad18c3
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTcxOSwiaWF0IjoxNjQ5ODA1MzE5LCJqdGkiOiJhMDI2MTUzNDNhYWI0Y2RkYjUyZGU4ZGVmMzkyNGNkYiIsInVzZXJfaWQiOjEyfQ.Obq_FeR12TQ88lMpwLvb4SgiO5vbK99-Zovz3FPaFh4	2022-04-12 23:15:19.010201+00	2022-04-13 23:15:19+00	12	a02615343aab4cddb52de8def3924cdb
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTg1NCwiaWF0IjoxNjQ5ODA1NDU0LCJqdGkiOiIzMjc1MzM2Y2YxM2U0NTk0YjM4MmZlMDljODc2M2Y4ZSIsInVzZXJfaWQiOjEyfQ.kSFnFQhQCK3RdAQZfvxtd4PI7wXeIJCTYtLwfckNNWA	2022-04-12 23:17:34.583464+00	2022-04-13 23:17:34+00	12	3275336cf13e4594b382fe09c8763f8e
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjA2MiwiaWF0IjoxNjQ5ODA1NjYyLCJqdGkiOiI4MWJjNjkyOWIyZjI0ZTRiOTk2OWM1OGEyODk3MTE4MSIsInVzZXJfaWQiOjEyfQ.h0_Ubx9K1NlbzxWiZdtbf-ZDXnueliErmLq2R-OLNb8	2022-04-12 23:21:02.613823+00	2022-04-13 23:21:02+00	12	81bc6929b2f24e4b9969c58a28971181
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjA3MCwiaWF0IjoxNjQ5ODA1NjcwLCJqdGkiOiIzZjYzYWIxNDExZDc0YWM4OGZhMWFiMjU1ZDU2OTg5MiIsInVzZXJfaWQiOjEyfQ.ckkH14amCX-TOlTTM6zMmzUxn4WfbLEiJjLYbJ77Rus	2022-04-12 23:21:10.683701+00	2022-04-13 23:21:10+00	12	3f63ab1411d74ac88fa1ab255d569892
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjA5NywiaWF0IjoxNjQ5ODA1Njk3LCJqdGkiOiI5YmMzNGViZWU5YTE0YTliYjFjYjJkZjlhMjY4ZTExZCIsInVzZXJfaWQiOjEyfQ.P-BFrIA75lg7Z0VininSiF-qvnvTXac63b0QjqAwnoQ	2022-04-12 23:21:37.874252+00	2022-04-13 23:21:37+00	12	9bc34ebee9a14a9bb1cb2df9a268e11d
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjEwMSwiaWF0IjoxNjQ5ODA1NzAxLCJqdGkiOiJmZjYzMjgxODY5OTQ0NTcwYTVhNDRiZDZjODMxNGY3MSIsInVzZXJfaWQiOjEyfQ.dtJPeD5LDsRdoSZVmIuuebNL1O46vewzVz8vZBLopXY	2022-04-12 23:21:41.870561+00	2022-04-13 23:21:41+00	12	ff63281869944570a5a44bd6c8314f71
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjExMCwiaWF0IjoxNjQ5ODA1NzEwLCJqdGkiOiJiNzBiNDEwMTc1MTI0MWU5OTNhMmJkYWMwNGQzZDJhZSIsInVzZXJfaWQiOjEyfQ.R2PE8R0fmsF078WaSueEnIYgpJ6PS2U5928d2xQYmEY	2022-04-12 23:21:50.698073+00	2022-04-13 23:21:50+00	12	b70b4101751241e993a2bdac04d3d2ae
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjEzOSwiaWF0IjoxNjQ5ODA1NzM5LCJqdGkiOiIyYWRkOTMwZjU2ZmE0MjI3YmM4NmM2NWI4YzIzMDc0YiIsInVzZXJfaWQiOjEyfQ.2bbMJno-EngvIuTGCzTN3BDOZhJF2ThTCkQADrl1k5E	2022-04-12 23:22:19.041125+00	2022-04-13 23:22:19+00	12	2add930f56fa4227bc86c65b8c23074b
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MjE0NiwiaWF0IjoxNjQ5ODA1NzQ2LCJqdGkiOiI0NzY5MWNlMWQwMGU0NzhkYTFjMTdmZWVjZWZlNDY3NiIsInVzZXJfaWQiOjEyfQ.AtMYRkJqnWp1s6wIHk31OiGab5MfjbEYhYb-heSNfu8	2022-04-12 23:22:26.49342+00	2022-04-13 23:22:26+00	12	47691ce1d00e478da1c17feecefe4676
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 12, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, true);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_booksgenres_id_seq', 1, false);


--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_bookslanguages_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.books_language_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 3, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renata_hurtado
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 26, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_booksgenres books_booksgenres_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_pkey PRIMARY KEY (id);


--
-- Name: books_bookslanguages books_bookslanguages_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_language books_language_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_language
    ADD CONSTRAINT books_language_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_booksgenres_book_id_b33184f2; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX books_booksgenres_book_id_b33184f2 ON public.books_booksgenres USING btree (book_id);


--
-- Name: books_booksgenres_genre_id_607041db; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX books_booksgenres_genre_id_607041db ON public.books_booksgenres USING btree (genre_id);


--
-- Name: books_bookslanguages_book_id_0fc33559; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX books_bookslanguages_book_id_0fc33559 ON public.books_bookslanguages USING btree (book_id);


--
-- Name: books_bookslanguages_language_id_8b577bc4; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX books_bookslanguages_language_id_8b577bc4 ON public.books_bookslanguages USING btree (language_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: renata_hurtado
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_book_id_b33184f2_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_book_id_b33184f2_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_genre_id_607041db_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_genre_id_607041db_fk_books_genre_id FOREIGN KEY (genre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslanguages books_bookslanguages_book_id_0fc33559_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_book_id_0fc33559_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslanguages books_bookslanguages_language_id_8b577bc4_fk_books_language_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_language_id_8b577bc4_fk_books_language_id FOREIGN KEY (language_id) REFERENCES public.books_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: renata_hurtado
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

