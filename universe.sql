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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(30),
    is_real boolean,
    distance integer NOT NULL,
    shape text
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_type text NOT NULL,
    distance integer,
    width integer,
    age numeric(4,1),
    name character varying(30)
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
    has_life boolean,
    is_spherical boolean,
    distance integer NOT NULL,
    mass numeric(4,1),
    planet_id integer,
    name character varying(30)
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
    planet_type text,
    distance integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    mass numeric(4,1),
    star_id integer,
    name character varying(30)
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
    star_type text NOT NULL,
    distance integer,
    age integer,
    mass numeric(4,1),
    has_planets boolean,
    galaxy_id integer,
    name character varying(30)
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
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


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
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'What', NULL, 1020, 'square');
INSERT INTO public.fifth VALUES (2, 'Is', NULL, 111, 'circle');
INSERT INTO public.fifth VALUES (3, 'This?', NULL, 555, 'triangle');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'helix', NULL, 1, 400.0, 'andromeda');
INSERT INTO public.galaxy VALUES (2, 'circle', NULL, 11, 21.0, 'milky way');
INSERT INTO public.galaxy VALUES (3, 'oval', NULL, 312, 522.0, 'black eye galaxy');
INSERT INTO public.galaxy VALUES (4, 'pinwheel', NULL, 11421, 10.5, 'pinwheel');
INSERT INTO public.galaxy VALUES (5, 'wheel', NULL, 121, 600.0, 'triangulum');
INSERT INTO public.galaxy VALUES (6, 'hat', NULL, 3124, 505.0, 'sombrero');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (22, false, true, 384400, NULL, 2, 'moon');
INSERT INTO public.moon VALUES (23, false, true, 48, NULL, 3, 'Phobos');
INSERT INTO public.moon VALUES (24, false, false, 48, NULL, 3, 'Deimos');
INSERT INTO public.moon VALUES (25, false, true, 390, NULL, 4, 'Io');
INSERT INTO public.moon VALUES (26, false, true, 390, NULL, 4, 'Europa');
INSERT INTO public.moon VALUES (27, false, true, 390, NULL, 4, 'Callisto');
INSERT INTO public.moon VALUES (28, true, true, 390, NULL, 4, 'Ganymede');
INSERT INTO public.moon VALUES (29, false, true, 746, NULL, 5, 'Titan');
INSERT INTO public.moon VALUES (30, false, true, 746, NULL, 5, 'Dione');
INSERT INTO public.moon VALUES (31, false, false, 746, NULL, 5, 'Enceladus');
INSERT INTO public.moon VALUES (32, true, true, 746, NULL, 5, 'Epimetheus');
INSERT INTO public.moon VALUES (33, false, true, 746, NULL, 5, 'Prometheus');
INSERT INTO public.moon VALUES (34, false, true, 746, NULL, 5, 'Mimas');
INSERT INTO public.moon VALUES (35, false, true, 746, NULL, 5, 'Rhea');
INSERT INTO public.moon VALUES (36, false, true, 746, NULL, 5, 'Janus');
INSERT INTO public.moon VALUES (37, true, true, 1692, NULL, 6, 'Titania');
INSERT INTO public.moon VALUES (38, false, true, 1692, NULL, 6, 'Oberon');
INSERT INTO public.moon VALUES (39, false, true, 2696, NULL, 7, 'Triton');
INSERT INTO public.moon VALUES (40, true, true, 12200, NULL, 8, 'Charon');
INSERT INTO public.moon VALUES (41, false, true, 12200, NULL, 8, 'Nix');
INSERT INTO public.moon VALUES (42, false, true, 12200, NULL, 8, 'Hydra');
INSERT INTO public.moon VALUES (43, false, true, 12200, NULL, 8, 'Kerberos');
INSERT INTO public.moon VALUES (44, false, true, 12200, NULL, 8, 'Styx');
INSERT INTO public.moon VALUES (45, true, true, 790, NULL, 5, 'Tethys');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 121, NULL, NULL, 330.1, 3, 'mercury');
INSERT INTO public.planet VALUES (2, NULL, 41, NULL, NULL, 486.8, 3, 'venus');
INSERT INTO public.planet VALUES (3, NULL, 55, NULL, NULL, 641.7, 3, 'mars');
INSERT INTO public.planet VALUES (4, NULL, 491, NULL, NULL, 189.8, 3, 'jupiter');
INSERT INTO public.planet VALUES (5, NULL, 846, NULL, NULL, 568.4, 3, 'saturn');
INSERT INTO public.planet VALUES (6, NULL, 1879, NULL, NULL, 568.4, 3, 'uranus');
INSERT INTO public.planet VALUES (7, NULL, 2748, NULL, NULL, 577.4, 3, 'neptune');
INSERT INTO public.planet VALUES (8, NULL, 3143, NULL, NULL, 2.1, 4, 'pluto');
INSERT INTO public.planet VALUES (9, NULL, 12, NULL, NULL, 1.1, 7, 'Teegarden Star b');
INSERT INTO public.planet VALUES (10, NULL, 40, NULL, NULL, 692.0, 7, 'Trappist-1e');
INSERT INTO public.planet VALUES (11, NULL, 30, NULL, NULL, 0.5, 5, 'Gliese 433');
INSERT INTO public.planet VALUES (12, NULL, 35, NULL, NULL, 0.3, 2, 'L 98-59');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'red', NULL, NULL, NULL, true, 1, 'mayall II');
INSERT INTO public.star VALUES (2, 'green', NULL, NULL, NULL, false, 1, '037-B327');
INSERT INTO public.star VALUES (3, 'yellow', NULL, NULL, NULL, true, 2, 'sun');
INSERT INTO public.star VALUES (4, 'black hole', NULL, NULL, NULL, false, 3, 'Sagittarius A*');
INSERT INTO public.star VALUES (5, 'big', NULL, NULL, NULL, false, 3, 'Antares');
INSERT INTO public.star VALUES (6, 'bright', NULL, NULL, NULL, false, 4, 'VY Canis Majoris');
INSERT INTO public.star VALUES (7, 'loud', NULL, NULL, NULL, false, 4, 'Sirius');


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 45, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: fifth fifth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_name_key UNIQUE (name);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: fifth fifth_shape_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_shape_key UNIQUE (shape);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

