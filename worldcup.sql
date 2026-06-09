--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(50) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (179, 2018, 145, 146, 4, 2, 'Final');
INSERT INTO public.games VALUES (180, 2018, 147, 148, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (181, 2018, 146, 148, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (182, 2018, 145, 147, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (183, 2018, 146, 149, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (184, 2018, 148, 150, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (185, 2018, 147, 151, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (186, 2018, 145, 152, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (187, 2018, 148, 153, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (188, 2018, 150, 154, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (189, 2018, 147, 155, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (190, 2018, 151, 156, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (191, 2018, 146, 157, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (192, 2018, 149, 158, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (193, 2018, 152, 159, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (194, 2018, 145, 160, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (195, 2014, 161, 160, 1, 0, 'Final');
INSERT INTO public.games VALUES (196, 2014, 162, 151, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (197, 2014, 160, 162, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (198, 2014, 161, 151, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (199, 2014, 162, 163, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (200, 2014, 160, 147, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (201, 2014, 151, 153, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (202, 2014, 161, 145, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (203, 2014, 151, 164, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (204, 2014, 153, 152, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (205, 2014, 145, 165, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (206, 2014, 161, 166, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (207, 2014, 162, 156, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (208, 2014, 163, 167, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (209, 2014, 160, 154, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (210, 2014, 147, 168, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (145, 'France');
INSERT INTO public.teams VALUES (146, 'Croatia');
INSERT INTO public.teams VALUES (147, 'Belgium');
INSERT INTO public.teams VALUES (148, 'England');
INSERT INTO public.teams VALUES (149, 'Russia');
INSERT INTO public.teams VALUES (150, 'Sweden');
INSERT INTO public.teams VALUES (151, 'Brazil');
INSERT INTO public.teams VALUES (152, 'Uruguay');
INSERT INTO public.teams VALUES (153, 'Colombia');
INSERT INTO public.teams VALUES (154, 'Switzerland');
INSERT INTO public.teams VALUES (155, 'Japan');
INSERT INTO public.teams VALUES (156, 'Mexico');
INSERT INTO public.teams VALUES (157, 'Denmark');
INSERT INTO public.teams VALUES (158, 'Spain');
INSERT INTO public.teams VALUES (159, 'Portugal');
INSERT INTO public.teams VALUES (160, 'Argentina');
INSERT INTO public.teams VALUES (161, 'Germany');
INSERT INTO public.teams VALUES (162, 'Netherlands');
INSERT INTO public.teams VALUES (163, 'Costa Rica');
INSERT INTO public.teams VALUES (164, 'Chile');
INSERT INTO public.teams VALUES (165, 'Nigeria');
INSERT INTO public.teams VALUES (166, 'Algeria');
INSERT INTO public.teams VALUES (167, 'Greece');
INSERT INTO public.teams VALUES (168, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 210, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 168, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

