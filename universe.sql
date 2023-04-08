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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(3,2),
    description text,
    galaxy_types integer,
    identifier character varying(5)
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
    has_life boolean,
    age_in_millions_of_years numeric(3,2),
    description text,
    planet_id integer NOT NULL,
    identifier character varying(5)
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
    has_life boolean,
    age_in_millions_of_years numeric(3,2),
    description text,
    planet_types integer,
    number_of_moons integer,
    star_id integer NOT NULL,
    identifier character varying(5)
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(3,2),
    description text,
    galaxy_id integer NOT NULL,
    identifier character varying(5)
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    parallel boolean NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxia_1', 1.10, 'aaa', 1, 'g1');
INSERT INTO public.galaxy VALUES (2, 'galaxia_2', 2.20, 'bbb', 2, 'g2');
INSERT INTO public.galaxy VALUES (3, 'galaxia_3', 3.30, 'ccc', 3, 'g3');
INSERT INTO public.galaxy VALUES (4, 'galaxia_4', 4.40, 'ddd', 4, 'g4');
INSERT INTO public.galaxy VALUES (5, 'galaxia_5', 5.50, 'eee', 5, 'g5');
INSERT INTO public.galaxy VALUES (6, 'galaxia_6', 6.60, 'fff', 6, 'g6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna_1', false, 0.10, 'aaa', 1, 'm1');
INSERT INTO public.moon VALUES (2, 'luna_2', false, 0.10, 'aaa', 1, 'm2');
INSERT INTO public.moon VALUES (3, 'luna_3', false, 0.10, 'aaa', 2, 'm3');
INSERT INTO public.moon VALUES (4, 'luna_4', false, 0.10, 'aaa', 2, 'm4');
INSERT INTO public.moon VALUES (5, 'luna_5', false, 1.10, 'bbb', 3, 'm5');
INSERT INTO public.moon VALUES (6, 'luna_6', false, 1.10, 'bbb', 3, 'm6');
INSERT INTO public.moon VALUES (7, 'luna_7', false, 1.10, 'bbb', 4, 'm7');
INSERT INTO public.moon VALUES (8, 'luna_8', false, 1.10, 'bbb', 4, 'm8');
INSERT INTO public.moon VALUES (9, 'luna_9', false, 2.10, 'ccc', 5, 'm9');
INSERT INTO public.moon VALUES (10, 'luna_10', false, 2.10, 'ccc', 5, 'm10');
INSERT INTO public.moon VALUES (11, 'luna_11', false, 2.10, 'ccc', 6, 'm11');
INSERT INTO public.moon VALUES (12, 'luna_12', false, 2.10, 'ccc', 6, 'm12');
INSERT INTO public.moon VALUES (13, 'luna_13', false, 3.10, 'ddd', 7, 'm13');
INSERT INTO public.moon VALUES (14, 'luna_14', false, 3.10, 'ddd', 7, 'm14');
INSERT INTO public.moon VALUES (15, 'luna_15', false, 3.10, 'ddd', 8, 'm15');
INSERT INTO public.moon VALUES (16, 'luna_16', false, 3.10, 'ddd', 8, 'm16');
INSERT INTO public.moon VALUES (17, 'luna_17', false, 4.10, 'eee', 9, 'm17');
INSERT INTO public.moon VALUES (18, 'luna_18', false, 4.10, 'eee', 9, 'm18');
INSERT INTO public.moon VALUES (19, 'luna_19', false, 4.10, 'eee', 10, 'm19');
INSERT INTO public.moon VALUES (20, 'luna_20', false, 4.10, 'eee', 10, 'm20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planeta_1', true, 0.10, 'aaa', 1, 2, 1, 'p1');
INSERT INTO public.planet VALUES (2, 'planeta_2', true, 0.10, 'aaa', 1, 2, 1, 'p2');
INSERT INTO public.planet VALUES (3, 'planeta_3', true, 1.10, 'bbb', 1, 2, 2, 'p3');
INSERT INTO public.planet VALUES (4, 'planeta_4', true, 1.10, 'bbb', 1, 2, 2, 'p4');
INSERT INTO public.planet VALUES (5, 'planeta_5', true, 2.10, 'ccc', 1, 2, 3, 'p5');
INSERT INTO public.planet VALUES (6, 'planeta_6', true, 2.10, 'ccc', 1, 2, 3, 'p6');
INSERT INTO public.planet VALUES (7, 'planeta_7', true, 3.10, 'ddd', 1, 2, 4, 'p7');
INSERT INTO public.planet VALUES (8, 'planeta_8', true, 3.10, 'ddd', 1, 2, 4, 'p8');
INSERT INTO public.planet VALUES (9, 'planeta_9', true, 4.10, 'eee', 1, 2, 5, 'p9');
INSERT INTO public.planet VALUES (10, 'planeta_10', true, 4.10, 'eee', 1, 2, 5, 'p10');
INSERT INTO public.planet VALUES (11, 'planeta_11', true, 5.10, 'fff', 1, 2, 6, 'p11');
INSERT INTO public.planet VALUES (12, 'planeta_12', true, 5.10, 'fff', 1, 2, 6, 'p12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'estrella_1', 1.10, 'aaa', 1, 's1');
INSERT INTO public.star VALUES (2, 'estrella_2', 2.20, 'bbb', 2, 's2');
INSERT INTO public.star VALUES (3, 'estrella_3', 3.30, 'ccc', 3, 's3');
INSERT INTO public.star VALUES (4, 'estrella_4', 4.40, 'ddd', 4, 's4');
INSERT INTO public.star VALUES (5, 'estrella_5', 5.50, 'eee', 5, 's5');
INSERT INTO public.star VALUES (6, 'estrella_6', 6.60, 'fff', 6, 's6');


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'universo_1', false);
INSERT INTO public.universe VALUES (2, 'universo_2', true);
INSERT INTO public.universe VALUES (3, 'universo_3', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_identifier_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_identifier_key UNIQUE (identifier);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_identifier_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_identifier_key UNIQUE (identifier);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_identifier_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_identifier_key UNIQUE (identifier);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_identifier_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_identifier_key UNIQUE (identifier);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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

