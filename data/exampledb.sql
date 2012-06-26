--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: drsnyder
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO drsnyder;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: p; Type: TABLE; Schema: public; Owner: drsnyder; Tablespace: 
--

CREATE TABLE p (
    pno integer,
    pname text,
    color text,
    weight numeric,
    city text
);


ALTER TABLE public.p OWNER TO drsnyder;

--
-- Name: s; Type: TABLE; Schema: public; Owner: drsnyder; Tablespace: 
--

CREATE TABLE s (
    sno integer,
    sname text,
    status integer,
    city text
);


ALTER TABLE public.s OWNER TO drsnyder;

--
-- Name: sp; Type: TABLE; Schema: public; Owner: drsnyder; Tablespace: 
--

CREATE TABLE sp (
    sno integer,
    pno integer,
    qty integer
);


ALTER TABLE public.sp OWNER TO drsnyder;

--
-- Data for Name: p; Type: TABLE DATA; Schema: public; Owner: drsnyder
--

COPY p (pno, pname, color, weight, city) FROM stdin;
1	Nut	Red	12.0	London
2	Bolt	Green	17.0	Paris
3	Screw	Blue	17.0	Oslo
4	Screw	Red	14.0	London
5	Cam	Blue	12.0	Paris
6	Cog	Red	19.0	London
\.


--
-- Data for Name: s; Type: TABLE DATA; Schema: public; Owner: drsnyder
--

COPY s (sno, sname, status, city) FROM stdin;
1	Smith	20	London
3	Blake	30	Paris
4	Clark	20	London
5	Adams	30	Athens
2	Jones	10	Paris
\.


--
-- Data for Name: sp; Type: TABLE DATA; Schema: public; Owner: drsnyder
--

COPY sp (sno, pno, qty) FROM stdin;
1	1	300
1	2	200
1	3	400
1	4	200
1	5	100
1	6	100
2	1	300
2	2	400
3	2	200
4	2	200
4	4	300
4	5	400
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: nobody
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM nobody;
GRANT ALL ON SCHEMA public TO nobody;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

