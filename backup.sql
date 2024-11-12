--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+2)

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
-- Name: alquiler; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.alquiler (
    id integer NOT NULL,
    usuario_id integer,
    fecha_fin date NOT NULL,
    fecha_inicio date NOT NULL
);


ALTER TABLE public.alquiler OWNER TO symfony;

--
-- Name: alquiler_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.alquiler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alquiler_id_seq OWNER TO symfony;

--
-- Name: alquiler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.alquiler_id_seq OWNED BY public.alquiler.id;


--
-- Name: consola; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.consola (
    id integer NOT NULL,
    producto_id integer NOT NULL
);


ALTER TABLE public.consola OWNER TO symfony;

--
-- Name: consola_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.consola_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.consola_id_seq OWNER TO symfony;

--
-- Name: consola_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.consola_id_seq OWNED BY public.consola.id;


--
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);


ALTER TABLE public.doctrine_migration_versions OWNER TO symfony;

--
-- Name: juego; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.juego (
    id integer NOT NULL,
    producto_id integer NOT NULL
);


ALTER TABLE public.juego OWNER TO symfony;

--
-- Name: juego_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.juego_id_seq OWNER TO symfony;

--
-- Name: juego_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.juego_id_seq OWNED BY public.juego.id;


--
-- Name: otro_dispositivo; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.otro_dispositivo (
    id integer NOT NULL,
    producto_id integer NOT NULL,
    tipo character varying(255) NOT NULL
);


ALTER TABLE public.otro_dispositivo OWNER TO symfony;

--
-- Name: otro_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.otro_dispositivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.otro_dispositivo_id_seq OWNER TO symfony;

--
-- Name: otro_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.otro_dispositivo_id_seq OWNED BY public.otro_dispositivo.id;


--
-- Name: producto; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    precio integer NOT NULL,
    descripcion character varying(500) NOT NULL,
    imagen character varying(255)
);


ALTER TABLE public.producto OWNER TO symfony;

--
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_id_seq OWNER TO symfony;

--
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;


--
-- Name: reparacion; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.reparacion (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    fecha date NOT NULL,
    descripcion character varying(500) NOT NULL
);


ALTER TABLE public.reparacion OWNER TO symfony;

--
-- Name: reparacion_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.reparacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reparacion_id_seq OWNER TO symfony;

--
-- Name: reparacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.reparacion_id_seq OWNED BY public.reparacion.id;


--
-- Name: ticket_alquiler; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.ticket_alquiler (
    id integer NOT NULL,
    alquiler_id integer NOT NULL,
    producto_id integer NOT NULL
);


ALTER TABLE public.ticket_alquiler OWNER TO symfony;

--
-- Name: ticket_alquiler_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.ticket_alquiler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ticket_alquiler_id_seq OWNER TO symfony;

--
-- Name: ticket_alquiler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.ticket_alquiler_id_seq OWNED BY public.ticket_alquiler.id;


--
-- Name: ticket_compra; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.ticket_compra (
    id integer NOT NULL,
    venta_id integer NOT NULL,
    producto_id integer NOT NULL
);


ALTER TABLE public.ticket_compra OWNER TO symfony;

--
-- Name: ticket_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.ticket_compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ticket_compra_id_seq OWNER TO symfony;

--
-- Name: ticket_compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.ticket_compra_id_seq OWNED BY public.ticket_compra.id;


--
-- Name: ticket_reparacion; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.ticket_reparacion (
    id integer NOT NULL,
    reparacion_id integer NOT NULL,
    producto_id integer NOT NULL
);


ALTER TABLE public.ticket_reparacion OWNER TO symfony;

--
-- Name: ticket_reparacion_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.ticket_reparacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ticket_reparacion_id_seq OWNER TO symfony;

--
-- Name: ticket_reparacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.ticket_reparacion_id_seq OWNED BY public.ticket_reparacion.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    contrasena character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    imagen character varying(255)
);


ALTER TABLE public.usuario OWNER TO symfony;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_seq OWNER TO symfony;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- Name: venta; Type: TABLE; Schema: public; Owner: symfony
--

CREATE TABLE public.venta (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    fecha date NOT NULL,
    precio integer
);


ALTER TABLE public.venta OWNER TO symfony;

--
-- Name: venta_id_seq; Type: SEQUENCE; Schema: public; Owner: symfony
--

CREATE SEQUENCE public.venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venta_id_seq OWNER TO symfony;

--
-- Name: venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: symfony
--

ALTER SEQUENCE public.venta_id_seq OWNED BY public.venta.id;


--
-- Name: alquiler id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.alquiler ALTER COLUMN id SET DEFAULT nextval('public.alquiler_id_seq'::regclass);


--
-- Name: consola id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.consola ALTER COLUMN id SET DEFAULT nextval('public.consola_id_seq'::regclass);


--
-- Name: juego id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.juego ALTER COLUMN id SET DEFAULT nextval('public.juego_id_seq'::regclass);


--
-- Name: otro_dispositivo id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.otro_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.otro_dispositivo_id_seq'::regclass);


--
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);


--
-- Name: reparacion id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.reparacion ALTER COLUMN id SET DEFAULT nextval('public.reparacion_id_seq'::regclass);


--
-- Name: ticket_alquiler id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_alquiler ALTER COLUMN id SET DEFAULT nextval('public.ticket_alquiler_id_seq'::regclass);


--
-- Name: ticket_compra id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_compra ALTER COLUMN id SET DEFAULT nextval('public.ticket_compra_id_seq'::regclass);


--
-- Name: ticket_reparacion id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_reparacion ALTER COLUMN id SET DEFAULT nextval('public.ticket_reparacion_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- Name: venta id; Type: DEFAULT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.venta ALTER COLUMN id SET DEFAULT nextval('public.venta_id_seq'::regclass);


--
-- Data for Name: alquiler; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.alquiler (id, usuario_id, fecha_fin, fecha_inicio) FROM stdin;
1	1	2004-12-18	2004-12-11
2	1	2024-11-23	2024-11-06
3	1	2024-11-16	2024-11-06
4	1	2024-11-11	2024-11-06
5	1	2024-11-11	2024-11-06
6	1	2024-11-11	2024-11-06
7	12	2024-11-11	2024-11-07
8	1	2024-11-16	2024-11-11
\.


--
-- Data for Name: consola; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.consola (id, producto_id) FROM stdin;
1	3
2	4
4	8
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20241104072653	2024-11-04 07:27:00	10
DoctrineMigrations\\Version20241104072823	2024-11-04 07:28:44	14
DoctrineMigrations\\Version20241104072919	2024-11-04 07:29:21	11
DoctrineMigrations\\Version20241104073010	2024-11-04 07:30:14	12
DoctrineMigrations\\Version20241104073212	2024-11-04 07:32:15	11
DoctrineMigrations\\Version20241104073727	2024-11-04 07:37:34	16
DoctrineMigrations\\Version20241104074043	2024-11-04 07:40:47	8
DoctrineMigrations\\Version20241104074301	2024-11-04 07:43:04	12
DoctrineMigrations\\Version20241104074434	2024-11-04 07:44:37	16
DoctrineMigrations\\Version20241104074542	2024-11-04 07:45:45	16
DoctrineMigrations\\Version20241104074552	2024-11-04 07:47:22	2
DoctrineMigrations\\Version20241104074718	2024-11-04 07:47:22	13
DoctrineMigrations\\Version20241104074826	2024-11-04 07:48:28	16
\.


--
-- Data for Name: juego; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.juego (id, producto_id) FROM stdin;
1	1
2	2
3	9
\.


--
-- Data for Name: otro_dispositivo; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.otro_dispositivo (id, producto_id, tipo) FROM stdin;
3	11	movil
4	12	tablet
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.producto (id, nombre, precio, descripcion, imagen) FROM stdin;
3	producto03	401	Descripcion producto03	672b5a1bb6c82.png
4	producto04	345	Descripcion producto04 (nieves espabila)	672b5a2b32e6f.png
8	consola4	300	consola numero 45\r\n	672b5e64695ff.png
1	producto01	60	Descripcion producto018	672c75e813892.png
11	movil01	200	DescMovil1	6731c78678a97.png
12	movil02	123	DescMovil2	6731c7927f117.png
9	nieves	100	Carlos Es un topo y girat	672ca78c0368f.png
2	 nieves	40	Descripcion producto02	6731c81b85336.jpg
\.


--
-- Data for Name: reparacion; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.reparacion (id, usuario_id, fecha, descripcion) FROM stdin;
1	1	2024-11-06	Descripcion producto03
2	1	2024-11-06	Descripcion producto05
3	1	2024-11-06	Descripcion producto05
4	1	2024-11-06	Descripcion producto05
5	1	2024-11-06	Descripcion producto05
6	1	2024-11-06	Descripcion producto03
\.


--
-- Data for Name: ticket_alquiler; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.ticket_alquiler (id, alquiler_id, producto_id) FROM stdin;
1	2	1
2	3	1
3	3	1
4	4	2
5	5	2
6	6	2
7	6	2
8	7	1
9	8	9
\.


--
-- Data for Name: ticket_compra; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.ticket_compra (id, venta_id, producto_id) FROM stdin;
19	29	1
20	30	1
21	30	1
22	30	1
23	30	1
24	30	1
25	30	1
26	32	1
27	33	4
28	34	2
29	34	9
30	35	2
31	36	9
32	36	1
33	37	1
34	37	1
35	37	1
36	37	2
37	37	2
38	37	2
39	37	3
40	37	3
41	37	3
42	37	11
43	37	11
44	37	12
45	37	4
46	37	4
\.


--
-- Data for Name: ticket_reparacion; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.ticket_reparacion (id, reparacion_id, producto_id) FROM stdin;
1	2	1
2	6	3
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.usuario (id, nombre, apellido, username, contrasena, correo, imagen) FROM stdin;
11	dalinar	kholin	bondsmith	123	prueba01@gmail.com	\N
13	sergio2	a	1	123	a	\N
14	aa	aa	aa	aa	aa	\N
15	marini	a@a.com	peña	123	nieves	\N
16	nieves	nieves	nieves	nieves	nieves	\N
1	carlos	carlos	Carlos	Carlos	prueba@gmail.com	672c8f0622030.jpg
17	qw	qw	qw	qw	qw	\N
18	uu	uu	uu	uu	uu	\N
12	kaladin	kal	Stormblessed	123	prueba2@gmail.com	672c81bccabba.jpg
19	g	g	g	g	g	\N
20	po	po	po	po	po	\N
21	jose	jose	jose	jose	jose@gmail.com	672cac2c408b4.jpg
\.


--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.venta (id, usuario_id, fecha, precio) FROM stdin;
1	1	2011-11-11	\N
28	1	2024-11-06	\N
29	1	2024-11-06	\N
30	1	2024-11-06	\N
31	1	2003-11-12	160
32	1	2024-11-06	60
33	1	2024-11-06	345
34	12	2024-11-07	140
35	12	2024-11-07	40
36	1	2024-11-11	160
37	12	2024-11-11	2716
\.


--
-- Name: alquiler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.alquiler_id_seq', 8, true);


--
-- Name: consola_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.consola_id_seq', 4, true);


--
-- Name: juego_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.juego_id_seq', 4, true);


--
-- Name: otro_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.otro_dispositivo_id_seq', 4, true);


--
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.producto_id_seq', 12, true);


--
-- Name: reparacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.reparacion_id_seq', 6, true);


--
-- Name: ticket_alquiler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.ticket_alquiler_id_seq', 9, true);


--
-- Name: ticket_compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.ticket_compra_id_seq', 46, true);


--
-- Name: ticket_reparacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.ticket_reparacion_id_seq', 2, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.usuario_id_seq', 21, true);


--
-- Name: venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.venta_id_seq', 37, true);


--
-- Name: alquiler alquiler_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.alquiler
    ADD CONSTRAINT alquiler_pkey PRIMARY KEY (id);


--
-- Name: consola consola_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.consola
    ADD CONSTRAINT consola_pkey PRIMARY KEY (id);


--
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- Name: juego juego_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.juego
    ADD CONSTRAINT juego_pkey PRIMARY KEY (id);


--
-- Name: otro_dispositivo otro_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.otro_dispositivo
    ADD CONSTRAINT otro_dispositivo_pkey PRIMARY KEY (id);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- Name: reparacion reparacion_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.reparacion
    ADD CONSTRAINT reparacion_pkey PRIMARY KEY (id);


--
-- Name: ticket_alquiler ticket_alquiler_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_alquiler
    ADD CONSTRAINT ticket_alquiler_pkey PRIMARY KEY (id);


--
-- Name: ticket_compra ticket_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_compra
    ADD CONSTRAINT ticket_compra_pkey PRIMARY KEY (id);


--
-- Name: ticket_reparacion ticket_reparacion_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_reparacion
    ADD CONSTRAINT ticket_reparacion_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);


--
-- Name: idx_42114ebbdb38439e; Type: INDEX; Schema: public; Owner: symfony
--

CREATE INDEX idx_42114ebbdb38439e ON public.reparacion USING btree (usuario_id);


--
-- Name: idx_655bed39db38439e; Type: INDEX; Schema: public; Owner: symfony
--

CREATE INDEX idx_655bed39db38439e ON public.alquiler USING btree (usuario_id);


--
-- Name: idx_8fe7ee55db38439e; Type: INDEX; Schema: public; Owner: symfony
--

CREATE INDEX idx_8fe7ee55db38439e ON public.venta USING btree (usuario_id);


--
-- Name: uniq_316e0baf7645698e; Type: INDEX; Schema: public; Owner: symfony
--

CREATE UNIQUE INDEX uniq_316e0baf7645698e ON public.consola USING btree (producto_id);


--
-- Name: uniq_708534db7645698e; Type: INDEX; Schema: public; Owner: symfony
--

CREATE UNIQUE INDEX uniq_708534db7645698e ON public.otro_dispositivo USING btree (producto_id);


--
-- Name: uniq_f0ec403d7645698e; Type: INDEX; Schema: public; Owner: symfony
--

CREATE UNIQUE INDEX uniq_f0ec403d7645698e ON public.juego USING btree (producto_id);


--
-- Name: consola fk_316e0baf7645698e; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.consola
    ADD CONSTRAINT fk_316e0baf7645698e FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- Name: reparacion fk_42114ebbdb38439e; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.reparacion
    ADD CONSTRAINT fk_42114ebbdb38439e FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: alquiler fk_655bed39db38439e; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.alquiler
    ADD CONSTRAINT fk_655bed39db38439e FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: otro_dispositivo fk_708534db7645698e; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.otro_dispositivo
    ADD CONSTRAINT fk_708534db7645698e FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- Name: venta fk_8fe7ee55db38439e; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_8fe7ee55db38439e FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: juego fk_f0ec403d7645698e; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.juego
    ADD CONSTRAINT fk_f0ec403d7645698e FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- Name: ticket_alquiler ticket_alquiler_alquiler_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_alquiler
    ADD CONSTRAINT ticket_alquiler_alquiler_id_fkey FOREIGN KEY (alquiler_id) REFERENCES public.alquiler(id);


--
-- Name: ticket_alquiler ticket_alquiler_producto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_alquiler
    ADD CONSTRAINT ticket_alquiler_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- Name: ticket_compra ticket_compra_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_compra
    ADD CONSTRAINT ticket_compra_id_producto_fkey FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- Name: ticket_compra ticket_compra_id_venta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_compra
    ADD CONSTRAINT ticket_compra_id_venta_fkey FOREIGN KEY (venta_id) REFERENCES public.venta(id);


--
-- Name: ticket_reparacion ticket_reparacion_producto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_reparacion
    ADD CONSTRAINT ticket_reparacion_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- Name: ticket_reparacion ticket_reparacion_reparacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: symfony
--

ALTER TABLE ONLY public.ticket_reparacion
    ADD CONSTRAINT ticket_reparacion_reparacion_id_fkey FOREIGN KEY (reparacion_id) REFERENCES public.reparacion(id);


--
-- PostgreSQL database dump complete
--

