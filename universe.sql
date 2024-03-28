--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: civilizations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilizations (
    name character varying(30) NOT NULL,
    planet_id integer,
    population integer,
    civilizations_id integer NOT NULL
);


ALTER TABLE public.civilizations OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    alt_name text,
    massive_bh boolean,
    color character varying(30),
    diameter integer
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
    period integer,
    planet_id integer,
    diameter integer,
    weight integer
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
    circumfrence integer,
    period numeric(4,1),
    habitable boolean,
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    temp integer,
    diameter integer
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
-- Data for Name: civilizations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilizations VALUES ('civ1', 1, 10, 1);
INSERT INTO public.civilizations VALUES ('civ2', 2, 20, 2);
INSERT INTO public.civilizations VALUES ('civ3', 3, 30, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'uno', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'dos', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'tres', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'quatro', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'cinco', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'sies', false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'm2', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'm3', 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'm4', 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'm5', 1, 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'm6', 1, 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'm7', 1, 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'm8', 1, 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'm9', 1, 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'm10', 1, 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'm11', 1, 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'm12', 1, 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm13', 1, 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'm14', 1, 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'm15', 1, 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'm16', 1, 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'm17', 1, 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'm18', 1, 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'm19', 1, 10, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'm20', 1, 10, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 1, 1.0, true, 1);
INSERT INTO public.planet VALUES (2, 'p2', 1, 1.0, true, 1);
INSERT INTO public.planet VALUES (3, 'p3', 1, 1.0, true, 2);
INSERT INTO public.planet VALUES (4, 'p4', 1, 1.0, true, 2);
INSERT INTO public.planet VALUES (5, 'p5', 1, 1.0, true, 3);
INSERT INTO public.planet VALUES (6, 'p6', 1, 1.0, true, 3);
INSERT INTO public.planet VALUES (7, 'p7', 1, 1.0, true, 4);
INSERT INTO public.planet VALUES (8, 'p8', 1, 1.0, true, 4);
INSERT INTO public.planet VALUES (9, 'p9', 1, 1.0, true, 5);
INSERT INTO public.planet VALUES (10, 'p10', 1, 1.0, true, 5);
INSERT INTO public.planet VALUES (11, 'p11', 1, 1.0, true, 6);
INSERT INTO public.planet VALUES (12, 'p12', 1, 1.0, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 6, NULL, NULL);


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
-- Name: civilizations civilizations_civilizations_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilizations
    ADD CONSTRAINT civilizations_civilizations_id_key UNIQUE (civilizations_id);


--
-- Name: civilizations civilizations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilizations
    ADD CONSTRAINT civilizations_pkey PRIMARY KEY (civilizations_id);


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
-- Name: civilizations civilizations_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilizations
    ADD CONSTRAINT civilizations_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

