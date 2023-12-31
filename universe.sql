--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: discovery; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discovery (
    discovery_id integer NOT NULL,
    name character varying(30) NOT NULL,
    date date,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.discovery OWNER TO freecodecamp;

--
-- Name: discovery_discover_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discovery_discover_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discovery_discover_id_seq OWNER TO freecodecamp;

--
-- Name: discovery_discover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discovery_discover_id_seq OWNED BY public.discovery.discovery_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origin text,
    constellation character varying(30),
    notes text
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
    planet_id integer,
    radius_km integer,
    is_spherical boolean
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
    star_id integer,
    distance_from_sun_km numeric,
    has_life boolean
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
    mass_solar integer,
    distance_ly integer
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
-- Name: discovery discovery_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery ALTER COLUMN discovery_id SET DEFAULT nextval('public.discovery_discover_id_seq'::regclass);


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
-- Data for Name: discovery; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discovery VALUES (4, 'Robert Innes', '1915-10-12', NULL, 2, NULL, NULL);
INSERT INTO public.discovery VALUES (5, 'Galileo Galilei', '1610-01-08', NULL, NULL, NULL, 4);
INSERT INTO public.discovery VALUES (6, 'Galileo Galilei', '1610-01-08', NULL, NULL, NULL, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Comet', 'This galaxy is named after its unusual appearance, looking like a comet.', NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The appearance from Earth of the galaxy—a band of light', 'Sagittarius', 'The galaxy containing the Sun and its Solar System, and therefore Earth.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'Andromeda', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.');
INSERT INTO public.galaxy VALUES (5, 'Antennae Galaxies', 'Appearance is similar to an insect''s antennae.', 'Corvus', 'Two colliding galaxies');
INSERT INTO public.galaxy VALUES (6, 'Bode''s Galaxy', 'Named for Johann Elert Bode who discovered this galaxy in 1774.', 'Ursa Major', 'Also known as Messier 81. The largest galaxy in the M81 Group. It harbors a supermassive black hole 70 million times the mass of the Sun.');
INSERT INTO public.galaxy VALUES (7, 'Eye of God', 'Name after its structural appearance', 'Eridanus', 'A prototype for multi-arm spiral galaxies');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 1738, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 6, false);
INSERT INTO public.moon VALUES (4, 'Io', 37, 1822, true);
INSERT INTO public.moon VALUES (5, 'Europa', 37, 1561, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 37, 2634, true);
INSERT INTO public.moon VALUES (7, 'Mimas', 38, 198, true);
INSERT INTO public.moon VALUES (8, 'Enceladus', 38, 252, true);
INSERT INTO public.moon VALUES (9, 'Tethys', 38, 533, true);
INSERT INTO public.moon VALUES (10, 'Ariel', 39, 579, true);
INSERT INTO public.moon VALUES (11, 'Umbriel', 39, 585, true);
INSERT INTO public.moon VALUES (12, 'Titania', 39, 789, true);
INSERT INTO public.moon VALUES (13, 'Triton', 40, 1353, true);
INSERT INTO public.moon VALUES (14, 'Proteus', 40, 210, false);
INSERT INTO public.moon VALUES (15, 'Charon', 42, 606, true);
INSERT INTO public.moon VALUES (16, 'Nix', 42, 23, false);
INSERT INTO public.moon VALUES (17, 'Callisto', 37, 2410, true);
INSERT INTO public.moon VALUES (18, 'Amalthea', 37, 84, false);
INSERT INTO public.moon VALUES (19, 'Dione', 38, 561, true);
INSERT INTO public.moon VALUES (20, 'Rhea', 38, 764, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 1, 108208930, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 149597890, true);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, 57909175, false);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 227936640, false);
INSERT INTO public.planet VALUES (38, 'Saturn', 1, 1426725400, false);
INSERT INTO public.planet VALUES (37, 'Jupiter', 1, 778412010, false);
INSERT INTO public.planet VALUES (39, 'Uranus', 1, 2870972200, false);
INSERT INTO public.planet VALUES (40, 'Neptune', 1, 4498252900, false);
INSERT INTO public.planet VALUES (41, 'Ceres', 1, 413700000, false);
INSERT INTO public.planet VALUES (42, 'Pluto', 1, 5906380000, false);
INSERT INTO public.planet VALUES (43, 'Haumea', 1, 6484000000, false);
INSERT INTO public.planet VALUES (44, 'Makemake', 1, 6850000000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 0);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 0, 4);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 1, 1, 4);
INSERT INTO public.star VALUES (4, 'Barnard''s Star', 1, 0, 6);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 2, 9);
INSERT INTO public.star VALUES (6, 'Ran', 1, 1, 10);


--
-- Name: discovery_discover_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discovery_discover_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 44, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: discovery discovery_galaxy_id_star_id_planet_id_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_galaxy_id_star_id_planet_id_moon_id_key UNIQUE (galaxy_id, star_id, planet_id, moon_id);


--
-- Name: discovery discovery_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_pkey PRIMARY KEY (discovery_id);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: discovery discovery_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: discovery discovery_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: discovery discovery_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: discovery discovery_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovery
    ADD CONSTRAINT discovery_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_start_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_start_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

