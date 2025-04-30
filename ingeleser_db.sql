--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO roadhouse_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO roadhouse_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO roadhouse_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO roadhouse_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO roadhouse_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO roadhouse_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO roadhouse_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO roadhouse_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO roadhouse_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO roadhouse_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO roadhouse_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO roadhouse_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: corporativeinfo_corporativeinfo; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.corporativeinfo_corporativeinfo (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.corporativeinfo_corporativeinfo OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_corporativeinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.corporativeinfo_corporativeinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corporativeinfo_corporativeinfo_id_seq OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_corporativeinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.corporativeinfo_corporativeinfo_id_seq OWNED BY public.corporativeinfo_corporativeinfo.id;


--
-- Name: corporativeinfo_customer; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.corporativeinfo_customer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    logo character varying(256) NOT NULL
);


ALTER TABLE public.corporativeinfo_customer OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.corporativeinfo_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corporativeinfo_customer_id_seq OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.corporativeinfo_customer_id_seq OWNED BY public.corporativeinfo_customer.id;


--
-- Name: corporativeinfo_galleryitem; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.corporativeinfo_galleryitem (
    id integer NOT NULL,
    image character varying(256) NOT NULL
);


ALTER TABLE public.corporativeinfo_galleryitem OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_galleryitem_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.corporativeinfo_galleryitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corporativeinfo_galleryitem_id_seq OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_galleryitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.corporativeinfo_galleryitem_id_seq OWNED BY public.corporativeinfo_galleryitem.id;


--
-- Name: corporativeinfo_service; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.corporativeinfo_service (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.corporativeinfo_service OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_service_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.corporativeinfo_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corporativeinfo_service_id_seq OWNER TO roadhouse_user;

--
-- Name: corporativeinfo_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.corporativeinfo_service_id_seq OWNED BY public.corporativeinfo_service.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: roadhouse_user
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


ALTER TABLE public.django_admin_log OWNER TO roadhouse_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO roadhouse_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO roadhouse_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO roadhouse_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO roadhouse_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: roadhouse_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO roadhouse_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roadhouse_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: roadhouse_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO roadhouse_user;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_corporativeinfo ALTER COLUMN id SET DEFAULT nextval('public.corporativeinfo_corporativeinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_customer ALTER COLUMN id SET DEFAULT nextval('public.corporativeinfo_customer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_galleryitem ALTER COLUMN id SET DEFAULT nextval('public.corporativeinfo_galleryitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_service ALTER COLUMN id SET DEFAULT nextval('public.corporativeinfo_service_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add cliente	1	add_customer
2	Can change cliente	1	change_customer
3	Can delete cliente	1	delete_customer
4	Can add servicio	2	add_service
5	Can change servicio	2	change_service
6	Can delete servicio	2	delete_service
7	Can add ítem de galería	3	add_galleryitem
8	Can change ítem de galería	3	change_galleryitem
9	Can delete ítem de galería	3	delete_galleryitem
10	Can add Ítem informativo	4	add_corporativeinfo
11	Can change Ítem informativo	4	change_corporativeinfo
12	Can delete Ítem informativo	4	delete_corporativeinfo
13	Can change config	5	change_config
14	Can add log entry	6	add_logentry
15	Can change log entry	6	change_logentry
16	Can delete log entry	6	delete_logentry
17	Can add group	7	add_group
18	Can change group	7	change_group
19	Can delete group	7	delete_group
20	Can add user	8	add_user
21	Can change user	8	change_user
22	Can delete user	8	delete_user
23	Can add permission	9	add_permission
24	Can change permission	9	change_permission
25	Can delete permission	9	delete_permission
26	Can add content type	10	add_contenttype
27	Can change content type	10	change_contenttype
28	Can delete content type	10	delete_contenttype
29	Can add session	11	add_session
30	Can change session	11	change_session
31	Can delete session	11	delete_session
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 31, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$K3cpXUdAxtGh$T54MeDRzXtU+5Toc3jI3pGNcd8nk7sae6FBZlHvIYoo=	2018-05-24 00:48:16.109107+00	t	admin			admin@roadhousestudio.co	t	t	2018-01-23 17:43:57.769876+00
2	pbkdf2_sha256$36000$S4O6iUsGsvzf$Zf2q1h2A0l80kATAW5l45UOpO1bDCj11fptxm4qvuNE=	2018-11-14 20:07:16.053093+00	f	ingenelectro	Francisco	Baquero	ingenelectro@outlook.com	t	t	2018-01-23 18:01:50+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	2	1
2	2	2
3	2	4
4	2	5
5	2	7
6	2	8
7	2	10
8	2	11
9	2	9
10	2	3
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 10, true);


--
-- Data for Name: corporativeinfo_corporativeinfo; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.corporativeinfo_corporativeinfo (id, title, description, slug) FROM stdin;
3	Políticas	<hr>\r\n<p class="text-justify">Estamos comprometidos con el cumplimiento de nuestras políticas basados en nuestros principios, valores y mecanismos de transparencia como el Código de Buena Conducta y Política de anti-Corrupción y Soborno.<br>De esta manera impulsamos el desarrollo de las políticas del Sistema de Seguridad y Salud en el Trabajo&nbsp; y la Política contra en Consumo de Sustancias Psicoactivas.&nbsp;</p><hr>	politicas
1	Misión	<hr>\r\n<p class="text-justify">Prestar servicios en ingeniería electromecánica y fabricación de tableros eléctricos cumpliendo con estándares de calidad, garantizando un mejoramiento continuo; fortaleciendo la responsabilidad, respeto y equidad de la organización, brindando bienestar y capacitación a todos los trabajadores y respuesta oportuna a nuestros clientes.<span></span></p>\r\n<hr>\r\n<p class="text-justify"><br></p>	mision
2	Visión	<hr>\r\n<p class="text-justify">En el año 2022 seremos reconocidos a nivel nacional en la industrial eléctrica por brindar un excelente servicio y productos de calidad enfocados siempre en la mejora continua.\r\n</p>\r\n<hr>\r\n<p class="text-justify"><br></p>	vision
\.


--
-- Name: corporativeinfo_corporativeinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.corporativeinfo_corporativeinfo_id_seq', 3, true);


--
-- Data for Name: corporativeinfo_customer; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.corporativeinfo_customer (id, name, logo) FROM stdin;
23	ABB	ABB_14iMkXD.png
24	ACESCO	ACESCO_XzqWLJk.png
25	Alpina	ALPINA_P84vyJq.png
26	Dow	DOW_nxkdw9a.png
27	DPA	DPA_cnZIFRc.png
28	El Rey	EL_REY_QB9GVV8.png
29	Firmenich	FIRMENICH_DjAVT19.png
30	Nestlé	NESTLÉ_P6q62tn.png
31	Purina	PURINA_pSSmDwy.png
32	QASFAR	QASFAR_srhDJLG.png
33	Santana	SANTANA.png
\.


--
-- Name: corporativeinfo_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.corporativeinfo_customer_id_seq', 33, true);


--
-- Data for Name: corporativeinfo_galleryitem; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.corporativeinfo_galleryitem (id, image) FROM stdin;
13	image91.png
14	2012-06-07_15.37.24.jpg
15	image101.png
17	image28.png
18	EL_REY_7L18mzF.png
19	image48.png
20	image58.png
21	image78.png
22	image88.png
\.


--
-- Name: corporativeinfo_galleryitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.corporativeinfo_galleryitem_id_seq', 22, true);


--
-- Data for Name: corporativeinfo_service; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.corporativeinfo_service (id, name, description) FROM stdin;
4	Diseño Eléctrico	\N
5	Cableado Estructurado	\N
6	Mantenimiento y Montaje Industrial	<p>Contamos con un equipo de trabajo especializado para llevar a cabo mantenimientos y montajes a nivel nacional.</p>\r\n<ul><li><em>Retrofit a interruptores de potencia en baja y media tensión.</em></li><li><em>Montaje de maquinaria industrial con puesta en marcha.</em></li><li><em>Mantenimiento de tableros eléctricos, equipos y maquinaria industrial.</em></li><li><em>Levantamiento de planos eléctricos y actualización.&nbsp;&nbsp;</em></li><li><em>Diseños eléctricos para subestaciones, sistemas de iluminación, edificios y proyectos industriales.</em></li><li>Montaje de Subestaciones</li></ul>
2	Cableado Estructurado	<ul><li><em><i>Diseño de puntos de Red para puestos de trabajo.</i></em></li><li><i>Sistemas de comunicación vía ethernet para automatización industrial.</i><em></em></li><li><i>Fibra óptica.</i></li><li><i>Certificados y estudios de velocidad de transmisión de datos.</i></li><li><i>Data centers.&nbsp;</i></li><li><i>Instalación de sistemas porta cables.&nbsp;</i></li></ul>
3	Aires Acondicionados	<ul><li><em><i>Suministro y montaje de aires acondicionados especiales para cuartos y tableros eléctricos.</i></em></li><li><i>Distribuidores autorizados de la marca DKC.&nbsp;</i></li></ul>
1	Fabricación y Ensamble de Tableros Eléctricos	<p class="text-justify">Somos especialistas en la fabricación y ensamble de tableros eléctricos para control y distribución. Entre los más destacados:</p>\r\n<ul><li><em>Arrancadores electrónicos o de lógica cableada para motores industriales.</em></li><li><em>Armarios para alojar medidores de energía hasta 24 cuentas.</em></li><li><em>Tableros de distribución y transferencias hasta de 2500A.</em></li><li><em>Bancos de condensadores hasta 650KVARs, variadores de velocidad, arranque de motores y bombas y arrancadores suaves hasta 375 HP.</em></li></ul>\r\n<p><span></span></p>\r\n<hr>\r\n<p>Tableros de control:</p>\r\n<ul><li><em>Cuartos Fríos</em></li><li><em>Plantas de Tratamiento (PTAR/ PTAB)</em></li><li><em>Bandas Transportadoras</em></li><li><em>Polipastos</em></li><li><em>Procesos industriales que requieran programación especial con PLC, comunicación, pantallas (Touch-Screen), e instrumentación.</em></li><li><em>Bombas: (equipos de presión, sumergibles, pozo profundo, aguas negras, etc.), alternadas, aditivas, con lógica cableada o lógica programada (PLC).</em></li></ul>
\.


--
-- Name: corporativeinfo_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.corporativeinfo_service_id_seq', 6, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-01-23 17:57:15.9905+00	2	ingenelectro	1	[{"added": {}}]	8	1
2	2018-01-23 18:03:29.812861+00	2	ingenelectro	2	[{"changed": {"fields": ["first_name", "last_name", "email", "last_login", "date_joined"]}}]	8	1
3	2018-01-23 18:05:02.287181+00	2	ingenelectro	2	[{"changed": {"fields": ["password"]}}]	8	1
4	2018-01-23 18:05:10.534605+00	2	ingenelectro	2	[]	8	1
5	2018-01-23 18:07:02.939636+00	2	ingenelectro	2	[{"changed": {"fields": ["password"]}}]	8	1
6	2018-01-23 18:07:17.230648+00	2	ingenelectro	2	[]	8	1
7	2018-01-23 18:07:56.832865+00	2	ingenelectro	2	[]	8	1
8	2018-01-23 18:09:46.605742+00	2	ingenelectro	2	[{"changed": {"fields": ["is_staff"]}}]	8	1
9	2018-01-24 17:32:29.849907+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
10	2018-01-24 17:34:28.794329+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
11	2018-01-24 17:38:50.641493+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
12	2018-01-24 17:40:03.00112+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
13	2018-01-24 17:40:16.349955+00	3	Politica de Calidad	2	[{"changed": {"fields": ["description"]}}]	4	2
14	2018-01-24 17:40:53.603332+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
15	2018-01-24 17:41:12.044251+00	3	Politica de Calidad	2	[{"changed": {"fields": ["description"]}}]	4	2
16	2018-01-30 16:13:07.974232+00	1	Nestlé S.A.	1	[{"added": {}}]	1	2
17	2018-01-30 16:13:16.486745+00	2	Nestlé S.A.	1	[{"added": {}}]	1	2
18	2018-01-30 16:14:41.879013+00	3	DOW Química de Colombia S.A.	1	[{"added": {}}]	1	2
19	2018-01-30 16:15:29.273873+00	4	Nestlé Purina Pet Care	1	[{"added": {}}]	1	2
20	2018-01-30 16:19:03.345976+00	5	Asitex S.A.	1	[{"added": {}}]	1	2
21	2018-01-30 16:19:53.86989+00	6	ABB	1	[{"added": {}}]	1	2
22	2018-01-30 16:20:26.166149+00	7	Dairy Partners Americas	1	[{"added": {}}]	1	2
23	2018-01-30 16:21:08.437655+00	8	Productos El Rey	1	[{"added": {}}]	1	2
24	2018-01-30 16:22:13.707617+00	7	Dairy Partners Americas	2	[{"changed": {"fields": ["logo"]}}]	1	2
25	2018-01-30 16:24:36.661822+00	9	DIGIFIX LTDA.	1	[{"added": {}}]	1	2
26	2018-01-30 16:25:42.646706+00	10	Firmenich S.A.	1	[{"added": {}}]	1	2
27	2018-01-30 16:38:01.621159+00	1	Nestlé S.A.	2	[{"changed": {"fields": ["logo"]}}]	1	2
28	2018-01-30 16:38:15.703005+00	3	DOW Química de Colombia S.A.	2	[{"changed": {"fields": ["logo"]}}]	1	2
29	2018-01-30 16:38:26.03581+00	4	Nestlé Purina Pet Care	2	[{"changed": {"fields": ["logo"]}}]	1	2
30	2018-01-30 16:38:39.489236+00	5	Asitex S.A.	2	[{"changed": {"fields": ["logo"]}}]	1	2
31	2018-01-30 16:38:49.007298+00	6	ABB	2	[{"changed": {"fields": ["logo"]}}]	1	2
32	2018-01-30 16:39:00.951918+00	7	Dairy Partners Americas	2	[{"changed": {"fields": ["logo"]}}]	1	2
33	2018-01-30 16:39:13.105136+00	8	Productos El Rey	2	[{"changed": {"fields": ["logo"]}}]	1	2
34	2018-01-30 16:39:22.441806+00	9	DIGIFIX LTDA.	2	[{"changed": {"fields": ["logo"]}}]	1	2
35	2018-01-30 16:39:31.892314+00	10	Firmenich S.A.	2	[{"changed": {"fields": ["logo"]}}]	1	2
36	2018-01-30 16:40:06.404877+00	11	QUASFAR M&F S.A.	1	[{"added": {}}]	1	2
37	2018-01-30 16:42:13.548446+00	12	ACESCO S.A.S.	1	[{"added": {}}]	1	2
38	2018-02-09 16:30:54.407657+00	3	Politica de Calidad	2	[{"changed": {"fields": ["description"]}}]	4	2
39	2018-02-28 13:53:52.201327+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
40	2018-02-28 13:53:59.777917+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
41	2018-05-15 15:28:59.343249+00	1		1	[{"added": {}}]	3	2
42	2018-05-15 15:35:44.118804+00	1		2	[{"changed": {"fields": ["image"]}}]	3	2
43	2018-05-15 15:36:29.419332+00	2		1	[{"added": {}}]	3	2
44	2018-05-15 15:39:09.253736+00	3		1	[{"added": {}}]	3	2
45	2018-05-15 15:42:58.068325+00	4		1	[{"added": {}}]	3	2
46	2018-05-15 16:02:41.630907+00	5		1	[{"added": {}}]	3	2
47	2018-05-24 14:19:57.273773+00	3	Políticas	2	[{"changed": {"fields": ["title"]}}]	4	1
48	2018-05-24 14:20:30.470186+00	3	Políticas	2	[]	4	1
49	2018-05-24 14:21:05.628799+00	3	Politicas	2	[{"changed": {"fields": ["title"]}}]	4	1
50	2018-05-24 14:24:02.930884+00	3	Politicas	2	[{"changed": {"fields": ["description"]}}]	4	1
51	2018-05-24 14:26:48.161026+00	3	Politicas	2	[{"changed": {"fields": ["description"]}}]	4	1
52	2018-05-24 14:30:18.067268+00	3	Politica de calidad	2	[{"changed": {"fields": ["title"]}}]	4	1
53	2018-05-25 19:19:28.396096+00	3	Políticas	2	[{"changed": {"fields": ["title"]}}]	4	1
54	2018-05-25 19:21:00.992506+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	1
55	2018-05-25 19:21:17.899373+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	1
56	2018-05-25 19:21:51.041014+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	1
57	2018-05-25 19:22:04.829559+00	3	Políticas	2	[{"changed": {"fields": ["description"]}}]	4	1
58	2018-06-01 14:22:48.33065+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
59	2018-06-01 14:25:05.49043+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
60	2018-06-01 14:25:10.859822+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
61	2018-06-01 14:25:29.138919+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
62	2018-06-01 15:36:34.328958+00	3	Políticas	2	[{"changed": {"fields": ["description"]}}]	4	2
63	2018-06-01 15:45:34.330248+00	3	Políticas	2	[{"changed": {"fields": ["description"]}}]	4	2
64	2018-06-05 17:27:47.873292+00	2	ingenelectro	2	[]	8	1
65	2018-06-05 18:16:06.078052+00	1	Nestlé S.A.	3		1	2
66	2018-06-05 18:20:28.516228+00	13	ABB	1	[{"added": {}}]	1	2
67	2018-06-05 18:21:03.429719+00	6	ABB	3		1	2
68	2018-06-05 18:21:57.023043+00	14	Nestlé	1	[{"added": {}}]	1	2
69	2018-06-05 18:22:29.833572+00	15	Dow	1	[{"added": {}}]	1	2
70	2018-06-05 18:23:06.293421+00	16	Purina	1	[{"added": {}}]	1	2
71	2018-06-05 18:24:36.805384+00	17	DPA	1	[{"added": {}}]	1	2
72	2018-06-05 18:25:08.940243+00	18	El Rey	1	[{"added": {}}]	1	2
73	2018-06-05 18:26:03.379826+00	19	ACESCO	1	[{"added": {}}]	1	2
74	2018-06-05 18:26:43.427409+00	20	Firmenich	1	[{"added": {}}]	1	2
75	2018-06-05 18:28:02.272142+00	21	Alpina	1	[{"added": {}}]	1	2
76	2018-06-05 18:28:36.972334+00	22	QASFAR	1	[{"added": {}}]	1	2
77	2018-06-05 18:29:27.134894+00	2	Nestlé S.A.	3		1	2
78	2018-06-05 18:29:27.141562+00	3	DOW Química de Colombia S.A.	3		1	2
79	2018-06-05 18:29:27.144427+00	4	Nestlé Purina Pet Care	3		1	2
80	2018-06-05 18:29:27.146552+00	5	Asitex S.A.	3		1	2
81	2018-06-05 18:29:27.15222+00	7	Dairy Partners Americas	3		1	2
82	2018-06-05 18:29:27.155115+00	8	Productos El Rey	3		1	2
83	2018-06-05 18:29:27.157252+00	9	DIGIFIX LTDA.	3		1	2
84	2018-06-05 18:29:27.161651+00	10	Firmenich S.A.	3		1	2
85	2018-06-05 18:29:27.165602+00	11	QUASFAR M&F S.A.	3		1	2
86	2018-06-05 18:29:27.167342+00	12	ACESCO S.A.S.	3		1	2
87	2018-06-05 18:32:22.085272+00	13	ABB	3		1	2
88	2018-06-05 18:32:22.088749+00	14	Nestlé	3		1	2
89	2018-06-05 18:32:22.094186+00	15	Dow	3		1	2
90	2018-06-05 18:32:22.097046+00	16	Purina	3		1	2
91	2018-06-05 18:32:22.099948+00	17	DPA	3		1	2
92	2018-06-05 18:32:22.104027+00	18	El Rey	3		1	2
93	2018-06-05 18:32:22.107932+00	19	ACESCO	3		1	2
94	2018-06-05 18:32:22.10991+00	20	Firmenich	3		1	2
95	2018-06-05 18:32:22.113807+00	21	Alpina	3		1	2
96	2018-06-05 18:32:22.118768+00	22	QASFAR	3		1	2
97	2018-06-05 18:34:54.244396+00	23	ABB	1	[{"added": {}}]	1	2
98	2018-06-05 18:37:10.562945+00	24	ACESCO	1	[{"added": {}}]	1	2
99	2018-06-05 18:37:19.305189+00	25	Alpina	1	[{"added": {}}]	1	2
100	2018-06-05 18:37:26.617348+00	26	Dow	1	[{"added": {}}]	1	2
101	2018-06-05 18:37:34.344203+00	27	DPA	1	[{"added": {}}]	1	2
102	2018-06-05 18:37:41.404229+00	28	El Rey	1	[{"added": {}}]	1	2
103	2018-06-05 18:37:48.740928+00	29	Firmenich	1	[{"added": {}}]	1	2
104	2018-06-05 18:38:08.096757+00	30	Nestlé	1	[{"added": {}}]	1	2
105	2018-06-05 18:38:18.56035+00	31	Purina	1	[{"added": {}}]	1	2
106	2018-06-05 18:38:27.795939+00	32	QASFAR	1	[{"added": {}}]	1	2
107	2018-06-05 18:38:50.296291+00	33	Santana	1	[{"added": {}}]	1	2
108	2018-06-05 18:38:58.093513+00	33	Santana	2	[]	1	2
109	2018-06-05 18:48:11.349885+00	6		1	[{"added": {}}]	3	2
110	2018-06-05 18:49:24.08037+00	7		1	[{"added": {}}]	3	2
111	2018-06-05 18:52:23.73455+00	1		3		3	2
112	2018-06-05 18:52:23.739887+00	2		3		3	2
113	2018-06-05 18:52:23.746482+00	3		3		3	2
114	2018-06-05 18:52:23.749393+00	4		3		3	2
115	2018-06-05 18:52:23.752938+00	5		3		3	2
116	2018-06-05 18:52:23.759113+00	6		3		3	2
117	2018-06-05 18:52:23.761747+00	7		3		3	2
118	2018-06-05 18:55:34.685253+00	8		1	[{"added": {}}]	3	2
119	2018-06-05 18:55:54.426516+00	9		1	[{"added": {}}]	3	2
120	2018-06-05 19:57:09.849851+00	10		1	[{"added": {}}]	3	2
121	2018-06-05 19:58:28.883241+00	11		1	[{"added": {}}]	3	2
122	2018-06-05 20:02:33.277509+00	12		1	[{"added": {}}]	3	2
123	2018-06-05 20:03:28.6117+00	8		3		3	2
124	2018-06-05 20:03:28.617808+00	9		3		3	2
125	2018-06-05 20:03:28.619904+00	10		3		3	2
126	2018-06-05 20:03:28.622733+00	11		3		3	2
127	2018-06-05 20:03:28.625426+00	12		3		3	2
128	2018-06-05 20:08:59.181252+00	13		1	[{"added": {}}]	3	2
129	2018-06-05 20:09:30.970921+00	14		1	[{"added": {}}]	3	2
130	2018-06-05 20:11:48.524543+00	15		1	[{"added": {}}]	3	2
131	2018-06-05 20:15:10.452747+00	16		1	[{"added": {}}]	3	2
132	2018-06-05 20:16:18.053432+00	16		3		3	2
133	2018-06-05 20:23:31.175313+00	17		1	[{"added": {}}]	3	2
134	2018-06-05 20:26:27.090638+00	18		1	[{"added": {}}]	3	2
135	2018-06-05 20:30:28.422384+00	19		1	[{"added": {}}]	3	2
136	2018-06-05 20:39:43.831198+00	20		1	[{"added": {}}]	3	2
137	2018-06-05 20:50:12.752432+00	21		1	[{"added": {}}]	3	2
138	2018-06-05 20:57:25.217542+00	22		1	[{"added": {}}]	3	2
139	2018-06-19 21:06:13.091497+00	1	Tableros Eléctricos	2	[{"changed": {"fields": ["description"]}}]	2	2
140	2018-06-19 21:07:12.336397+00	1	Tableros Eléctricos	2	[{"changed": {"fields": ["description"]}}]	2	2
141	2018-10-10 15:06:32.067765+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
142	2018-10-10 15:07:13.765499+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
143	2018-10-10 15:07:38.337191+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
144	2018-10-10 15:08:01.075428+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
145	2018-10-10 15:08:24.546137+00	1	Misión	2	[]	4	2
146	2018-10-10 15:08:48.321024+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
147	2018-10-10 15:09:06.943783+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
148	2018-10-10 15:09:18.138337+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
149	2018-10-10 15:09:42.13641+00	3	Políticas	2	[{"changed": {"fields": ["description"]}}]	4	2
150	2018-10-10 15:09:50.520613+00	3	Políticas	2	[{"changed": {"fields": ["description"]}}]	4	2
151	2018-10-10 15:16:27.357643+00	1	Fabricación y Ensamble de Tableros Eléctricos	2	[{"changed": {"fields": ["name", "description"]}}]	2	2
152	2018-10-10 15:16:50.535658+00	6	Mantenimiento y Montaje Industrial	1	[{"added": {}}]	2	2
153	2018-10-10 15:21:40.278681+00	1	Fabricación y Ensamble de Tableros Eléctricos	2	[{"changed": {"fields": ["description"]}}]	2	2
154	2018-10-10 15:23:25.624994+00	6	Mantenimiento y Montaje Industrial	2	[{"changed": {"fields": ["description"]}}]	2	2
155	2018-10-10 15:27:31.951714+00	2	Montajes de Subestaciones	2	[{"changed": {"fields": ["name"]}}]	2	2
156	2018-10-10 15:27:47.651564+00	6	Mantenimiento y Montaje Industrial	2	[{"changed": {"fields": ["description"]}}]	2	2
157	2018-10-10 15:30:32.733715+00	2	Cableado Estructurado	2	[{"changed": {"fields": ["name", "description"]}}]	2	2
158	2018-10-10 15:31:14.009896+00	3	Aires Acondicionados	2	[{"changed": {"fields": ["name", "description"]}}]	2	2
159	2018-11-14 20:07:40.424092+00	1	Fabricación y Ensamble de Tableros Eléctricos	2	[{"changed": {"fields": ["description"]}}]	2	2
160	2018-11-14 20:14:07.135483+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
161	2018-11-14 20:14:23.318723+00	2	Visión	2	[]	4	2
162	2018-11-14 20:15:07.540942+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
163	2018-11-14 20:15:33.272642+00	1	Misión	2	[{"changed": {"fields": ["description"]}}]	4	2
164	2018-11-14 20:15:51.480684+00	2	Visión	2	[{"changed": {"fields": ["description"]}}]	4	2
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 164, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	corporativeinfo	customer
2	corporativeinfo	service
3	corporativeinfo	galleryitem
4	corporativeinfo	corporativeinfo
5	constance	config
6	admin	logentry
7	auth	group
8	auth	user
9	auth	permission
10	contenttypes	contenttype
11	sessions	session
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-12-06 03:46:30.75346+00
2	auth	0001_initial	2017-12-06 03:46:30.849296+00
3	admin	0001_initial	2017-12-06 03:46:30.895316+00
4	admin	0002_logentry_remove_auto_add	2017-12-06 03:46:30.909386+00
5	contenttypes	0002_remove_content_type_name	2017-12-06 03:46:30.931156+00
6	auth	0002_alter_permission_name_max_length	2017-12-06 03:46:30.938034+00
7	auth	0003_alter_user_email_max_length	2017-12-06 03:46:30.949183+00
8	auth	0004_alter_user_username_opts	2017-12-06 03:46:30.959388+00
9	auth	0005_alter_user_last_login_null	2017-12-06 03:46:30.972141+00
10	auth	0006_require_contenttypes_0002	2017-12-06 03:46:30.974616+00
11	auth	0007_alter_validators_add_error_messages	2017-12-06 03:46:30.984176+00
12	auth	0008_alter_user_username_max_length	2017-12-06 03:46:31.000354+00
13	corporativeinfo	0001_initial	2017-12-06 03:46:31.019681+00
14	corporativeinfo	0002_auto_20170921_2106	2017-12-06 03:46:31.033097+00
15	corporativeinfo	0003_customer_galleryitem_service	2017-12-06 03:46:31.058534+00
16	corporativeinfo	0004_auto_20170926_1732	2017-12-06 03:46:31.074026+00
17	corporativeinfo	0005_auto_20170926_1937	2017-12-06 03:46:31.081072+00
18	sessions	0001_initial	2017-12-06 03:46:31.098737+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roadhouse_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: roadhouse_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
c029mgeyfj9mxqu67flb5vvby2mcjmuv	NjZkZTZkMDY2OTQ3NThlNzg3ZDcwMDRhYTg5YzQ2ZjA3N2IwY2YyYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJhZDg1ZDE5YzA3YWQxN2I2MDYyNzI2ZTFhZWZiNmU3NGExYmI3OThlIn0=	2018-02-06 17:44:33.877627+00
hp8kbffijpled8gl97zj9h5rrrh9cont	NzJhZWRjZWJhNTY1N2JmYzE3Yjk1N2RhNzRhMTFiZWIxOTA4NGQ5ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NTNlZGY3Y2FkMWY0NjVkOTFkNjE4ZTFjNGVhODc2M2U5ODhhMzUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-02-12 19:31:05.009132+00
3wq5i7dfcnez4a36wxbsmv5nbwdc8ijy	NzJhZWRjZWJhNTY1N2JmYzE3Yjk1N2RhNzRhMTFiZWIxOTA4NGQ5ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NTNlZGY3Y2FkMWY0NjVkOTFkNjE4ZTFjNGVhODc2M2U5ODhhMzUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-03-14 13:53:08.107854+00
1rr6rj8raea4k9jxyq0ma2xzwj3le9nj	NWJkYTU3YzZkNTEwZDA1MGUwOTE3YTdmYzgxOTUxZDJmZmY1MzNmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImFkODVkMTljMDdhZDE3YjYwNjI3MjZlMWFlZmI2ZTc0YTFiYjc5OGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-06-07 00:48:16.111433+00
5ntilpu4wqi21ruzw49xu54onhozvfsu	ZWVlNmExZmY1MGNlNDRkNjY0YTMxMDk2ZTgwYjNjZGIzMGI3ZWU1Mjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjU1M2VkZjdjYWQxZjQ2NWQ5MWQ2MThlMWM0ZWE4NzYzZTk4OGEzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-06-13 19:55:09.241333+00
3cfbox0tgfwv87n2xzh2w13hzxr7kltq	MWEzMGE0ZTM4ZWIxNzBjZjZhMTU5N2QzMmViNDEyMWU0NTQwYzcxNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NTNlZGY3Y2FkMWY0NjVkOTFkNjE4ZTFjNGVhODc2M2U5ODhhMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-06-20 16:57:52.92628+00
g3fosa4061d44yvsrzfnabpet7404537	MWEzMGE0ZTM4ZWIxNzBjZjZhMTU5N2QzMmViNDEyMWU0NTQwYzcxNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NTNlZGY3Y2FkMWY0NjVkOTFkNjE4ZTFjNGVhODc2M2U5ODhhMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-10-24 15:03:44.975183+00
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: corporativeinfo_corporativeinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_corporativeinfo
    ADD CONSTRAINT corporativeinfo_corporativeinfo_pkey PRIMARY KEY (id);


--
-- Name: corporativeinfo_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_customer
    ADD CONSTRAINT corporativeinfo_customer_pkey PRIMARY KEY (id);


--
-- Name: corporativeinfo_galleryitem_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_galleryitem
    ADD CONSTRAINT corporativeinfo_galleryitem_pkey PRIMARY KEY (id);


--
-- Name: corporativeinfo_service_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.corporativeinfo_service
    ADD CONSTRAINT corporativeinfo_service_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: corporativeinfo_corporativeinfo_slug_334b11b0; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX corporativeinfo_corporativeinfo_slug_334b11b0 ON public.corporativeinfo_corporativeinfo USING btree (slug);


--
-- Name: corporativeinfo_corporativeinfo_slug_334b11b0_like; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX corporativeinfo_corporativeinfo_slug_334b11b0_like ON public.corporativeinfo_corporativeinfo USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: roadhouse_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: roadhouse_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

