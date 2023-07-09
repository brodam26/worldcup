--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(30),
    is_real boolean,
    distance integer NOT NULL,
    shape text
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text NOT NULL,
    description text NOT NULL,
    distance_from_earth integer NOT NULL,
    x_coord integer NOT NULL,
    y_coord integer NOT NULL,
    z_coord integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    x_coord integer NOT NULL,
    y_coord integer NOT NULL,
    z_coord integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer NOT NULL,
    mass numeric(4,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    x_coord integer NOT NULL,
    y_coord integer NOT NULL,
    z_coord integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_type text,
    distance_from_earth integer NOT NULL,
    mass numeric(4,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    x_coord integer NOT NULL,
    y_coord integer NOT NULL,
    z_coord integer NOT NULL,
    has_planets boolean,
    mass numeric(4,1) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'What', NULL, 1020, 'square');
INSERT INTO public.fifth_table VALUES (2, 'Is', NULL, 111, 'circle');
INSERT INTO public.fifth_table VALUES (3, 'This?', NULL, 555, 'triangle');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'andromeda', 'helix', 'spiral', 400, 1, 1, 1);
INSERT INTO public.galaxy VALUES (3, 'milky way', 'circle', 'swirl', 0, 21, 11, 31);
INSERT INTO public.galaxy VALUES (4, 'black eye galaxy', 'oval', 'oval', 52962, 1121, 3114, 4531);
INSERT INTO public.galaxy VALUES (5, 'pinwheel', 'pinwheel', 'pinwheel', 105700, 11421, 32114, 45531);
INSERT INTO public.galaxy VALUES (6, 'triangulum', 'wheel', 'swirl', 60000, 121, 314, 451);
INSERT INTO public.galaxy VALUES (7, 'sombrero', 'hat', 'circle', 50000, 1214, 3124, 4591);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 362600, 405400, 384399, NULL, NULL, 384400, NULL, 2);
INSERT INTO public.moon VALUES (2, 'Phobos', 9234, 9517, 9376, NULL, NULL, 48, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 23455, 23470, 23463, NULL, NULL, 48, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Io', 420000, 423400, 421700, NULL, NULL, 390, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 664862, 676938, 670900, NULL, NULL, 390, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 1869000, 1897000, 1882700, NULL, NULL, 390, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Ganymede', 1069200, 1071600, 1070400, NULL, NULL, 390, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Titan', 1186680, 1257060, 1221870, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Dione', 3774, 273691, 111288, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Enceladus', 51325, 252102, 1080318, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Epimetheus', 151410, 69433345, 12961162, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Prometheus', 139380, 612990, 137081, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Mimas', 181902, 189176, 185539, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Rhea', 527108, 12583, 4518212, NULL, NULL, 476, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Janus', 151460, 680, 694660, NULL, NULL, 746, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Titania', 435910, 8706234, 788406, NULL, NULL, 1692, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Oberon', 583520, 1346323, 761426, NULL, NULL, 1692, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Triton', 354759, 5876854, 129812, NULL, NULL, 2696, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Charon', 19587, 19595, 19591, NULL, NULL, 12200, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Nix', 48694, 2036, 248546, NULL, NULL, 12200, NULL, 8);
INSERT INTO public.moon VALUES (21, 'Hydra', 64738, 5862, 382017, NULL, NULL, 12200, NULL, 8);
INSERT INTO public.moon VALUES (22, 'Kerberos', 57783, 328, 3216756, NULL, NULL, 12200, NULL, 8);
INSERT INTO public.moon VALUES (23, 'Styx', 42656, 5787, 201615, NULL, NULL, 12200, NULL, 8);
INSERT INTO public.moon VALUES (24, 'Tethys', 294619, 1887802, 10768, NULL, NULL, 790, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 69816900, 46001200, 57909050, false, true, NULL, 121, 330.1, 4);
INSERT INTO public.planet VALUES (2, 'Venus', 108939000, 107477000, 108208000, false, true, NULL, 41, 486.8, 4);
INSERT INTO public.planet VALUES (3, 'Mars', 249261000, 206650000, 227939366, true, true, NULL, 55, 641.7, 4);
INSERT INTO public.planet VALUES (4, 'Jupiter', 816363, 740595, 778479, false, true, NULL, 491, 189.8, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 151450, 135255, 143353, false, true, NULL, 846, 568.4, 4);
INSERT INTO public.planet VALUES (6, 'Uranus', 200965, 182861, 1919126, false, true, NULL, 1879, 145.4, 4);
INSERT INTO public.planet VALUES (7, 'Neptune', 3033, 2981, 3007, false, true, NULL, 2748, 577.4, 4);
INSERT INTO public.planet VALUES (8, 'Pluto', 49305, 29658, 39482, false, true, NULL, 3143, 2.1, 4);
INSERT INTO public.planet VALUES (10, 'Teegarden Star b', 252, 16, 491, true, true, NULL, 12, 1.1, 7);
INSERT INTO public.planet VALUES (11, 'Trappist-1e', 2925, 510, 6101013, true, true, NULL, 40, 692.0, 7);
INSERT INTO public.planet VALUES (12, 'Gliese 433', 11352694, -323223842, 981, false, true, NULL, 30, 0.5, 9);
INSERT INTO public.planet VALUES (13, 'L 98-59', 81807, -681846, 1169, false, true, NULL, 35, 0.3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Mayall II', 12, 324651, 3934397, 252, true, 2.0, 2);
INSERT INTO public.star VALUES (3, '037-B327', 4, 32451, 934397, 52, false, 4.0, 2);
INSERT INTO public.star VALUES (4, 'sun', 4567, 28613, 63876352, 252334, true, 1.0, 3);
INSERT INTO public.star VALUES (6, 'Sagittarius A*', 2017, 174540, -29028, 2667342, false, 415.4, 3);
INSERT INTO public.star VALUES (7, 'Antares', 15, 162924, -262555, 550, false, 14.3, 3);
INSERT INTO public.star VALUES (8, 'VY Canis Majoris', 8, 72258, -254603, 3820, false, 17.8, 3);
INSERT INTO public.star VALUES (9, 'Sirius', 242, 64508, -164258, 8709, false, 2.1, 3);


--
-- Name: fifth_table_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: fifth_table fifth_table_shape_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_shape_key UNIQUE (shape);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uc_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uc_galaxy UNIQUE (x_coord, y_coord, z_coord);


--
-- Name: moon uc_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uc_moon UNIQUE (x_coord, y_coord, z_coord);


--
-- Name: planet uc_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uc_planet UNIQUE (x_coord, y_coord, z_coord);


--
-- Name: star uc_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uc_star UNIQUE (x_coord, y_coord, z_coord);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

