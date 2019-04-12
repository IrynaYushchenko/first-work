--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

-- Started on 2019-04-12 18:12:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2827 (class 1262 OID 16397)
-- Name: library; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';


ALTER DATABASE library OWNER TO postgres;

\connect library

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16418)
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author (
    author_id integer NOT NULL,
    name character varying,
    born_in integer,
    died_in integer,
    citizenship character varying
);


ALTER TABLE public.author OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16398)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    book_id integer NOT NULL,
    author_id character varying,
    title character varying,
    genre character varying,
    pages_number integer,
    publishing_year integer,
    publishing_name character varying,
    enter_date date
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16404)
-- Name: publishing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publishing (
    name character varying,
    address character varying,
    contact_person character varying,
    publishing_id integer
);


ALTER TABLE public.publishing OWNER TO postgres;

--
-- TOC entry 2821 (class 0 OID 16418)
-- Dependencies: 198
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.author VALUES (1, 'Ervin Mozer', 1954, 2017, 'Austria');
INSERT INTO public.author VALUES (2, 'Ulrir Maske', 1950, NULL, 'Germany');
INSERT INTO public.author VALUES (3, 'Rob Skotton', 1960, NULL, 'England');


--
-- TOC entry 2819 (class 0 OID 16398)
-- Dependencies: 196
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book VALUES (1, '1', 'Manuel', 'fairy tail', 180, 2015, 'Old lion', '2017-03-06');
INSERT INTO public.book VALUES (2, '1', 'Didi', 'fairy tail', 200, 2016, 'Old lion', '2018-02-05');
INSERT INTO public.book VALUES (3, '2', 'Rabbit', 'fairy tail', 160, 2016, 'Vivat', '2016-04-13');
INSERT INTO public.book VALUES (4, '3', 'Splet', 'fairy tail', 172, 2015, 'ababahalamaha', '2016-11-15');
INSERT INTO public.book VALUES (5, '3', 'Thankfull Splet', 'fairy tail', 140, 2017, 'ababahalamaha', '2018-01-24');
INSERT INTO public.book VALUES (6, '3', 'Harry Potter', 'fairy tail', 666, 2013, 'Vivat', '2018-12-12');


--
-- TOC entry 2820 (class 0 OID 16404)
-- Dependencies: 197
-- Data for Name: publishing; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publishing VALUES ('Old lion', 'Ukraine, Kharkiv, Morozova 13b', 'Bobul V.V.', 1);
INSERT INTO public.publishing VALUES ('Vivat', 'Ukraine, Kharkiv, Saratovska 10', 'Yurchuk O.I.', 2);
INSERT INTO public.publishing VALUES ('Ababahalamaha', 'Ukraine, Kiev, Baseina 1', 'Malkovych K.I.', 3);


--
-- TOC entry 2697 (class 2606 OID 16425)
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);


--
-- TOC entry 2695 (class 2606 OID 16411)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);


-- Completed on 2019-04-12 18:12:19

--
-- PostgreSQL database dump complete
--

