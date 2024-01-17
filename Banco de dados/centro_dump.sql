--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: tb_aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_aluno (
    id_aluno integer NOT NULL,
    nm_aluno character varying(255) NOT NULL,
    cd_cpf character(11) NOT NULL,
    ds_inst character varying(255) NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.tb_aluno OWNER TO postgres;

--
-- Name: tb_aluno_id_aluno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_aluno_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_aluno_id_aluno_seq OWNER TO postgres;

--
-- Name: tb_aluno_id_aluno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_aluno_id_aluno_seq OWNED BY public.tb_aluno.id_aluno;


--
-- Name: tb_avaliacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_avaliacao (
    id_avaliacao integer NOT NULL,
    dt_avaliacao date NOT NULL,
    id_turma integer NOT NULL
);


ALTER TABLE public.tb_avaliacao OWNER TO postgres;

--
-- Name: tb_avaliacao_id_avaliacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_avaliacao_id_avaliacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_avaliacao_id_avaliacao_seq OWNER TO postgres;

--
-- Name: tb_avaliacao_id_avaliacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avaliacao_id_avaliacao_seq OWNED BY public.tb_avaliacao.id_avaliacao;


--
-- Name: tb_curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_curso (
    id_curso integer NOT NULL,
    nm_curso character varying(45) NOT NULL,
    qt_vagas integer NOT NULL,
    qt_duracao numeric NOT NULL
);


ALTER TABLE public.tb_curso OWNER TO postgres;

--
-- Name: tb_curso_id_curso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_curso_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_curso_id_curso_seq OWNER TO postgres;

--
-- Name: tb_curso_id_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_curso_id_curso_seq OWNED BY public.tb_curso.id_curso;


--
-- Name: tb_evento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_evento (
    id_evento integer NOT NULL,
    nm_evento character varying(255) NOT NULL,
    im_evento bytea NOT NULL,
    ds_evento text NOT NULL,
    dt_inicio date NOT NULL,
    dt_fim date NOT NULL,
    id_mural integer NOT NULL
);


ALTER TABLE public.tb_evento OWNER TO postgres;

--
-- Name: tb_evento_id_evento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_evento_id_evento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_evento_id_evento_seq OWNER TO postgres;

--
-- Name: tb_evento_id_evento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_evento_id_evento_seq OWNED BY public.tb_evento.id_evento;


--
-- Name: tb_inscricao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_inscricao (
    id_inscricao integer NOT NULL,
    nm_participante character varying(255) NOT NULL,
    nm_curso character varying(255) NOT NULL,
    cd_ciclo character(1) NOT NULL,
    cd_celular character(11),
    ds_email character varying(255),
    id_evento integer NOT NULL
);


ALTER TABLE public.tb_inscricao OWNER TO postgres;

--
-- Name: tb_inscricao_id_inscricao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_inscricao_id_inscricao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_inscricao_id_inscricao_seq OWNER TO postgres;

--
-- Name: tb_inscricao_id_inscricao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_inscricao_id_inscricao_seq OWNED BY public.tb_inscricao.id_inscricao;


--
-- Name: tb_matricula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_matricula (
    id_matricula integer NOT NULL,
    id_aluno integer NOT NULL,
    id_curso integer NOT NULL
);


ALTER TABLE public.tb_matricula OWNER TO postgres;

--
-- Name: tb_matricula_id_matricula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_matricula_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_matricula_id_matricula_seq OWNER TO postgres;

--
-- Name: tb_matricula_id_matricula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_matricula_id_matricula_seq OWNED BY public.tb_matricula.id_matricula;


--
-- Name: tb_mural; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_mural (
    id_mural integer NOT NULL,
    qt_postagem integer NOT NULL,
    qt_evento integer NOT NULL,
    id_professor integer NOT NULL
);


ALTER TABLE public.tb_mural OWNER TO postgres;

--
-- Name: tb_mural_id_mural_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_mural_id_mural_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_mural_id_mural_seq OWNER TO postgres;

--
-- Name: tb_mural_id_mural_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_mural_id_mural_seq OWNED BY public.tb_mural.id_mural;


--
-- Name: tb_nota; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_nota (
    id_nota integer NOT NULL,
    vl_nota numeric NOT NULL,
    id_avaliacao integer NOT NULL,
    id_matricula integer NOT NULL
);


ALTER TABLE public.tb_nota OWNER TO postgres;

--
-- Name: tb_nota_id_nota_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_nota_id_nota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_nota_id_nota_seq OWNER TO postgres;

--
-- Name: tb_nota_id_nota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_nota_id_nota_seq OWNED BY public.tb_nota.id_nota;


--
-- Name: tb_postagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_postagem (
    id_postagem integer NOT NULL,
    nm_postagem character varying(255) NOT NULL,
    im_postagem bytea NOT NULL,
    ds_postagem text NOT NULL,
    id_mural integer NOT NULL
);


ALTER TABLE public.tb_postagem OWNER TO postgres;

--
-- Name: tb_postagem_id_postagem_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_postagem_id_postagem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_postagem_id_postagem_seq OWNER TO postgres;

--
-- Name: tb_postagem_id_postagem_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_postagem_id_postagem_seq OWNED BY public.tb_postagem.id_postagem;


--
-- Name: tb_presenca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_presenca (
    id_presenca integer NOT NULL,
    qt_faltas character(1) NOT NULL,
    dt_falta date NOT NULL,
    id_matricula integer NOT NULL
);


ALTER TABLE public.tb_presenca OWNER TO postgres;

--
-- Name: tb_presenca_id_presenca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_presenca_id_presenca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_presenca_id_presenca_seq OWNER TO postgres;

--
-- Name: tb_presenca_id_presenca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_presenca_id_presenca_seq OWNED BY public.tb_presenca.id_presenca;


--
-- Name: tb_professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_professor (
    id_professor integer NOT NULL,
    nm_professor character varying(255) NOT NULL,
    cd_cpf character(11) NOT NULL,
    ds_inst character varying(255) NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.tb_professor OWNER TO postgres;

--
-- Name: tb_professor_id_professor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_professor_id_professor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_professor_id_professor_seq OWNER TO postgres;

--
-- Name: tb_professor_id_professor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_professor_id_professor_seq OWNED BY public.tb_professor.id_professor;


--
-- Name: tb_turma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_turma (
    id_turma integer NOT NULL,
    nm_turma character varying(45) NOT NULL,
    id_professor integer NOT NULL,
    id_curso integer NOT NULL
);


ALTER TABLE public.tb_turma OWNER TO postgres;

--
-- Name: tb_turma_id_turma_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_turma_id_turma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_turma_id_turma_seq OWNER TO postgres;

--
-- Name: tb_turma_id_turma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_turma_id_turma_seq OWNED BY public.tb_turma.id_turma;


--
-- Name: tb_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_usuario (
    id_usuario integer NOT NULL,
    nm_usuario character varying(255) NOT NULL,
    cd_cpf character(11) NOT NULL,
    cd_senha character varying(45) NOT NULL,
    tp_usuario boolean NOT NULL
);


ALTER TABLE public.tb_usuario OWNER TO postgres;

--
-- Name: tb_usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: tb_usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_usuario_id_usuario_seq OWNED BY public.tb_usuario.id_usuario;


--
-- Name: tb_aluno id_aluno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_aluno ALTER COLUMN id_aluno SET DEFAULT nextval('public.tb_aluno_id_aluno_seq'::regclass);


--
-- Name: tb_avaliacao id_avaliacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avaliacao ALTER COLUMN id_avaliacao SET DEFAULT nextval('public.tb_avaliacao_id_avaliacao_seq'::regclass);


--
-- Name: tb_curso id_curso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_curso ALTER COLUMN id_curso SET DEFAULT nextval('public.tb_curso_id_curso_seq'::regclass);


--
-- Name: tb_evento id_evento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evento ALTER COLUMN id_evento SET DEFAULT nextval('public.tb_evento_id_evento_seq'::regclass);


--
-- Name: tb_inscricao id_inscricao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inscricao ALTER COLUMN id_inscricao SET DEFAULT nextval('public.tb_inscricao_id_inscricao_seq'::regclass);


--
-- Name: tb_matricula id_matricula; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_matricula ALTER COLUMN id_matricula SET DEFAULT nextval('public.tb_matricula_id_matricula_seq'::regclass);


--
-- Name: tb_mural id_mural; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_mural ALTER COLUMN id_mural SET DEFAULT nextval('public.tb_mural_id_mural_seq'::regclass);


--
-- Name: tb_nota id_nota; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_nota ALTER COLUMN id_nota SET DEFAULT nextval('public.tb_nota_id_nota_seq'::regclass);


--
-- Name: tb_postagem id_postagem; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postagem ALTER COLUMN id_postagem SET DEFAULT nextval('public.tb_postagem_id_postagem_seq'::regclass);


--
-- Name: tb_presenca id_presenca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presenca ALTER COLUMN id_presenca SET DEFAULT nextval('public.tb_presenca_id_presenca_seq'::regclass);


--
-- Name: tb_professor id_professor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_professor ALTER COLUMN id_professor SET DEFAULT nextval('public.tb_professor_id_professor_seq'::regclass);


--
-- Name: tb_turma id_turma; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_turma ALTER COLUMN id_turma SET DEFAULT nextval('public.tb_turma_id_turma_seq'::regclass);


--
-- Name: tb_usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.tb_usuario_id_usuario_seq'::regclass);


--
-- Data for Name: tb_aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_aluno (id_aluno, nm_aluno, cd_cpf, ds_inst, id_usuario) FROM stdin;
\.


--
-- Data for Name: tb_avaliacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_avaliacao (id_avaliacao, dt_avaliacao, id_turma) FROM stdin;
\.


--
-- Data for Name: tb_curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_curso (id_curso, nm_curso, qt_vagas, qt_duracao) FROM stdin;
\.


--
-- Data for Name: tb_evento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_evento (id_evento, nm_evento, im_evento, ds_evento, dt_inicio, dt_fim, id_mural) FROM stdin;
\.


--
-- Data for Name: tb_inscricao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_inscricao (id_inscricao, nm_participante, nm_curso, cd_ciclo, cd_celular, ds_email, id_evento) FROM stdin;
\.


--
-- Data for Name: tb_matricula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_matricula (id_matricula, id_aluno, id_curso) FROM stdin;
\.


--
-- Data for Name: tb_mural; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_mural (id_mural, qt_postagem, qt_evento, id_professor) FROM stdin;
\.


--
-- Data for Name: tb_nota; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_nota (id_nota, vl_nota, id_avaliacao, id_matricula) FROM stdin;
\.


--
-- Data for Name: tb_postagem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_postagem (id_postagem, nm_postagem, im_postagem, ds_postagem, id_mural) FROM stdin;
\.


--
-- Data for Name: tb_presenca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_presenca (id_presenca, qt_faltas, dt_falta, id_matricula) FROM stdin;
\.


--
-- Data for Name: tb_professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_professor (id_professor, nm_professor, cd_cpf, ds_inst, id_usuario) FROM stdin;
\.


--
-- Data for Name: tb_turma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_turma (id_turma, nm_turma, id_professor, id_curso) FROM stdin;
\.


--
-- Data for Name: tb_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_usuario (id_usuario, nm_usuario, cd_cpf, cd_senha, tp_usuario) FROM stdin;
\.


--
-- Name: tb_aluno_id_aluno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_aluno_id_aluno_seq', 1, false);


--
-- Name: tb_avaliacao_id_avaliacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_avaliacao_id_avaliacao_seq', 1, false);


--
-- Name: tb_curso_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_curso_id_curso_seq', 1, false);


--
-- Name: tb_evento_id_evento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_evento_id_evento_seq', 1, false);


--
-- Name: tb_inscricao_id_inscricao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_inscricao_id_inscricao_seq', 1, false);


--
-- Name: tb_matricula_id_matricula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_matricula_id_matricula_seq', 1, false);


--
-- Name: tb_mural_id_mural_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_mural_id_mural_seq', 1, false);


--
-- Name: tb_nota_id_nota_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_nota_id_nota_seq', 1, false);


--
-- Name: tb_postagem_id_postagem_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_postagem_id_postagem_seq', 1, false);


--
-- Name: tb_presenca_id_presenca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_presenca_id_presenca_seq', 1, false);


--
-- Name: tb_professor_id_professor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_professor_id_professor_seq', 1, false);


--
-- Name: tb_turma_id_turma_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_turma_id_turma_seq', 1, false);


--
-- Name: tb_usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_usuario_id_usuario_seq', 1, false);


--
-- Name: tb_aluno pk_aluno; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_aluno
    ADD CONSTRAINT pk_aluno PRIMARY KEY (id_aluno);


--
-- Name: tb_avaliacao pk_avaliacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avaliacao
    ADD CONSTRAINT pk_avaliacao PRIMARY KEY (id_avaliacao);


--
-- Name: tb_curso pk_curso; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_curso
    ADD CONSTRAINT pk_curso PRIMARY KEY (id_curso);


--
-- Name: tb_evento pk_evento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evento
    ADD CONSTRAINT pk_evento PRIMARY KEY (id_evento);


--
-- Name: tb_inscricao pk_inscricao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inscricao
    ADD CONSTRAINT pk_inscricao PRIMARY KEY (id_inscricao);


--
-- Name: tb_matricula pk_matricula; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_matricula
    ADD CONSTRAINT pk_matricula PRIMARY KEY (id_matricula);


--
-- Name: tb_mural pk_mural; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_mural
    ADD CONSTRAINT pk_mural PRIMARY KEY (id_mural);


--
-- Name: tb_nota pk_nota; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_nota
    ADD CONSTRAINT pk_nota PRIMARY KEY (id_nota);


--
-- Name: tb_postagem pk_postagem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postagem
    ADD CONSTRAINT pk_postagem PRIMARY KEY (id_postagem);


--
-- Name: tb_presenca pk_presenca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presenca
    ADD CONSTRAINT pk_presenca PRIMARY KEY (id_presenca);


--
-- Name: tb_professor pk_professor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_professor
    ADD CONSTRAINT pk_professor PRIMARY KEY (id_professor);


--
-- Name: tb_turma pk_turma; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_turma
    ADD CONSTRAINT pk_turma PRIMARY KEY (id_turma);


--
-- Name: tb_usuario pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);


--
-- Name: tb_aluno fk_aluno_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_aluno
    ADD CONSTRAINT fk_aluno_usuario FOREIGN KEY (id_usuario) REFERENCES public.tb_usuario(id_usuario);


--
-- Name: tb_avaliacao fk_avaliacao_turma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avaliacao
    ADD CONSTRAINT fk_avaliacao_turma FOREIGN KEY (id_turma) REFERENCES public.tb_turma(id_turma);


--
-- Name: tb_evento fk_evento_mural; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evento
    ADD CONSTRAINT fk_evento_mural FOREIGN KEY (id_mural) REFERENCES public.tb_mural(id_mural);


--
-- Name: tb_inscricao fk_inscricao_evento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inscricao
    ADD CONSTRAINT fk_inscricao_evento FOREIGN KEY (id_evento) REFERENCES public.tb_evento(id_evento);


--
-- Name: tb_matricula fk_matricula_aluno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_matricula
    ADD CONSTRAINT fk_matricula_aluno FOREIGN KEY (id_aluno) REFERENCES public.tb_aluno(id_aluno);


--
-- Name: tb_matricula fk_matricula_curso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_matricula
    ADD CONSTRAINT fk_matricula_curso FOREIGN KEY (id_curso) REFERENCES public.tb_curso(id_curso);


--
-- Name: tb_mural fk_mural_professor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_mural
    ADD CONSTRAINT fk_mural_professor FOREIGN KEY (id_professor) REFERENCES public.tb_professor(id_professor);


--
-- Name: tb_nota fk_nota_avaliacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_nota
    ADD CONSTRAINT fk_nota_avaliacao FOREIGN KEY (id_avaliacao) REFERENCES public.tb_avaliacao(id_avaliacao);


--
-- Name: tb_nota fk_nota_matricula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_nota
    ADD CONSTRAINT fk_nota_matricula FOREIGN KEY (id_matricula) REFERENCES public.tb_matricula(id_matricula);


--
-- Name: tb_postagem fk_postagem_mural; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postagem
    ADD CONSTRAINT fk_postagem_mural FOREIGN KEY (id_mural) REFERENCES public.tb_mural(id_mural);


--
-- Name: tb_presenca fk_presenca_matricula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presenca
    ADD CONSTRAINT fk_presenca_matricula FOREIGN KEY (id_matricula) REFERENCES public.tb_matricula(id_matricula);


--
-- Name: tb_professor fk_professor_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_professor
    ADD CONSTRAINT fk_professor_usuario FOREIGN KEY (id_usuario) REFERENCES public.tb_usuario(id_usuario);


--
-- Name: tb_turma fk_turma_curso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_turma
    ADD CONSTRAINT fk_turma_curso FOREIGN KEY (id_curso) REFERENCES public.tb_curso(id_curso);


--
-- Name: tb_turma fk_turma_professor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_turma
    ADD CONSTRAINT fk_turma_professor FOREIGN KEY (id_professor) REFERENCES public.tb_professor(id_professor);


--
-- PostgreSQL database dump complete
--

