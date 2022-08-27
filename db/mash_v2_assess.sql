--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

-- Started on 2022-08-27 16:00:26 +06

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
-- TOC entry 232 (class 1259 OID 16685)
-- Name: assessments_assessment; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment (
    id bigint NOT NULL,
    skill_name character varying(100) NOT NULL,
    passed_by integer NOT NULL,
    taken_by integer NOT NULL,
    image_link character varying(200)
);


ALTER TABLE public.assessments_assessment OWNER TO "user";

--
-- TOC entry 258 (class 1259 OID 16994)
-- Name: assessments_assessment_categories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment_categories (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.assessments_assessment_categories OWNER TO "user";

--
-- TOC entry 257 (class 1259 OID 16992)
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_assessment_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_assessment_categories_id_seq OWNER TO "user";

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 257
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_categories_id_seq OWNED BY public.assessments_assessment_categories.id;


--
-- TOC entry 231 (class 1259 OID 16683)
-- Name: assessments_assessment_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_assessment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_assessment_id_seq OWNER TO "user";

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 231
-- Name: assessments_assessment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_id_seq OWNED BY public.assessments_assessment.id;


--
-- TOC entry 256 (class 1259 OID 16943)
-- Name: assessments_assessment_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment_roles (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.assessments_assessment_roles OWNER TO "user";

--
-- TOC entry 255 (class 1259 OID 16941)
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_assessment_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_assessment_roles_id_seq OWNER TO "user";

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 255
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_roles_id_seq OWNED BY public.assessments_assessment_roles.id;


--
-- TOC entry 234 (class 1259 OID 16693)
-- Name: assessments_option; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_option (
    id bigint NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.assessments_option OWNER TO "user";

--
-- TOC entry 233 (class 1259 OID 16691)
-- Name: assessments_option_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_option_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_option_id_seq OWNER TO "user";

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 233
-- Name: assessments_option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_option_id_seq OWNED BY public.assessments_option.id;


--
-- TOC entry 238 (class 1259 OID 16715)
-- Name: assessments_quesoption; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_quesoption (
    id bigint NOT NULL,
    is_correct boolean NOT NULL,
    option_id bigint NOT NULL,
    question_id bigint NOT NULL
);


ALTER TABLE public.assessments_quesoption OWNER TO "user";

--
-- TOC entry 237 (class 1259 OID 16713)
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_quesoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_quesoption_id_seq OWNER TO "user";

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 237
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_quesoption_id_seq OWNED BY public.assessments_quesoption.id;


--
-- TOC entry 236 (class 1259 OID 16704)
-- Name: assessments_question; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_question (
    id bigint NOT NULL,
    description text NOT NULL,
    "time" integer NOT NULL,
    points integer NOT NULL,
    difficulty_level character varying(1) NOT NULL,
    assessment_id bigint NOT NULL
);


ALTER TABLE public.assessments_question OWNER TO "user";

--
-- TOC entry 235 (class 1259 OID 16702)
-- Name: assessments_question_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_question_id_seq OWNER TO "user";

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 235
-- Name: assessments_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_question_id_seq OWNED BY public.assessments_question.id;


--
-- TOC entry 266 (class 1259 OID 17096)
-- Name: assessments_userassessment; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_userassessment (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    user_id integer,
    passed boolean NOT NULL,
    taken_time timestamp with time zone NOT NULL
);


ALTER TABLE public.assessments_userassessment OWNER TO "user";

--
-- TOC entry 265 (class 1259 OID 17094)
-- Name: assessments_userassessment_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assessments_userassessment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assessments_userassessment_id_seq OWNER TO "user";

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 265
-- Name: assessments_userassessment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_userassessment_id_seq OWNED BY public.assessments_userassessment.id;


--
-- TOC entry 209 (class 1259 OID 16416)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "user";

--
-- TOC entry 208 (class 1259 OID 16414)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "user";

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 16426)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "user";

--
-- TOC entry 210 (class 1259 OID 16424)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "user";

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 16408)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "user";

--
-- TOC entry 206 (class 1259 OID 16406)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "user";

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 16434)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO "user";

--
-- TOC entry 215 (class 1259 OID 16444)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "user";

--
-- TOC entry 214 (class 1259 OID 16442)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "user";

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 16432)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "user";

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 16452)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "user";

--
-- TOC entry 216 (class 1259 OID 16450)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "user";

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 220 (class 1259 OID 16543)
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO "user";

--
-- TOC entry 224 (class 1259 OID 16569)
-- Name: discussions_comments; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_comments (
    id bigint NOT NULL,
    comment text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    discussion_id bigint NOT NULL,
    parent character varying(100),
    user_id integer,
    hash character varying(100)
);


ALTER TABLE public.discussions_comments OWNER TO "user";

--
-- TOC entry 223 (class 1259 OID 16567)
-- Name: discussions_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.discussions_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discussions_comments_id_seq OWNER TO "user";

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 223
-- Name: discussions_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_comments_id_seq OWNED BY public.discussions_comments.id;


--
-- TOC entry 222 (class 1259 OID 16558)
-- Name: discussions_discussion; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_discussion (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    upvotes integer NOT NULL,
    downvotes integer NOT NULL,
    views integer NOT NULL,
    comment_count integer NOT NULL,
    user_id integer,
    tags character varying(100)[]
);


ALTER TABLE public.discussions_discussion OWNER TO "user";

--
-- TOC entry 221 (class 1259 OID 16556)
-- Name: discussions_discussion_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.discussions_discussion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discussions_discussion_id_seq OWNER TO "user";

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 221
-- Name: discussions_discussion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_discussion_id_seq OWNED BY public.discussions_discussion.id;


--
-- TOC entry 228 (class 1259 OID 16633)
-- Name: discussions_downvoted; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_downvoted (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.discussions_downvoted OWNER TO "user";

--
-- TOC entry 227 (class 1259 OID 16631)
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.discussions_downvoted_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discussions_downvoted_id_seq OWNER TO "user";

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 227
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_downvoted_id_seq OWNED BY public.discussions_downvoted.id;


--
-- TOC entry 226 (class 1259 OID 16613)
-- Name: discussions_upvoted; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_upvoted (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.discussions_upvoted OWNER TO "user";

--
-- TOC entry 225 (class 1259 OID 16611)
-- Name: discussions_upvoted_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.discussions_upvoted_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discussions_upvoted_id_seq OWNER TO "user";

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 225
-- Name: discussions_upvoted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_upvoted_id_seq OWNED BY public.discussions_upvoted.id;


--
-- TOC entry 219 (class 1259 OID 16512)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO "user";

--
-- TOC entry 218 (class 1259 OID 16510)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "user";

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 16398)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "user";

--
-- TOC entry 204 (class 1259 OID 16396)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "user";

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16387)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "user";

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "user";

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 229 (class 1259 OID 16651)
-- Name: django_session; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "user";

--
-- TOC entry 254 (class 1259 OID 16856)
-- Name: problems_bookmark; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_bookmark (
    id bigint NOT NULL,
    date_added timestamp with time zone NOT NULL,
    problem_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.problems_bookmark OWNER TO "user";

--
-- TOC entry 253 (class 1259 OID 16854)
-- Name: problems_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_bookmark_id_seq OWNER TO "user";

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 253
-- Name: problems_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_bookmark_id_seq OWNED BY public.problems_bookmark.id;


--
-- TOC entry 240 (class 1259 OID 16755)
-- Name: problems_category; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_category (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_category OWNER TO "user";

--
-- TOC entry 239 (class 1259 OID 16753)
-- Name: problems_category_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_category_id_seq OWNER TO "user";

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 239
-- Name: problems_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_category_id_seq OWNED BY public.problems_category.id;


--
-- TOC entry 242 (class 1259 OID 16766)
-- Name: problems_company; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_company (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_company OWNER TO "user";

--
-- TOC entry 241 (class 1259 OID 16764)
-- Name: problems_company_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_company_id_seq OWNER TO "user";

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 241
-- Name: problems_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_company_id_seq OWNED BY public.problems_company.id;


--
-- TOC entry 252 (class 1259 OID 16845)
-- Name: problems_inputoutput; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_inputoutput (
    id bigint NOT NULL,
    input text NOT NULL,
    output text NOT NULL,
    points integer NOT NULL,
    problem_id bigint NOT NULL
);


ALTER TABLE public.problems_inputoutput OWNER TO "user";

--
-- TOC entry 251 (class 1259 OID 16843)
-- Name: problems_inputoutput_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_inputoutput_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_inputoutput_id_seq OWNER TO "user";

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 251
-- Name: problems_inputoutput_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_inputoutput_id_seq OWNED BY public.problems_inputoutput.id;


--
-- TOC entry 244 (class 1259 OID 16777)
-- Name: problems_problem; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    time_limit numeric(5,2) NOT NULL,
    memory_limit integer NOT NULL,
    difficulty character varying(20) NOT NULL,
    submission_count integer NOT NULL,
    solve_count integer NOT NULL
);


ALTER TABLE public.problems_problem OWNER TO "user";

--
-- TOC entry 260 (class 1259 OID 17016)
-- Name: problems_problem_companies; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_companies (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    company_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_companies OWNER TO "user";

--
-- TOC entry 259 (class 1259 OID 17014)
-- Name: problems_problem_companies_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_problem_companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_problem_companies_id_seq OWNER TO "user";

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 259
-- Name: problems_problem_companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_companies_id_seq OWNED BY public.problems_problem_companies.id;


--
-- TOC entry 243 (class 1259 OID 16775)
-- Name: problems_problem_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_problem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_problem_id_seq OWNER TO "user";

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 243
-- Name: problems_problem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_id_seq OWNED BY public.problems_problem.id;


--
-- TOC entry 262 (class 1259 OID 17038)
-- Name: problems_problem_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_roles (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_roles OWNER TO "user";

--
-- TOC entry 261 (class 1259 OID 17036)
-- Name: problems_problem_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_problem_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_problem_roles_id_seq OWNER TO "user";

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 261
-- Name: problems_problem_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_roles_id_seq OWNED BY public.problems_problem_roles.id;


--
-- TOC entry 264 (class 1259 OID 17046)
-- Name: problems_problem_subcategories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_subcategories (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    subcategory_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_subcategories OWNER TO "user";

--
-- TOC entry 263 (class 1259 OID 17044)
-- Name: problems_problem_subcategories_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_problem_subcategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_problem_subcategories_id_seq OWNER TO "user";

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 263
-- Name: problems_problem_subcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_subcategories_id_seq OWNED BY public.problems_problem_subcategories.id;


--
-- TOC entry 246 (class 1259 OID 16796)
-- Name: problems_role; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_role (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_role OWNER TO "user";

--
-- TOC entry 245 (class 1259 OID 16794)
-- Name: problems_role_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_role_id_seq OWNER TO "user";

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 245
-- Name: problems_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_role_id_seq OWNED BY public.problems_role.id;


--
-- TOC entry 250 (class 1259 OID 16818)
-- Name: problems_solution; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_solution (
    id bigint NOT NULL,
    code text NOT NULL,
    language character varying(20) NOT NULL,
    runtime character varying(20) NOT NULL,
    memory_usage character varying(20) NOT NULL,
    solve_status character varying(50) NOT NULL,
    problem_id bigint NOT NULL,
    user_id integer NOT NULL,
    time_added timestamp with time zone NOT NULL
);


ALTER TABLE public.problems_solution OWNER TO "user";

--
-- TOC entry 249 (class 1259 OID 16816)
-- Name: problems_solution_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_solution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_solution_id_seq OWNER TO "user";

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 249
-- Name: problems_solution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_solution_id_seq OWNED BY public.problems_solution.id;


--
-- TOC entry 248 (class 1259 OID 16807)
-- Name: problems_subcategory; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_subcategory (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.problems_subcategory OWNER TO "user";

--
-- TOC entry 247 (class 1259 OID 16805)
-- Name: problems_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.problems_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problems_subcategory_id_seq OWNER TO "user";

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 247
-- Name: problems_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_subcategory_id_seq OWNED BY public.problems_subcategory.id;


--
-- TOC entry 230 (class 1259 OID 16669)
-- Name: users_user; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.users_user (
    user_ptr_id integer NOT NULL,
    city character varying(100) NOT NULL,
    country character varying(100) NOT NULL,
    about text NOT NULL,
    occupation character varying(100) NOT NULL,
    current_workplace character varying(100) NOT NULL,
    website_link character varying(200) NOT NULL,
    github_link character varying(200) NOT NULL,
    languages character varying(100)[],
    skills character varying(100)[]
);


ALTER TABLE public.users_user OWNER TO "user";

--
-- TOC entry 3046 (class 2604 OID 16688)
-- Name: assessments_assessment id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 16997)
-- Name: assessments_assessment_categories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_categories_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 16946)
-- Name: assessments_assessment_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_roles_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 16696)
-- Name: assessments_option id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_option ALTER COLUMN id SET DEFAULT nextval('public.assessments_option_id_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 16718)
-- Name: assessments_quesoption id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption ALTER COLUMN id SET DEFAULT nextval('public.assessments_quesoption_id_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 16707)
-- Name: assessments_question id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question ALTER COLUMN id SET DEFAULT nextval('public.assessments_question_id_seq'::regclass);


--
-- TOC entry 3063 (class 2604 OID 17099)
-- Name: assessments_userassessment id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment ALTER COLUMN id SET DEFAULT nextval('public.assessments_userassessment_id_seq'::regclass);


--
-- TOC entry 3035 (class 2604 OID 16419)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3036 (class 2604 OID 16429)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3034 (class 2604 OID 16411)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3037 (class 2604 OID 16437)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3038 (class 2604 OID 16447)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3039 (class 2604 OID 16455)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3043 (class 2604 OID 16572)
-- Name: discussions_comments id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments ALTER COLUMN id SET DEFAULT nextval('public.discussions_comments_id_seq'::regclass);


--
-- TOC entry 3042 (class 2604 OID 16561)
-- Name: discussions_discussion id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion ALTER COLUMN id SET DEFAULT nextval('public.discussions_discussion_id_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 16636)
-- Name: discussions_downvoted id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted ALTER COLUMN id SET DEFAULT nextval('public.discussions_downvoted_id_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 16616)
-- Name: discussions_upvoted id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_upvoted ALTER COLUMN id SET DEFAULT nextval('public.discussions_upvoted_id_seq'::regclass);


--
-- TOC entry 3040 (class 2604 OID 16515)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3033 (class 2604 OID 16401)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3032 (class 2604 OID 16390)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 16859)
-- Name: problems_bookmark id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark ALTER COLUMN id SET DEFAULT nextval('public.problems_bookmark_id_seq'::regclass);


--
-- TOC entry 3050 (class 2604 OID 16758)
-- Name: problems_category id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_category ALTER COLUMN id SET DEFAULT nextval('public.problems_category_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 16769)
-- Name: problems_company id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_company ALTER COLUMN id SET DEFAULT nextval('public.problems_company_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 16848)
-- Name: problems_inputoutput id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput ALTER COLUMN id SET DEFAULT nextval('public.problems_inputoutput_id_seq'::regclass);


--
-- TOC entry 3052 (class 2604 OID 16780)
-- Name: problems_problem id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 17019)
-- Name: problems_problem_companies id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_companies_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 17041)
-- Name: problems_problem_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_roles_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 17049)
-- Name: problems_problem_subcategories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_subcategories_id_seq'::regclass);


--
-- TOC entry 3053 (class 2604 OID 16799)
-- Name: problems_role id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_role ALTER COLUMN id SET DEFAULT nextval('public.problems_role_id_seq'::regclass);


--
-- TOC entry 3055 (class 2604 OID 16821)
-- Name: problems_solution id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution ALTER COLUMN id SET DEFAULT nextval('public.problems_solution_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 16810)
-- Name: problems_subcategory id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory ALTER COLUMN id SET DEFAULT nextval('public.problems_subcategory_id_seq'::regclass);


--
-- TOC entry 3395 (class 0 OID 16685)
-- Dependencies: 232
-- Data for Name: assessments_assessment; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment (id, skill_name, passed_by, taken_by, image_link) FROM stdin;
42	Microsoft Excel	7	101	https://upload.wikimedia.org/wikipedia/commons/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg
43	Django	14	23	https://static.djangoproject.com/img/logos/django-logo-positive.png
44	Java	5	20	https://1000logos.net/wp-content/uploads/2020/09/Java-Logo.png
46	Python	2	22	https://assets.stickpng.com/images/5848152fcef1014c0b5e4967.png
48	MIcrosoft Powerpoint	2	100	https://upload.wikimedia.org/wikipedia/commons/1/16/Microsoft_PowerPoint_2013-2019_logo.svg
47	Git	11	102	https://www.pngegg.com/en/png-yrwfa
\.


--
-- TOC entry 3421 (class 0 OID 16994)
-- Dependencies: 258
-- Data for Name: assessments_assessment_categories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment_categories (id, assessment_id, category_id) FROM stdin;
12	42	9
13	43	10
14	44	1
15	44	2
\.


--
-- TOC entry 3419 (class 0 OID 16943)
-- Dependencies: 256
-- Data for Name: assessments_assessment_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment_roles (id, assessment_id, role_id) FROM stdin;
33	42	25
34	42	27
35	43	28
36	43	31
37	44	28
40	46	28
41	47	28
42	47	31
43	48	33
\.


--
-- TOC entry 3397 (class 0 OID 16693)
-- Dependencies: 234
-- Data for Name: assessments_option; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_option (id, description) FROM stdin;
1	ccxsc
2	ccxsc
3	ccxsc
4	ccxsc
5	ccxsc
6	ccxsc
7	ccxsc
8	ccxsc
10	sdgdfhth
9	ccxsc
11	sfvgfg
12	jjjjjj
13	ccxsc
14	sdgdfhth
16	jjjjjj
15	sfvgfg
17	ccxsc
18	sdgdfhth
20	jjjjjj
19	sfvgfg
22	sdgdfhth
21	ccxsc
23	sfvgfg
24	jjjjjj
25	ccxsc
26	sdgdfhth
27	jjjjjj
28	sfvgfg
29	ccxsc
30	sdgdfhth
31	sfvgfg
32	jjjjjj
33	3
34	2
35	5
36	6
37	if else
39	if elif else
38	elif
40	fi
41	var = 0
42	int var = 0
43	var = new var()
44	var = new int[5]
45	if elif else
46	elif
47	fi
48	if else
49	3
50	4
51	2
52	5
53	var = 0
54	int var = 0
55	let var = 0
56	var = new int[5]
57	32
58	16
59	128
60	No fixed length
61	int and str
62	int and int
63	str and str
64	str and int
65	None of the above
66	129
67	8
68	121
69	Brackets
70	Indentation
71	Key
72	None of the above
73	Brackets
74	Indentation
75	Key
76	None of the above
77	Pointers
78	Loops
79	Dynamic typing
80	All of the above
81	[2,4,6], [2,4,6]
82	[2,4,6], [1,3, 5]
83	[1.3.5], [1,3, 5]
84	None of these
85	try
86	except
87	finally
88	all of the above
89	32
91	No fixed length is specified
90	16
92	121
94	128
93	129
95	8
96	None of the above
97	16
98	32
99	128
100	No fixed length is specified
101	129
102	8
103	121
104	None of the above
105	16
109	129
108	128
107	No fixed length is specified
110	8
106	32
111	121
112	None of the above
113	128
114	No fixed length is specified
115	32
116	16
117	8
118	129
119	121
120	None of the above
121	16
123	32
122	129
124	128
125	8
126	No fixed length is specified
127	121
128	None of the above
129	128
131	16
130	32
132	8
133	129
134	No fixed length is specified
135	121
136	None of the above
137	128
138	32
139	No fixed length is specified
140	129
141	16
142	8
143	121
144	None of the above
145	32
146	16
147	128
148	8
149	No fixed length is specified
150	129
151	121
152	None of the above
153	16
154	128
155	32
156	No fixed length is specified
157	Even
158	10
159	20
160	1
161	50
162	Error
163	['Monday', 'Tuesday']
164	None
165	['Wednesday', 'Monday']
166	['Sunday', 'Monday']
167	['Tuesday', 'Wednesday']
168	129
169	Odd
170	8
171	121
172	None of the above
173	[2, 4, 6], [2, 4, 6]
174	[2, 4, 6], [1, 3, 5]
175	[1, 3, 5], [1, 3, 5]
176	None of these
177	Local
178	Global
179	Cannot be predicted
180	0 1 2 ..... 15
181	None
182	Infinite loop
183	0 3 6 9 12 15
184	Error
185	0 3 6 9 12
186	[1, 2, 1, 2, 1, 2]
187	[1, 2, 1, 2]
188	int and str
189	[1, 2]
190	str and int
191	str and str
192	Brackets
193	(2,2,3)
194	int and int
195	Error
196	(1,2,3)
197	[2,2,3]
198	None of the above
199	32
200	16
201	128
202	Key
203	Indentation
204	No fixed length is specified
205	129
206	121
207	8
208	None of the above
209	try
210	All of the above
211	13 13
212	finally
213	for
214	except
215	31 13
216	do-while
217	31 31
218	None of the above
219	if ele in list
220	13 31
221	while
222	Both A and B
223	None of the above
224	five neither three thrive
225	three three three three
226	five neither thrive three
227	if not ele not in list
228	int and float
229	five neither five neither
230	Pointers
231	Loops
232	float and float
233	int and int
234	float and int
235	Int
236	filter
237	int
238	list
239	Dynamic Typing
240	List
241	All of the above
242	Tuple
243	54 is an even number
244	String
245	54 is an odd number
246	number is an odd number
247	number is an even number
248	[7, 19, 45, 89]
249	[2, 4, 22, 72]
250	[4, 7, 19, 2, 89, 45, 72, 22]
251	[2, 4, 7, 19, 22, 45, 72, 89]
252	{'first' : 'sunday', 'second' : 'monday'}
253	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
254	{ 1:3, 2:4}
255	float and int
256	None of the above
257	int and int
258	tuple
259	{1, 5}
260	{'Hello' : 'World', 'First' : 1}
261	{'World' : 'Hello', 1 : 'First'}
262	Can be both A or B
263	Nonel of the above
264	int and float
265	float and float
266	{1, 2, 3, 3, 2, 4, 5, 5}
267	Python Programming
268	pYtHoN PrOgRaMmInG
269	python programming
270	{1, 2, 3, 4, 5}
271	None
272	strptime()
273	strftime()
274	PYTHON PROGRAMMING
275	Both A and B
276	None of the above
277	32
278	[4, 7, 19, 2, 89, 45, 72, 22]
279	[2, 4, 7, 19, 22, 45, 72, 89]
280	float and int
281	int and float
282	float and float
283	int and int
284	List
285	Tuple
286	String
287	Int
288	int and float
289	128
290	16
291	float and int
292	No fixed length is specified
293	strptime()
294	strftime()
295	Both A and B
296	None of the above
297	54 is an even number
298	54 is an odd number
299	number is an even number
300	number is an odd number
301	{1, 2, 3, 3, 2, 4, 5, 5}
302	{1, 2, 3, 4, 5}
303	{'Hello' : 'World', 'First' : 1}
304	None
305	{1, 5}
306	{'World' : 'Hello', 1 : 'First'}
307	Can be both A or B
309	Nonel of the above
308	pYtHoN PrOgRaMmInG
310	int and int
311	float and float
312	Python Programming
313	python programming
314	PYTHON PROGRAMMING
315	Error
316	(1,2,3)
317	[2,2,3]
318	(2,2,3)
319	Dynamic Typing
321	Pointers
320	All of the above
322	Loops
324	Infinite loop
323	0 3 6 9 12 15
325	Indentation
326	Key
328	0 1 2 ..... 15
327	Brackets
329	None of the above
330	20
331	10
332	50
333	8
334	129
335	None of the above
336	1
337	121
338	[2, 4, 6], [1, 3, 5]
339	0 3 6 9 12
340	int and str
341	str and str
342	[2, 4, 6], [2, 4, 6]
344	str and int
343	int and int
345	None of these
346	[1, 3, 5], [1, 3, 5]
347	None of the above
348	121
349	for
350	do-while
351	8
352	129
353	finally
354	All of the above
355	Local
356	while
357	Global
358	None
359	None of the above
360	try
361	except
362	Cannot be predicted
363	31 31
365	13 31
364	13 13
366	five neither thrive three
367	five neither three thrive
368	five neither five neither
369	if ele in list
370	31 13
371	Both A and B
372	['Tuesday', 'Wednesday']
373	['Wednesday', 'Monday']
374	Even
375	three three three three
376	Odd
377	if not ele not in list
378	Error
379	None of the above
380	None
381	['Sunday', 'Monday']
382	Error
383	['Monday', 'Tuesday']
384	[1, 2]
385	[1, 2, 1, 2, 1, 2]
386	[1, 2, 1, 2]
387	filter
388	list
389	int
390	{ 1:3, 2:4}
391	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
392	[7, 19, 45, 89]
394	tuple
393	{'first' : 'sunday', 'second' : 'monday'}
395	None of the above
396	[2, 4, 22, 72]
397	if ele in list
398	50
399	1
400	20
401	if not ele not in list
402	Both A and B
403	Pointers
404	Loops
405	All of the above
406	Dynamic Typing
407	Local
408	Global
409	None
410	Cannot be predicted
411	None of the above
412	129
413	8
414	121
415	None of the above
416	[2, 4, 6], [2, 4, 6]
417	[2, 4, 6], [1, 3, 5]
418	[1, 3, 5], [1, 3, 5]
419	None of these
420	None of the above
421	Brackets
422	do-while
423	for
424	try
425	except
426	All of the above
427	finally
428	while
429	32
430	None of the above
431	16
432	128
433	No fixed length is specified
434	8
435	Indentation
436	Key
437	str and int
438	None of the above
439	int and str
440	129
441	31 31
442	str and str
443	13 13
444	121
445	(2,2,3)
446	13 31
448	(1,2,3)
447	Odd
449	int and int
450	31 13
452	0 1 2 ..... 15
451	Error
453	Infinite loop
454	None
455	[2,2,3]
456	0 3 6 9 12 15
457	Error
458	0 3 6 9 12
459	five neither thrive three
460	Even
461	three three three three
462	[1, 2]
463	five neither five neither
464	[1, 2, 1, 2]
465	Tuple
466	String
467	five neither three thrive
468	Error
469	int and float
470	float and float
471	int and int
472	['Monday', 'Tuesday']
473	['Sunday', 'Monday']
474	[1, 2, 1, 2, 1, 2]
475	['Tuesday', 'Wednesday']
476	List
477	float and int
478	Int
479	['Wednesday', 'Monday']
480	[7, 19, 45, 89]
481	[2, 4, 22, 72]
484	filter
482	[2, 4, 7, 19, 22, 45, 72, 89]
483	[4, 7, 19, 2, 89, 45, 72, 22]
485	tuple
486	list
487	{ 1:3, 2:4}
488	{'first' : 'sunday', 'second' : 'monday'}
489	{1, 2, 3, 4, 5}
490	int
491	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
492	float and int
493	None of the above
494	{1, 2, 3, 3, 2, 4, 5, 5}
495	int and float
496	float and float
497	None
498	{1, 5}
499	{'World' : 'Hello', 1 : 'First'}
500	int and int
501	{'Hello' : 'World', 'First' : 1}
502	54 is an even number
503	Nonel of the above
504	Can be both A or B
505	54 is an odd number
506	number is an even number
507	number is an odd number
509	Both A and B
508	strftime()
510	strptime()
511	Python Programming
512	pYtHoN PrOgRaMmInG
513	python programming
514	PYTHON PROGRAMMING
515	None of the above
516	10
518	float and int
517	{1, 5}
520	{1, 2, 3, 3, 2, 4, 5, 5}
522	{'Hello' : 'World', 'First' : 1}
519	{1, 2, 3, 4, 5}
521	None
524	float and float
523	{'World' : 'Hello', 1 : 'First'}
525	Can be both A or B
526	Brackets
527	int and int
528	Nonel of the above
529	Indentation
530	Key
531	None of the above
532	Both A and B
533	strftime()
534	strptime()
535	None of the above
536	[2,2,3]
537	Loops
538	(2,2,3)
539	Error
540	(1,2,3)
541	int and str
542	str and int
543	pYtHoN PrOgRaMmInG
544	int and int
545	str and str
546	Infinite loop
547	Python Programming
548	PYTHON PROGRAMMING
549	python programming
550	int and float
551	0 3 6 9 12 15
552	Pointers
553	0 3 6 9 12
554	10
555	20
556	1
557	All of the above
558	32
559	Dynamic Typing
561	50
560	16
562	0 1 2 ..... 15
563	129
564	None of the above
566	128
565	No fixed length is specified
567	8
568	121
569	None of the above
570	8
571	121
572	try
573	None of these
574	129
575	finally
576	except
577	All of the above
578	[2, 4, 6], [2, 4, 6]
579	[2, 4, 6], [1, 3, 5]
580	[1, 3, 5], [1, 3, 5]
581	None
582	while
583	Cannot be predicted
584	for
585	do-while
586	None of the above
587	31 31
588	31 13
589	13 13
590	Both A and B
591	Local
592	Global
593	five neither thrive three
594	five neither three thrive
595	five neither five neither
596	three three three three
597	['Monday', 'Tuesday']
598	['Sunday', 'Monday']
599	if ele in list
601	13 31
600	['Tuesday', 'Wednesday']
602	['Wednesday', 'Monday']
603	if not ele not in list
604	None of the above
605	Even
606	Odd
607	[1, 2, 1, 2]
608	Error
609	[1, 2]
610	[1, 2, 1, 2, 1, 2]
611	{'first' : 'sunday', 'second' : 'monday'}
612	{ 1:3, 2:4}
615	None
614	Int
613	None of the above
616	Error
617	filter
618	int
619	list
620	[7, 19, 45, 89]
621	tuple
622	[4, 7, 19, 2, 89, 45, 72, 22]
623	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
624	[2, 4, 7, 19, 22, 45, 72, 89]
625	List
626	54 is an even number
627	54 is an odd number
628	String
629	Tuple
630	number is an odd number
631	number is an even number
632	float and int
633	int and int
634	float and float
635	int and float
636	[2, 4, 22, 72]
637	Tuple
638	String
639	Int
640	filter
642	[1, 2, 1, 2]
641	[1, 2]
643	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
644	int
645	[1, 2, 1, 2, 1, 2]
646	{'first' : 'sunday', 'second' : 'monday'}
647	{ 1:3, 2:4}
648	None of the above
649	[7, 19, 45, 89]
650	[2, 4, 22, 72]
651	[4, 7, 19, 2, 89, 45, 72, 22]
652	[2, 4, 7, 19, 22, 45, 72, 89]
653	float and int
654	int and float
656	List
655	float and float
657	{1, 2, 3, 3, 2, 4, 5, 5}
658	{1, 2, 3, 4, 5}
659	int and int
660	None
661	Error
662	{1, 5}
663	{'Hello' : 'World', 'First' : 1}
664	{'World' : 'Hello', 1 : 'First'}
665	Can be both A or B
666	Nonel of the above
667	strftime()
668	strptime()
669	Both A and B
670	None of the above
671	pYtHoN PrOgRaMmInG
672	Python Programming
673	python programming
674	32
675	PYTHON PROGRAMMING
676	16
677	128
678	129
679	No fixed length is specified
680	tuple
681	list
682	8
683	121
684	None of the above
685	str and int
686	int and str
688	int and int
687	str and str
689	Brackets
690	Indentation
691	Key
692	None of the above
693	[2,2,3]
694	(2,2,3)
695	Error
696	(1,2,3)
697	float and int
698	int and float
699	float and float
700	int and int
701	0 1 2 ..... 15
702	Infinite loop
703	0 3 6 9 12 15
704	0 3 6 9 12
705	Pointers
706	Loops
707	Dynamic Typing
708	10
709	All of the above
710	20
711	50
712	8
713	129
714	1
715	121
716	None of the above
717	[2, 4, 6], [2, 4, 6]
718	[2, 4, 6], [1, 3, 5]
719	None of these
720	[1, 3, 5], [1, 3, 5]
721	Local
722	None
723	Global
724	Cannot be predicted
725	try
726	except
727	finally
728	All of the above
729	31 13
730	31 31
731	13 13
732	13 31
733	while
734	for
735	None of the above
736	do-while
737	if not ele not in list
738	if ele in list
739	Both A and B
740	None of the above
741	five neither thrive three
742	five neither three thrive
743	three three three three
744	five neither five neither
745	Even
746	Odd
747	Error
748	None
749	['Monday', 'Tuesday']
750	['Sunday', 'Monday']
751	['Tuesday', 'Wednesday']
752	54 is an even number
754	54 is an odd number
753	['Wednesday', 'Monday']
755	number is an even number
756	number is an odd number
757	strftime()
758	16
760	None of the above
759	Both A and B
762	32
761	None of these
763	128
764	No fixed length is specified
765	0 1 2 ..... 15
766	0 3 6 9 12 15
767	Infinite loop
768	try
769	0 3 6 9 12
770	except
771	[2, 4, 6], [2, 4, 6]
772	finally
773	All of the above
774	[2, 4, 6], [1, 3, 5]
775	129
777	121
776	129
778	[1, 3, 5], [1, 3, 5]
779	8
780	8
781	None of the above
782	Local
784	Global
783	None
785	31 13
786	121
787	Cannot be predicted
788	None of the above
789	13 31
790	31 31
791	Odd
792	Error
793	13 13
794	Even
795	if ele in list
796	five neither five neither
797	if not ele not in list
798	Both A and B
799	None of the above
801	for
800	five neither thrive three
802	five neither three thrive
803	None
804	three three three three
805	while
806	do-while
807	None of the above
808	['Monday', 'Tuesday']
809	['Sunday', 'Monday']
810	['Tuesday', 'Wednesday']
811	float and int
812	Key
813	Indentation
814	None of the above
815	Brackets
816	['Wednesday', 'Monday']
817	int
818	list
819	tuple
820	str and int
821	int and float
822	float and float
823	int and int
824	str and str
825	filter
826	int and int
827	Error
828	[1, 2]
829	[1, 2, 1, 2, 1, 2]
830	List
831	Tuple
832	String
833	Error
834	Int
835	int and str
836	[2, 4, 22, 72]
837	[4, 7, 19, 2, 89, 45, 72, 22]
838	[1, 2, 1, 2]
839	[2, 4, 7, 19, 22, 45, 72, 89]
840	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
841	{ 1:3, 2:4}
842	{'first' : 'sunday', 'second' : 'monday'}
843	(1,2,3)
845	(2,2,3)
844	[2,2,3]
846	None of the above
847	[7, 19, 45, 89]
848	{1, 2, 3, 3, 2, 4, 5, 5}
849	int and float
850	float and float
851	{1, 2, 3, 4, 5}
852	int and int
853	54 is an odd number
854	54 is an even number
855	{1, 5}
856	number is an even number
857	python programming
858	PYTHON PROGRAMMING
859	{'Hello' : 'World', 'First' : 1}
860	{'World' : 'Hello', 1 : 'First'}
861	float and int
862	Can be both A or B
863	Nonel of the above
864	Loops
865	Dynamic Typing
866	All of the above
867	None
868	10
869	20
870	50
871	number is an odd number
872	Python Programming
873	pYtHoN PrOgRaMmInG
874	1
875	strptime()
876	Pointers
877	Error
878	[1, 2, 1, 2]
879	[1, 3, 5], [1, 3, 5]
880	[2, 4, 6], [1, 3, 5]
881	[2, 4, 6], [2, 4, 6]
882	None of these
883	[1, 2, 1, 2, 1, 2]
884	31 13
885	31 31
886	13 13
887	13 31
888	Int
889	['Monday', 'Tuesday']
890	[1, 2]
891	['Sunday', 'Monday']
892	['Tuesday', 'Wednesday']
893	String
894	['Wednesday', 'Monday']
895	Even
896	Error
897	Odd
898	None
899	if not ele not in list
900	if ele in list
901	Both A and B
902	None of the above
903	try
904	No fixed length is specified
905	16
906	except
907	finally
909	All of the above
910	8
908	List
911	129
912	121
913	Tuple
914	(2,2,3)
915	(1,2,3)
916	32
917	Brackets
918	128
919	Error
920	int and float
921	Indentation
922	float and int
923	float and float
924	int and int
925	[7, 19, 45, 89]
926	[2, 4, 7, 19, 22, 45, 72, 89]
927	[2,2,3]
928	None of the above
930	54 is an odd number
929	54 is an even number
931	number is an even number
932	number is an odd number
933	filter
934	Key
935	None of the above
936	tuple
937	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
938	{'first' : 'sunday', 'second' : 'monday'}
939	{ 1:3, 2:4}
940	None of the above
941	str and int
942	[4, 7, 19, 2, 89, 45, 72, 22]
943	int and str
944	[2, 4, 22, 72]
945	str and str
946	int and int
947	float and int
948	float and float
949	int and float
950	int
951	{'World' : 'Hello', 1 : 'First'}
953	{'Hello' : 'World', 'First' : 1}
952	list
954	Can be both A or B
955	int and int
956	{1, 2, 3, 3, 2, 4, 5, 5}
957	Nonel of the above
958	{1, 2, 3, 4, 5}
959	10
960	50
961	1
962	20
963	PYTHON PROGRAMMING
964	Python Programming
965	{1, 5}
966	None
967	pYtHoN PrOgRaMmInG
968	Both A and B
969	0 1 2 ..... 15
970	None of the above
971	Infinite loop
972	0 3 6 9 12 15
973	python programming
975	0 3 6 9 12
976	strftime()
974	for
977	strptime()
978	three three three three
979	do-while
980	None of the above
981	five neither three thrive
982	while
983	five neither thrive three
984	Local
985	None
986	Cannot be predicted
987	five neither five neither
988	129
989	Global
990	Dynamic Typing
992	8
994	Loops
993	Pointers
991	None of the above
995	All of the above
996	121
\.


--
-- TOC entry 3401 (class 0 OID 16715)
-- Dependencies: 238
-- Data for Name: assessments_quesoption; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_quesoption (id, is_correct, option_id, question_id) FROM stdin;
377	f	397	135
378	f	398	157
379	f	399	157
380	f	400	157
381	f	401	135
382	t	402	135
383	t	403	155
384	f	404	155
385	f	405	155
386	f	406	155
387	t	407	158
388	f	408	158
389	f	410	158
390	f	409	158
391	f	411	135
392	t	412	156
393	f	413	156
394	f	414	156
395	f	415	156
396	t	416	159
397	f	417	159
398	f	418	159
399	f	419	159
400	f	420	136
401	f	421	137
402	t	422	136
403	f	423	136
404	f	424	160
405	f	425	160
406	f	427	160
407	t	426	160
408	f	429	132
409	f	430	137
410	f	428	136
411	f	431	132
412	f	432	132
413	t	433	132
414	t	435	137
415	f	434	131
416	f	436	137
417	f	437	133
418	f	438	131
419	t	439	133
420	f	441	134
421	t	440	131
422	f	442	133
423	f	443	134
424	f	444	131
425	f	445	140
426	f	446	134
427	f	447	138
428	f	449	133
429	f	448	140
430	t	450	134
431	f	451	138
432	f	452	142
433	f	453	142
434	f	455	140
435	f	454	138
436	t	456	142
437	t	457	140
438	f	458	142
439	t	459	139
440	t	460	138
441	f	462	144
442	f	461	139
443	f	463	139
444	f	464	144
445	f	466	145
446	f	465	145
447	f	468	144
448	f	467	139
449	f	469	141
450	f	470	141
452	t	472	143
451	f	471	141
453	f	473	143
454	t	474	144
455	f	475	143
456	t	476	145
457	t	477	141
458	f	478	145
459	f	479	143
460	t	480	147
461	f	481	147
462	f	482	147
463	f	485	146
464	t	484	146
465	f	483	147
466	f	486	146
467	f	487	149
468	f	490	146
470	f	488	149
469	t	489	150
471	t	491	149
472	t	492	151
473	f	493	149
474	f	494	150
475	f	495	151
476	f	496	151
477	f	497	150
478	f	498	150
480	f	500	151
479	t	499	152
481	f	501	152
482	t	502	148
483	f	503	152
485	f	504	152
484	f	505	148
486	f	506	148
487	f	507	148
488	f	509	153
489	t	510	153
490	f	511	154
491	f	508	153
492	t	512	154
493	f	513	154
494	f	514	154
495	f	515	153
496	t	516	157
497	f	522	185
500	f	521	184
499	t	518	166
498	f	520	184
502	f	517	184
501	t	519	184
503	f	524	166
504	t	523	185
505	f	525	185
506	f	526	187
507	f	527	166
508	f	528	185
509	t	529	187
510	f	530	187
511	f	531	187
512	f	532	188
513	f	533	188
514	t	534	188
515	f	535	188
516	f	536	186
517	f	537	163
518	f	538	186
519	f	540	186
520	t	539	186
521	t	541	189
522	f	542	189
523	t	543	190
524	f	544	189
525	f	545	189
526	f	546	162
527	f	547	190
528	f	548	190
529	f	549	190
530	f	550	166
531	t	551	162
532	t	552	163
533	f	553	162
534	t	554	161
535	f	555	161
536	f	556	161
537	f	557	163
538	f	559	163
539	f	558	165
540	f	561	161
541	f	560	165
542	f	562	162
543	t	563	164
544	f	564	164
545	t	565	165
546	f	566	165
547	f	567	167
548	f	568	167
549	f	569	167
550	f	570	164
551	f	571	164
552	f	572	168
553	f	573	169
554	t	574	167
555	f	575	168
556	f	576	168
557	t	577	168
558	t	578	169
559	f	580	169
560	f	579	169
561	f	581	171
564	f	582	172
562	f	584	172
563	f	583	171
565	t	585	172
566	f	586	172
567	f	587	170
568	t	588	170
569	f	589	170
570	t	590	173
571	t	591	171
572	f	592	171
573	t	593	175
574	f	594	175
575	f	596	175
576	f	595	175
577	t	597	177
578	f	598	177
579	f	599	173
580	f	601	170
581	f	600	177
582	f	602	177
583	f	603	173
584	f	604	173
585	t	605	174
586	f	606	174
587	f	607	176
588	f	608	176
589	f	609	176
590	t	610	176
591	f	611	182
592	f	612	182
593	f	614	178
594	f	615	174
596	f	616	174
595	f	613	182
597	t	617	180
598	f	618	180
599	f	619	180
600	t	620	179
601	f	622	179
602	f	621	180
603	t	623	182
604	f	624	179
605	t	625	178
606	t	626	181
607	f	627	181
608	f	628	178
609	f	629	178
610	f	630	181
611	f	631	181
612	f	633	183
613	f	634	183
614	t	632	183
615	f	635	183
616	f	636	179
617	f	637	210
618	f	638	210
619	f	639	210
620	t	640	212
622	f	642	211
621	f	641	211
623	f	644	212
625	t	643	215
624	t	645	211
626	f	646	215
627	f	647	215
628	f	648	215
630	f	650	213
629	t	649	213
631	f	651	213
632	f	652	213
633	t	653	216
634	f	654	216
635	t	656	210
636	f	655	216
637	f	657	217
638	t	658	217
639	f	661	211
640	f	662	217
641	f	659	216
642	f	660	217
644	t	664	218
643	f	663	218
645	f	665	218
646	t	668	219
647	f	666	218
648	f	667	219
649	f	669	219
650	f	670	219
651	t	671	220
652	f	672	220
653	f	673	220
654	f	674	191
655	f	675	220
656	f	676	191
657	f	677	191
658	t	678	193
659	t	679	191
660	f	680	212
661	f	681	212
662	f	682	193
663	f	683	193
664	f	684	193
665	f	685	196
666	t	686	196
667	f	688	196
668	f	687	196
669	f	689	201
670	f	691	201
671	t	690	201
672	f	692	201
673	f	693	206
675	t	695	206
674	f	694	206
676	f	696	206
677	t	697	194
678	f	698	194
679	f	699	194
680	f	701	192
681	f	702	192
682	f	700	194
683	t	703	192
684	f	704	192
685	t	705	195
686	f	706	195
687	f	707	195
688	f	709	195
689	t	708	197
690	f	710	197
691	f	711	197
692	f	712	198
694	f	715	198
693	f	714	197
695	t	713	198
696	f	716	198
697	t	717	200
698	f	718	200
699	f	719	200
700	f	720	200
701	t	721	199
702	f	722	199
703	f	723	199
704	f	724	199
705	f	725	202
706	f	726	202
707	f	727	202
708	t	728	202
709	t	729	203
710	f	730	203
711	f	731	203
712	f	734	204
713	f	733	204
714	f	732	203
715	f	735	204
716	t	736	204
717	f	738	207
718	f	737	207
719	t	739	207
720	f	740	207
721	t	741	205
722	f	742	205
723	f	743	205
724	f	744	205
725	t	745	209
726	f	746	209
727	f	747	209
728	f	748	209
729	t	749	208
730	f	750	208
731	f	751	208
732	t	752	214
734	f	754	214
733	f	753	208
735	f	755	214
736	f	756	214
738	f	759	244
739	f	762	222
740	f	761	223
737	f	757	244
741	f	760	244
742	f	758	222
743	f	763	222
744	t	764	222
745	f	765	248
746	t	766	248
747	f	767	248
748	f	768	225
749	f	769	248
750	f	770	225
751	t	771	223
752	f	772	225
753	t	773	225
754	f	774	223
755	t	775	221
757	t	776	250
756	f	777	221
758	f	779	221
760	f	780	250
759	f	778	223
761	f	781	221
762	t	782	224
763	f	784	224
764	f	783	224
765	t	785	226
767	f	787	224
766	f	786	250
768	f	788	250
769	f	789	226
770	f	790	226
771	f	791	228
772	f	792	228
773	f	793	226
774	t	794	228
775	f	795	227
776	f	796	231
777	f	797	227
778	t	798	227
779	f	801	229
780	f	799	227
781	t	800	231
782	f	802	231
783	f	803	228
784	f	804	231
785	f	805	229
786	f	807	229
787	t	806	229
788	t	808	230
789	f	810	230
790	f	809	230
791	t	811	236
792	f	812	232
793	t	813	232
794	f	814	232
795	f	815	232
796	f	816	230
797	f	817	237
798	f	818	237
799	f	819	237
800	f	820	233
801	f	821	236
802	f	823	236
803	f	822	236
804	t	825	237
805	f	826	233
806	f	824	233
807	f	827	234
808	f	828	234
809	t	830	235
810	f	831	235
811	t	829	234
812	f	832	235
813	t	833	238
814	f	834	235
815	t	835	233
816	f	836	239
817	f	837	239
818	f	838	234
819	f	839	239
820	t	840	241
821	f	841	241
822	f	843	238
823	f	842	241
824	f	844	238
825	f	845	238
826	f	846	241
827	t	847	239
829	f	848	243
828	f	849	240
830	t	851	243
831	f	852	240
832	f	850	240
833	f	853	242
834	t	854	242
835	f	855	243
836	f	856	242
837	f	857	246
838	f	858	246
839	f	859	245
840	t	860	245
841	t	861	240
842	f	863	245
843	f	864	247
844	f	862	245
845	f	865	247
846	f	866	247
847	f	867	243
848	t	868	249
849	f	869	249
850	f	870	249
851	f	871	242
852	f	872	246
853	t	873	246
854	f	874	249
855	t	875	244
856	t	876	247
857	f	877	255
858	f	878	255
859	f	880	273
860	f	879	273
861	t	881	273
862	f	882	273
863	t	883	255
864	t	884	276
865	f	885	276
866	f	886	276
867	f	887	276
868	f	888	256
869	f	890	255
870	t	889	278
871	f	891	278
872	f	892	278
873	f	893	256
874	f	894	278
875	t	895	280
876	f	896	280
877	f	898	280
878	f	897	280
879	f	899	279
880	f	900	279
881	t	901	279
882	f	902	279
883	f	903	277
884	t	904	252
885	f	905	252
886	f	906	277
887	f	907	277
888	f	910	253
889	t	909	277
890	t	908	256
891	f	912	253
892	t	911	253
893	f	913	256
894	f	914	251
895	f	916	252
896	f	915	251
897	f	917	254
898	f	918	252
899	t	919	251
901	f	920	257
900	t	922	257
902	t	921	254
903	f	923	257
904	t	925	258
905	f	924	257
906	f	927	251
907	f	928	253
908	f	926	258
909	t	929	261
910	f	930	261
911	f	931	261
912	f	932	261
913	t	933	259
914	f	934	254
915	f	935	254
916	f	936	259
917	t	937	262
918	f	938	262
919	f	939	262
920	f	940	262
921	f	941	260
922	f	942	258
924	f	944	258
923	t	943	260
925	f	945	260
926	f	946	260
927	t	947	263
928	f	948	263
929	f	949	263
930	f	950	259
931	f	952	259
932	t	951	265
933	f	953	265
934	f	954	265
935	f	955	263
936	f	956	264
937	f	957	265
938	t	958	264
939	f	960	268
940	t	959	268
941	f	961	268
942	f	962	268
943	f	963	267
944	f	964	267
945	f	965	264
946	f	966	264
947	t	967	267
948	f	968	266
949	f	969	269
950	f	970	266
951	f	971	269
952	t	972	269
953	f	973	267
954	f	975	269
955	f	976	266
957	t	977	266
956	f	974	274
958	f	978	275
959	t	979	274
960	f	980	274
961	f	982	274
962	f	981	275
963	t	983	275
964	t	984	272
965	f	985	272
966	f	986	272
967	t	988	271
968	f	987	275
969	f	989	272
970	f	990	270
972	f	994	270
971	f	992	271
973	f	995	270
974	t	993	270
975	f	991	271
976	f	996	271
\.


--
-- TOC entry 3399 (class 0 OID 16704)
-- Dependencies: 236
-- Data for Name: assessments_question; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_question (id, description, "time", points, difficulty_level, assessment_id) FROM stdin;
162	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	44
182	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	44
131	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	46
152	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	46
204	Which of the following types of loops are not supported in Python?	20	10	M	42
221	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	47
242	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	47
263	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	43
164	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	44
132	What is the maximum length of a Python identifier?	10	5	E	46
153	Which of the following functions converts date to corresponding time in Python?	30	20	H	46
183	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	44
205	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	42
222	What is the maximum length of a Python identifier?	10	5	E	47
243	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	47
264	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	43
161	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	44
133	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	46
154	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	46
184	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	44
206	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	42
223	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	47
244	Which of the following functions converts date to corresponding time in Python?	30	20	H	47
265	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	43
163	 Which of the following concepts is not a part of Python?	10	5	E	44
134	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	46
155	 Which of the following concepts is not a part of Python?	10	5	E	46
185	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	44
207	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	42
224	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	47
245	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	47
266	Which of the following functions converts date to corresponding time in Python?	30	20	H	43
165	What is the maximum length of a Python identifier?	10	5	E	44
135	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	46
156	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	46
187	 How is a code block indicated in Python?	10	5	E	44
186	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	44
208	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	42
225	Which of the following statements are used in Exception Handling in Python?	20	10	M	47
246	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	47
267	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	43
166	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	44
136	Which of the following types of loops are not supported in Python?	20	10	M	46
157	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	46
188	Which of the following functions converts date to corresponding time in Python?	30	20	H	44
209	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	42
226	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	47
247	 Which of the following concepts is not a part of Python?	10	5	E	47
268	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	43
167	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	44
137	 How is a code block indicated in Python?	10	5	E	46
189	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	44
158	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	46
210	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	42
227	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	47
248	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	47
269	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	43
168	Which of the following statements are used in Exception Handling in Python?	20	10	M	44
138	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	46
190	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	44
159	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	46
211	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	42
228	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	47
249	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	47
270	 Which of the following concepts is not a part of Python?	10	5	E	43
169	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	44
139	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	46
191	What is the maximum length of a Python identifier?	10	5	E	42
160	Which of the following statements are used in Exception Handling in Python?	20	10	M	46
212	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	42
229	Which of the following types of loops are not supported in Python?	20	10	M	47
250	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	47
271	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	43
170	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	44
140	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	46
192	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	42
213	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	42
230	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	47
251	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	43
272	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	43
171	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	44
141	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	46
193	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	42
214	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	42
231	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	47
252	What is the maximum length of a Python identifier?	10	5	E	43
273	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	43
172	Which of the following types of loops are not supported in Python?	20	10	M	44
142	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	46
194	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	42
215	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	42
232	 How is a code block indicated in Python?	10	5	E	47
253	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	43
274	Which of the following types of loops are not supported in Python?	20	10	M	43
173	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	44
143	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	46
195	 Which of the following concepts is not a part of Python?	10	5	E	42
216	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	42
233	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	47
254	 How is a code block indicated in Python?	10	5	E	43
275	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	43
174	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	44
144	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	46
196	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	42
217	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	42
234	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	47
255	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	43
276	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	43
175	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	44
145	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	46
197	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	42
218	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	42
235	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	47
256	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	43
277	Which of the following statements are used in Exception Handling in Python?	20	10	M	43
176	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	44
146	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	46
198	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	42
219	Which of the following functions converts date to corresponding time in Python?	30	20	H	42
236	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	47
257	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	43
278	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	43
147	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	46
177	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	44
199	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	42
220	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	42
237	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	47
258	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	43
279	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	43
148	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	46
178	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	44
200	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	42
238	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	47
259	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	43
280	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	43
149	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	46
179	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	44
201	 How is a code block indicated in Python?	10	5	E	42
239	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	47
260	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	43
150	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	46
180	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	44
202	Which of the following statements are used in Exception Handling in Python?	20	10	M	42
240	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	47
261	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	43
151	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	46
181	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	44
203	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	42
241	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	47
262	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	43
\.


--
-- TOC entry 3429 (class 0 OID 17096)
-- Dependencies: 266
-- Data for Name: assessments_userassessment; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_userassessment (id, assessment_id, user_id, passed, taken_time) FROM stdin;
102	43	1	f	2022-08-27 04:02:44.133064+00
84	46	1	f	2022-08-25 06:12:13.432267+00
85	46	1	f	2022-08-25 06:12:13.434314+00
103	44	1	f	2022-08-27 08:09:02.643378+00
95	46	4	t	2022-08-25 06:29:36.70261+00
96	44	4	t	2022-08-25 09:30:23.182681+00
97	42	4	f	2022-08-25 17:50:58.015559+00
98	43	4	f	2022-08-26 05:33:52.265671+00
99	47	4	f	2022-08-26 20:54:15.142964+00
100	47	1	t	2022-08-26 20:55:02.944843+00
101	42	1	t	2022-08-27 03:16:34.54902+00
\.


--
-- TOC entry 3372 (class 0 OID 16416)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3374 (class 0 OID 16426)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3370 (class 0 OID 16408)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add discussion	9	add_discussion
34	Can change discussion	9	change_discussion
35	Can delete discussion	9	delete_discussion
36	Can view discussion	9	view_discussion
37	Can add comments	10	add_comments
38	Can change comments	10	change_comments
39	Can delete comments	10	delete_comments
40	Can view comments	10	view_comments
41	Can add upvoted	11	add_upvoted
42	Can change upvoted	11	change_upvoted
43	Can delete upvoted	11	delete_upvoted
44	Can view upvoted	11	view_upvoted
45	Can add downvoted	12	add_downvoted
46	Can change downvoted	12	change_downvoted
47	Can delete downvoted	12	delete_downvoted
48	Can view downvoted	12	view_downvoted
49	Can add user	13	add_user
50	Can change user	13	change_user
51	Can delete user	13	delete_user
52	Can view user	13	view_user
53	Can add question	14	add_question
54	Can change question	14	change_question
55	Can delete question	14	delete_question
56	Can view question	14	view_question
57	Can add assessment	15	add_assessment
58	Can change assessment	15	change_assessment
59	Can delete assessment	15	delete_assessment
60	Can view assessment	15	view_assessment
61	Can add option	16	add_option
62	Can change option	16	change_option
63	Can delete option	16	delete_option
64	Can view option	16	view_option
65	Can add assess ques	17	add_assessques
66	Can change assess ques	17	change_assessques
67	Can delete assess ques	17	delete_assessques
68	Can view assess ques	17	view_assessques
69	Can add ques option	18	add_quesoption
70	Can change ques option	18	change_quesoption
71	Can delete ques option	18	delete_quesoption
72	Can view ques option	18	view_quesoption
73	Can add solution	19	add_solution
74	Can change solution	19	change_solution
75	Can delete solution	19	delete_solution
76	Can view solution	19	view_solution
77	Can add sub category	20	add_subcategory
78	Can change sub category	20	change_subcategory
79	Can delete sub category	20	delete_subcategory
80	Can view sub category	20	view_subcategory
81	Can add category	21	add_category
82	Can change category	21	change_category
83	Can delete category	21	delete_category
84	Can view category	21	view_category
85	Can add problem	22	add_problem
86	Can change problem	22	change_problem
87	Can delete problem	22	delete_problem
88	Can view problem	22	view_problem
89	Can add role	23	add_role
90	Can change role	23	change_role
91	Can delete role	23	delete_role
92	Can view role	23	view_role
93	Can add company	24	add_company
94	Can change company	24	change_company
95	Can delete company	24	delete_company
96	Can view company	24	view_company
97	Can add input output	25	add_inputoutput
98	Can change input output	25	change_inputoutput
99	Can delete input output	25	delete_inputoutput
100	Can view input output	25	view_inputoutput
101	Can add book mark	26	add_bookmark
102	Can change book mark	26	change_bookmark
103	Can delete book mark	26	delete_bookmark
104	Can view book mark	26	view_bookmark
105	Can add user assessment	27	add_userassessment
106	Can change user assessment	27	change_userassessment
107	Can delete user assessment	27	delete_userassessment
108	Can view user assessment	27	view_userassessment
\.


--
-- TOC entry 3376 (class 0 OID 16434)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$iAM30gD3dYsFdz44FSShOE$xhiSC4L4CbZEeSxoiRRg3wdqhvIUOue8zu9Oz8W0+gw=	\N	f	mashiat	Mashiat	Mustaq	mashiatmustaq98@gmail.com	f	t	2022-07-15 16:04:39.382252+00
2	pbkdf2_sha256$320000$M9JLYOgvmiwW0m5UQlvfhx$QhicAELk9WzksmOWxFk+OpPnTl0n2VosvkYWO62rXvQ=	\N	f	oishy	Monamy	Mustaq	oishy@gmail.com	f	t	2022-07-15 16:10:04.250954+00
3	pbkdf2_sha256$320000$y7gcxpAbY5MzmNRGiiFJbJ$NYm0ptkeZLB0d0PxX/zfkHjQ62wLlYGSJeUHXO7ttYA=	\N	f	raisa	Raisa	Mahmuda	raisa@gmail.com	f	t	2022-07-15 16:23:44.89533+00
5	pbkdf2_sha256$320000$NWRvgnJHFPJfRVNfvnSIX9$9No179T0FE3BYeuoH2PqxGhxR/yNgoa5qs4fpjJuyGo=	\N	f	najib	najibul	haque sarker	nhs@gmail.com	f	t	2022-07-31 05:44:50.728851+00
4	pbkdf2_sha256$320000$NmRdZ4MGO4QBIBy2yb5p89$93xxFjwIgDkJiuclx4KOodpAYTqXUiQPif3qJ5E32UY=	\N	f	taz	tahiea	taz	taz@gmail.com	f	t	2022-07-16 09:15:05.109274+00
6	pbkdf2_sha256$320000$oRQXy9Zo1ORKZL5uEBRvdU$s5C6XNS97b6I71/eHFu8U4h+M+Zr+Oo/WN7NoXVBS2Y=	\N	f	zarif	zarif	alam	zarif98sjs@gmail.com	f	t	2022-08-27 08:47:43.617666+00
\.


--
-- TOC entry 3378 (class 0 OID 16444)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3380 (class 0 OID 16452)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3383 (class 0 OID 16543)
-- Dependencies: 220
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
fe088fda38ae59b11d60628561d943e7503adf54	2022-07-15 16:04:56.316497+00	1
b7df5db3a2038faa97c1046b9d13a3a6ff831b52	2022-07-16 09:15:28.735429+00	4
6c4101de4697d2c855aa797e686d5bdea7175e9a	2022-07-31 06:04:07.923982+00	5
1d904a7794e82bbc6eec6da52525840038937d95	2022-08-27 08:48:09.617925+00	6
\.


--
-- TOC entry 3387 (class 0 OID 16569)
-- Dependencies: 224
-- Data for Name: discussions_comments; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_comments (id, comment, created_at, updated_at, discussion_id, parent, user_id, hash) FROM stdin;
1	<blockquote><strong><ins>Coursera</ins></strong></blockquote>	2022-07-17 04:27:02.651151+00	2022-07-17 04:27:02.651164+00	1	\N	4	dab36c35-a51a-4e3c-b605-45b964283770
2	<p><em>Sure</em></p>	2022-07-17 07:05:44.722368+00	2022-07-17 07:05:44.722387+00	3	\N	4	2d4b2f6f-2afe-44ee-a085-1d52e5dfbfe8
3	<p>thank you</p>	2022-07-17 07:05:52.267753+00	2022-07-17 07:05:52.267769+00	3	2d4b2f6f-2afe-44ee-a085-1d52e5dfbfe8	4	6b691148-18c9-4d7c-bf50-1a7386c92b0e
4	<p>This seems too tough</p>	2022-07-24 05:46:20.94569+00	2022-07-24 05:46:20.945719+00	7	\N	4	1fcfb570-e0d6-4b82-ae3e-b7df981e09d0
\.


--
-- TOC entry 3385 (class 0 OID 16558)
-- Dependencies: 222
-- Data for Name: discussions_discussion; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_discussion (id, title, description, created_at, updated_at, upvotes, downvotes, views, comment_count, user_id, tags) FROM stdin;
1	How to learn Python	# Suggest me sources to learn python	2022-07-17 04:26:19.449258+00	2022-07-17 08:33:49.696746+00	2	1	0	0	4	{python," knowledge"}
3	Common Interview questions	Can you tell me some common interview questions?	2022-07-17 07:05:23.483643+00	2022-07-17 08:33:55.809341+00	2	0	0	0	4	{interview}
6	PhonePe : Machine Coding	Time for Question Reading and understanding : 10 min.\nCoding Time : 90 min.\n\nQ. Design an efficient in-memory queueing system with low latency requirements and also write producer and consumer using multi threading with following constraints :\n\nMust Have Tasks :\n\nThere should be a queue, that can receive the message from the producer, and send the message to the consumer.\nQueue is bounded in size and completely held in-memory. Size should be configurable.\nQueue should only hold JSON messages.\nQueue will have at least one producer and multiple consumers.\nConsumers register callbacks that will be invoked whenever there is a new message\nAllow subscription of consumers to messages that match a particular expression\nConsumers might have dependency relationships between them.\nFor ex :\nif there are three consumers A, B and C. One dependency relationship can be that C cannot consume a particular message before A and B have consumed it.\nC -> (A,B) (-> means must process after).\n\nHandle concurrent writes and reads consistently between producer and consumers.\nBonus Tasks :\n\nProvide retry mechanisms to handle failures in message processing. It could be failure in publishing or consumption.\nHandle the message TTL. means the message could be expired after some time T. if a message is expired, it should not be delivered to the consumer.\nSuggestions :\nTry completing the tasks one by one, run it, test it, then move on to the next. Pick the task in any order that you want.\nThink about the extension of the problem before choosing your LLD. You might be asked to add some new features in this problem during evaluation time.\n\nRestriction :\nYou are not allowed to use in-built queue data structure provided by any language. Expected to implement the queue.\n\nAllowed :\nYou can use library for JSON\n\n**How you will be evaluated **\nCode should be working\nSeparation of concerns\nAbstractions\nApplication of OO design principles\nTestability\nCode readability\nLanguage proficiency\n\n[execution time limit] 3 seconds (java)\nSaved	2022-07-24 05:39:17.858815+00	2022-07-24 05:39:17.858858+00	0	0	0	0	1	{machinecodinground,phonepe,multithreading}
8	Amazon On-Campus	Is amazon visited any college on-campus?If so in which platform is it asking questions,Amcat or hackerrank?If you have some questions please do share.\n\n	2022-07-24 05:45:31.474567+00	2022-07-24 05:45:31.474591+00	0	0	0	0	1	{amazon,assessment}
4	How to write an Interview Question post	## LeetCode Discuss is a community where you can share questions and experiences from interviews.\nBefore you post, please try to follow these guidelines:\n\nThe title should follow this format:\n\nCompany Name | Stage (Phone, Onsite, OA) | Question name\nFor example, this could look like:\n\n~~\nAmazon | Phone | Missing number\nGoogle | Onsite | Robot Room Cleaner\nPlease post clear and concise descriptions of the problems and make sure your question has not already been posted.\n\n\nIf you're including code in your post, please surround the code block with three backticks (```) to make it more readable. Posts that do not follow this guideline may be removed by moderators.\n\nEach question should be accompanied by at least one example - the more the better!\n\nPlease enter the company name in the tags shown below which will help people see your question more easily.\n\nEach post should include only one question. If you want to share your overall interview experience, please post in the Interview Experience category.\n\nYou represent and warrant that any User Content that you submit, post or display through the Services does not infringe or violate any of the copyright, patent, trademark, trade name, trade secrets or any other personal or proprietary rights of any third party.\n\nHappy discussing! :)	2022-07-17 07:11:04.386933+00	2022-07-17 07:11:04.386972+00	0	0	0	0	4	{interview}
2	How to ace google interviews	give suggestions on acing google interviews	2022-07-17 07:03:28.011544+00	2022-07-17 08:21:49.921954+00	0	1	0	0	4	{google," job"}
5	Uber System Design	Some questions asked in Uber system design\n\nWhere to store the driver info ?\nDriver -> Vehicle . Where will you store ? Relational DB or NoSQL?\nDriver location keeps changing every 5 seconds. Write-heavy system. Which is the best option to store this?\nCustomer is shown a price for a ride but he does not book the ride immediately. By the time he clicks 'Confirm ride', the price may change. The ride can no longer be given at the same old price. How to detect and handle this ?\nWhere do we store the booking information?\nHow will you handle Uberpool?\nIn some places and some timings, there may be surge in traffic. eg.. people leaving the office in the evenings. Can we cache any data ? What data would we like to cache?	2022-07-17 08:33:06.994458+00	2022-07-17 08:33:06.994473+00	0	0	0	0	1	{SystemDesign}
7	Microsoft online assessment	Got this question in microsoft OA round:\n\nA garbage truck collects plastic, metal and glass garbages(one at a time) from N houses. Array D consists of time taken by the truck to carry a particular garbage from ith house. Array T consists of string values(M -> Metal, G -> Glass, P -> Plastic) stating the type of garbages present in ith house.\nCalculate the minimum time taken by the truck to collect all the garbages and return back to its garage.\n\nExample Test Cases:\nTest Case 1:\n```\nInput:\nD: [3, 2, 4]\nT: ["MPM", "", "G"]\n\nOutput:\n19\n```\nExplanation: For house at 0th house metal truck will take 3 hours to arrive, \n2 hours to pick up garbage and 3 hours to go back i.e. 8 hours total. \nPlastic truck will take 3 hours to arrive at 0th house, 1 hour to pick up \ngarbage and 3 hours to go back again, total of 7 hours. Glass truck will take 3+2+4=9hours \nto arrive at 2nd house, 1 hour to pick up garbage and 9 hours again to go back, \nmaking it a total time of 19 hours. Hence, the minimum time taken for all the \ngarbages to be collected is 19 hours.\nTest Case 2:\n```json\nInput:\nD: [2,1,1,1,2]\nT: ["", "PP", "PP", "GM", ""]\n\nOutput:\n12\n```\nExplanation: Plastic truck will take 4 hours to reach 2th house, 2 hours to \ncollect from 2th house, 2 hours to collect from 1th house and 4 hours to go \nback again, total 12 hours. Glass truck will take 5 hours to arrive at 3rd house, \n1 hour to collect garbage and 5 hours to go back, making a total of 11 hours. \nSame for metal truck.\n\nConstraints:\nNumber of elements in D and T array can have max of 10^5.\nEach string length in T array can have max length of 10^5.\n\nCan any one provide the efficient algorithm to solve this. TIA.	2022-07-24 05:43:20.346638+00	2022-07-24 05:46:05.671277+00	1	0	0	0	1	{microsoft,onlineassessment}
\.


--
-- TOC entry 3391 (class 0 OID 16633)
-- Dependencies: 228
-- Data for Name: discussions_downvoted; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_downvoted (id, discussion_id, user_id) FROM stdin;
2	2	4
\.


--
-- TOC entry 3389 (class 0 OID 16613)
-- Dependencies: 226
-- Data for Name: discussions_upvoted; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_upvoted (id, discussion_id, user_id) FROM stdin;
10	1	4
11	3	4
12	1	1
13	3	1
14	7	4
\.


--
-- TOC entry 3382 (class 0 OID 16512)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 16398)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	authtoken	tokenproxy
9	discussions	discussion
10	discussions	comments
11	discussions	upvoted
12	discussions	downvoted
13	users	user
14	assessments	question
15	assessments	assessment
16	assessments	option
17	assessments	assessques
18	assessments	quesoption
19	problems	solution
20	problems	subcategory
21	problems	category
22	problems	problem
23	problems	role
24	problems	company
25	problems	inputoutput
26	problems	bookmark
27	assessments	userassessment
\.


--
-- TOC entry 3366 (class 0 OID 16387)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-07-15 16:02:41.162065+00
2	auth	0001_initial	2022-07-15 16:02:41.219053+00
3	admin	0001_initial	2022-07-15 16:02:41.236428+00
4	admin	0002_logentry_remove_auto_add	2022-07-15 16:02:41.244559+00
5	admin	0003_logentry_add_action_flag_choices	2022-07-15 16:02:41.254086+00
6	contenttypes	0002_remove_content_type_name	2022-07-15 16:02:41.271511+00
7	auth	0002_alter_permission_name_max_length	2022-07-15 16:02:41.281304+00
8	auth	0003_alter_user_email_max_length	2022-07-15 16:02:41.29081+00
9	auth	0004_alter_user_username_opts	2022-07-15 16:02:41.298263+00
10	auth	0005_alter_user_last_login_null	2022-07-15 16:02:41.305555+00
11	auth	0006_require_contenttypes_0002	2022-07-15 16:02:41.307272+00
12	auth	0007_alter_validators_add_error_messages	2022-07-15 16:02:41.317061+00
13	auth	0008_alter_user_username_max_length	2022-07-15 16:02:41.330426+00
14	auth	0009_alter_user_last_name_max_length	2022-07-15 16:02:41.338988+00
15	auth	0010_alter_group_name_max_length	2022-07-15 16:02:41.350008+00
16	auth	0011_update_proxy_permissions	2022-07-15 16:02:41.359526+00
17	auth	0012_alter_user_first_name_max_length	2022-07-15 16:02:41.367744+00
18	authtoken	0001_initial	2022-07-15 16:02:41.383234+00
19	authtoken	0002_auto_20160226_1747	2022-07-15 16:02:41.414951+00
20	authtoken	0003_tokenproxy	2022-07-15 16:02:41.418056+00
21	discussions	0001_initial	2022-07-15 16:02:41.425975+00
22	discussions	0002_comments	2022-07-15 16:02:41.440114+00
23	discussions	0003_comments_parent	2022-07-15 16:02:41.447309+00
24	discussions	0004_discussion_user	2022-07-15 16:02:41.462092+00
25	discussions	0005_comments_user	2022-07-15 16:02:41.475012+00
26	discussions	0006_comments_hash	2022-07-15 16:02:41.487278+00
27	discussions	0007_alter_comments_parent	2022-07-15 16:02:41.513569+00
28	discussions	0008_upvoted	2022-07-15 16:02:41.534685+00
29	discussions	0009_downvoted	2022-07-15 16:02:41.563691+00
30	discussions	0010_discussion_tags	2022-07-15 16:02:41.578346+00
31	sessions	0001_initial	2022-07-15 16:02:41.588396+00
32	users	0001_initial	2022-07-15 16:02:41.594353+00
33	users	0002_delete_user	2022-07-15 16:02:41.597644+00
34	users	0003_initial	2022-07-15 16:02:41.616046+00
35	assessments	0001_initial	2022-07-17 07:02:07.173056+00
36	problems	0001_initial	2022-07-17 07:02:07.355513+00
37	problems	0002_alter_problem_companies_alter_problem_roles_and_more	2022-07-17 07:02:07.423192+00
38	problems	0003_alter_inputoutput_problem	2022-07-17 07:02:07.444005+00
39	problems	0004_alter_inputoutput_problem	2022-07-17 07:02:07.466462+00
40	assessments	0002_assessment_roles_assessment_subcategories_and_more	2022-07-19 18:07:39.376972+00
41	assessments	0003_assessment_image_link	2022-07-19 19:32:18.042901+00
42	assessments	0004_remove_question_image_link	2022-07-19 20:15:42.484383+00
43	assessments	0005_remove_option_image_link	2022-07-23 19:14:16.887077+00
44	assessments	0006_remove_assessment_subcategories_and_more	2022-07-24 05:28:10.91557+00
45	problems	0005_remove_problem_companies_remove_problem_roles_and_more	2022-07-31 03:50:58.005559+00
46	problems	0006_problem_companies	2022-07-31 03:50:58.058013+00
47	problems	0007_problem_roles_problem_subcategories	2022-07-31 03:50:58.165295+00
48	problems	0008_alter_problem_memory_limit_alter_problem_time_limit	2022-07-31 03:50:58.211764+00
49	assessments	0007_userassessment	2022-08-13 13:15:27.286798+00
50	discussions	0011_comments_downvotes_comments_upvotes	2022-08-13 21:00:37.212296+00
51	discussions	0012_commentupvoted_commentdownvoted	2022-08-13 21:00:37.293986+00
52	discussions	0013_remove_commentupvoted_comment_and_more	2022-08-13 21:00:37.386733+00
53	assessments	0008_userassessment_passed_userassessment_taken_time	2022-08-21 08:01:07.291196+00
54	users	0004_user_languages_user_skills	2022-08-25 19:11:15.720171+00
55	problems	0009_alter_solution_language_alter_solution_solve_status	2022-08-26 20:19:46.127496+00
56	problems	0010_solution_time_added	2022-08-26 20:19:46.159+00
\.


--
-- TOC entry 3392 (class 0 OID 16651)
-- Dependencies: 229
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3417 (class 0 OID 16856)
-- Dependencies: 254
-- Data for Name: problems_bookmark; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_bookmark (id, date_added, problem_id, user_id) FROM stdin;
\.


--
-- TOC entry 3403 (class 0 OID 16755)
-- Dependencies: 240
-- Data for Name: problems_category; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_category (id, name, description) FROM stdin;
3	Database Management	
4	 SQL	
5	Algorithm	
6	 Data Analysis	
7	 Computer Vision	
8	 Machine Learning	
9	Data Analysis	
10		
1	Algorithms	
2	 Data Structure	
\.


--
-- TOC entry 3405 (class 0 OID 16766)
-- Dependencies: 242
-- Data for Name: problems_company; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_company (id, name, description) FROM stdin;
\.


--
-- TOC entry 3415 (class 0 OID 16845)
-- Dependencies: 252
-- Data for Name: problems_inputoutput; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_inputoutput (id, input, output, points, problem_id) FROM stdin;
\.


--
-- TOC entry 3407 (class 0 OID 16777)
-- Dependencies: 244
-- Data for Name: problems_problem; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem (id, name, description, time_limit, memory_limit, difficulty, submission_count, solve_count) FROM stdin;
1	Gas Station 2	There are $n$ gas stations along a circular route, where the amount of gas at the $i^{th}$ station is $gas[i]$.\n\n\nYou have a car with an unlimited gas tank and it costs $cost[i]$ of gas to travel from the $i^{th}$ station to its next $(i + 1)^{th}$ station. You begin the journey with an empty tank at one of the gas stations.\n\n\nGiven two integer arrays $gas$ and $cost$, return *the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return* $-1$. \n\n\nIf there exists a solution, **it is guaranteed to be unique.** \n\n\n### **Example**\n\n**Input:** gas = [1,2,3,4,5], cost = [3,4,5,1,2]\n\n**Output:** 3\n\n**Explanation:**\n\nStart at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4\n\nTravel to station 4. Your tank = 4 - 1 + 5 = 8\n\nTravel to station 0. Your tank = 8 - 2 + 1 = 7\n\nTravel to station 1. Your tank = 7 - 3 + 2 = 6\n\nTravel to station 2. Your tank = 6 - 4 + 3 = 5\n\nTravel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.\n\nTherefore, return 3 as the starting index.\n\n**Constraints:**\n\n- $n == gas.length == cost.length$\n\n- $1 <= n <= 105$\n\n- $0 <= gas[i], cost[i] <= 104$\n\n	2.00	256	Easy	0	0
\.


--
-- TOC entry 3423 (class 0 OID 17016)
-- Dependencies: 260
-- Data for Name: problems_problem_companies; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_companies (id, problem_id, company_id) FROM stdin;
\.


--
-- TOC entry 3425 (class 0 OID 17038)
-- Dependencies: 262
-- Data for Name: problems_problem_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_roles (id, problem_id, role_id) FROM stdin;
\.


--
-- TOC entry 3427 (class 0 OID 17046)
-- Dependencies: 264
-- Data for Name: problems_problem_subcategories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_subcategories (id, problem_id, subcategory_id) FROM stdin;
\.


--
-- TOC entry 3409 (class 0 OID 16796)
-- Dependencies: 246
-- Data for Name: problems_role; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_role (id, name, description) FROM stdin;
4	gamesdeveloper	
5	pythondeveloper	
32	Backend Engineer	
29	 Software Developer	
28	Software Developer	
31	 Backend Engineer	
33	Manager	
21	 Project Manager	
22	{'id': 19, 'name': 'Machine Learning Engineer', 'description': ''}	
23	{'id': 20, 'name': ' Data Analyst', 'description': ''}	
24	{'id': 21, 'name': ' Project Manager', 'description': ''}	
19	Machine Learning Engineer	
26	Data Engineer	
20	 Data Analyst	
30	 AI Engineer	
25	Data Analyst	
27	 Manager	
\.


--
-- TOC entry 3413 (class 0 OID 16818)
-- Dependencies: 250
-- Data for Name: problems_solution; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_solution (id, code, language, runtime, memory_usage, solve_status, problem_id, user_id, time_added) FROM stdin;
\.


--
-- TOC entry 3411 (class 0 OID 16807)
-- Dependencies: 248
-- Data for Name: problems_subcategory; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_subcategory (id, name, description, category_id) FROM stdin;
\.


--
-- TOC entry 3393 (class 0 OID 16669)
-- Dependencies: 230
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users_user (user_ptr_id, city, country, about, occupation, current_workplace, website_link, github_link, languages, skills) FROM stdin;
1								\N	\N
2								\N	\N
3								\N	\N
5								\N	\N
4								\N	{CPP,Django,git,Powerpoint}
6								\N	\N
\.


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 257
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_categories_id_seq', 15, true);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 231
-- Name: assessments_assessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_id_seq', 48, true);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 255
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_roles_id_seq', 43, true);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 233
-- Name: assessments_option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_option_id_seq', 996, true);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 237
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_quesoption_id_seq', 976, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 235
-- Name: assessments_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_question_id_seq', 280, true);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 265
-- Name: assessments_userassessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_userassessment_id_seq', 103, true);


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 223
-- Name: discussions_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_comments_id_seq', 4, true);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 221
-- Name: discussions_discussion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_discussion_id_seq', 8, true);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 227
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_downvoted_id_seq', 2, true);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 225
-- Name: discussions_upvoted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_upvoted_id_seq', 14, true);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 56, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 253
-- Name: problems_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_bookmark_id_seq', 1, false);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 239
-- Name: problems_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_category_id_seq', 10, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 241
-- Name: problems_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_company_id_seq', 1, false);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 251
-- Name: problems_inputoutput_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_inputoutput_id_seq', 1, false);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 259
-- Name: problems_problem_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_companies_id_seq', 1, false);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 243
-- Name: problems_problem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_id_seq', 1, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 261
-- Name: problems_problem_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_roles_id_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 263
-- Name: problems_problem_subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_subcategories_id_seq', 1, false);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 245
-- Name: problems_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_role_id_seq', 33, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 249
-- Name: problems_solution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_solution_id_seq', 1, false);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 247
-- Name: problems_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_subcategory_id_seq', 3, true);


--
-- TOC entry 3173 (class 2606 OID 17001)
-- Name: assessments_assessment_categories assessments_assessment_c_assessment_id_category_i_a39850b4_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessment_c_assessment_id_category_i_a39850b4_uniq UNIQUE (assessment_id, category_id);


--
-- TOC entry 3177 (class 2606 OID 16999)
-- Name: assessments_assessment_categories assessments_assessment_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessment_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3134 (class 2606 OID 16690)
-- Name: assessments_assessment assessments_assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment
    ADD CONSTRAINT assessments_assessment_pkey PRIMARY KEY (id);


--
-- TOC entry 3167 (class 2606 OID 16964)
-- Name: assessments_assessment_roles assessments_assessment_r_assessment_id_role_id_48a76d7a_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessment_r_assessment_id_role_id_48a76d7a_uniq UNIQUE (assessment_id, role_id);


--
-- TOC entry 3170 (class 2606 OID 16948)
-- Name: assessments_assessment_roles assessments_assessment_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessment_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3136 (class 2606 OID 16701)
-- Name: assessments_option assessments_option_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_option
    ADD CONSTRAINT assessments_option_pkey PRIMARY KEY (id);


--
-- TOC entry 3142 (class 2606 OID 16720)
-- Name: assessments_quesoption assessments_quesoption_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesoption_pkey PRIMARY KEY (id);


--
-- TOC entry 3139 (class 2606 OID 16712)
-- Name: assessments_question assessments_question_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question
    ADD CONSTRAINT assessments_question_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 17101)
-- Name: assessments_userassessment assessments_userassessment_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment
    ADD CONSTRAINT assessments_userassessment_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 2606 OID 16541)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3082 (class 2606 OID 16468)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3085 (class 2606 OID 16431)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3079 (class 2606 OID 16421)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3072 (class 2606 OID 16459)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3074 (class 2606 OID 16413)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3093 (class 2606 OID 16449)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3096 (class 2606 OID 16483)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3087 (class 2606 OID 16439)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3099 (class 2606 OID 16457)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3102 (class 2606 OID 16497)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3090 (class 2606 OID 16535)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3109 (class 2606 OID 16547)
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- TOC entry 3111 (class 2606 OID 16549)
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- TOC entry 3117 (class 2606 OID 16577)
-- Name: discussions_comments discussions_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 3113 (class 2606 OID 16566)
-- Name: discussions_discussion discussions_discussion_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion
    ADD CONSTRAINT discussions_discussion_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 16638)
-- Name: discussions_downvoted discussions_downvoted_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvoted_pkey PRIMARY KEY (id);


--
-- TOC entry 3121 (class 2606 OID 16618)
-- Name: discussions_upvoted discussions_upvoted_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_upvoted
    ADD CONSTRAINT discussions_upvoted_pkey PRIMARY KEY (id);


--
-- TOC entry 3105 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3067 (class 2606 OID 16405)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3069 (class 2606 OID 16403)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3065 (class 2606 OID 16395)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3129 (class 2606 OID 16658)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3163 (class 2606 OID 16861)
-- Name: problems_bookmark problems_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_pkey PRIMARY KEY (id);


--
-- TOC entry 3145 (class 2606 OID 16763)
-- Name: problems_category problems_category_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_category
    ADD CONSTRAINT problems_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 16774)
-- Name: problems_company problems_company_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_company
    ADD CONSTRAINT problems_company_pkey PRIMARY KEY (id);


--
-- TOC entry 3160 (class 2606 OID 16853)
-- Name: problems_inputoutput problems_inputoutput_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput
    ADD CONSTRAINT problems_inputoutput_pkey PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 17021)
-- Name: problems_problem_companies problems_problem_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 17023)
-- Name: problems_problem_companies problems_problem_companies_problem_id_company_id_139482c3_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_companies_problem_id_company_id_139482c3_uniq UNIQUE (problem_id, company_id);


--
-- TOC entry 3149 (class 2606 OID 16785)
-- Name: problems_problem problems_problem_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem
    ADD CONSTRAINT problems_problem_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 17043)
-- Name: problems_problem_roles problems_problem_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 17053)
-- Name: problems_problem_roles problems_problem_roles_problem_id_role_id_8e4c921f_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_problem_id_role_id_8e4c921f_uniq UNIQUE (problem_id, role_id);


--
-- TOC entry 3191 (class 2606 OID 17067)
-- Name: problems_problem_subcategories problems_problem_subcate_problem_id_subcategory_i_8024c4a4_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_subcate_problem_id_subcategory_i_8024c4a4_uniq UNIQUE (problem_id, subcategory_id);


--
-- TOC entry 3193 (class 2606 OID 17051)
-- Name: problems_problem_subcategories problems_problem_subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_subcategories_pkey PRIMARY KEY (id);


--
-- TOC entry 3151 (class 2606 OID 16804)
-- Name: problems_role problems_role_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_role
    ADD CONSTRAINT problems_role_pkey PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 16826)
-- Name: problems_solution problems_solution_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_pkey PRIMARY KEY (id);


--
-- TOC entry 3154 (class 2606 OID 16815)
-- Name: problems_subcategory problems_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory
    ADD CONSTRAINT problems_subcategory_pkey PRIMARY KEY (id);


--
-- TOC entry 3132 (class 2606 OID 16676)
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (user_ptr_id);


--
-- TOC entry 3174 (class 1259 OID 17012)
-- Name: assessments_assessment_categories_assessment_id_bd0ae8fa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_categories_assessment_id_bd0ae8fa ON public.assessments_assessment_categories USING btree (assessment_id);


--
-- TOC entry 3175 (class 1259 OID 17013)
-- Name: assessments_assessment_categories_category_id_8ed2a4fa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_categories_category_id_8ed2a4fa ON public.assessments_assessment_categories USING btree (category_id);


--
-- TOC entry 3168 (class 1259 OID 16975)
-- Name: assessments_assessment_roles_assessment_id_ba5f8115; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_roles_assessment_id_ba5f8115 ON public.assessments_assessment_roles USING btree (assessment_id);


--
-- TOC entry 3171 (class 1259 OID 16976)
-- Name: assessments_assessment_roles_role_id_f6ee4e3b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_roles_role_id_f6ee4e3b ON public.assessments_assessment_roles USING btree (role_id);


--
-- TOC entry 3140 (class 1259 OID 16739)
-- Name: assessments_quesoption_option_id_d298963d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_quesoption_option_id_d298963d ON public.assessments_quesoption USING btree (option_id);


--
-- TOC entry 3143 (class 1259 OID 16740)
-- Name: assessments_quesoption_question_id_0233bee8; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_quesoption_question_id_0233bee8 ON public.assessments_quesoption USING btree (question_id);


--
-- TOC entry 3137 (class 1259 OID 16991)
-- Name: assessments_question_assessment_id_165f6d6d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_question_assessment_id_165f6d6d ON public.assessments_question USING btree (assessment_id);


--
-- TOC entry 3196 (class 1259 OID 17112)
-- Name: assessments_userassessment_assessment_id_49144e6e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_userassessment_assessment_id_49144e6e ON public.assessments_userassessment USING btree (assessment_id);


--
-- TOC entry 3199 (class 1259 OID 17113)
-- Name: assessments_userassessment_user_id_0bbc6cc0; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_userassessment_user_id_0bbc6cc0 ON public.assessments_userassessment USING btree (user_id);


--
-- TOC entry 3075 (class 1259 OID 16542)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3080 (class 1259 OID 16479)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3083 (class 1259 OID 16480)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3070 (class 1259 OID 16465)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3091 (class 1259 OID 16495)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3094 (class 1259 OID 16494)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3097 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3100 (class 1259 OID 16508)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3088 (class 1259 OID 16536)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3107 (class 1259 OID 16555)
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- TOC entry 3115 (class 1259 OID 16583)
-- Name: discussions_comments_discussion_id_f90e1469; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_comments_discussion_id_f90e1469 ON public.discussions_comments USING btree (discussion_id);


--
-- TOC entry 3118 (class 1259 OID 16601)
-- Name: discussions_comments_user_id_264c0caa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_comments_user_id_264c0caa ON public.discussions_comments USING btree (user_id);


--
-- TOC entry 3114 (class 1259 OID 16595)
-- Name: discussions_discussion_user_id_243d8c0b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_discussion_user_id_243d8c0b ON public.discussions_discussion USING btree (user_id);


--
-- TOC entry 3123 (class 1259 OID 16649)
-- Name: discussions_downvoted_discussion_id_94acc25e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_downvoted_discussion_id_94acc25e ON public.discussions_downvoted USING btree (discussion_id);


--
-- TOC entry 3126 (class 1259 OID 16650)
-- Name: discussions_downvoted_user_id_ce7b0bbe; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_downvoted_user_id_ce7b0bbe ON public.discussions_downvoted USING btree (user_id);


--
-- TOC entry 3119 (class 1259 OID 16629)
-- Name: discussions_upvoted_discussion_id_39235d74; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_upvoted_discussion_id_39235d74 ON public.discussions_upvoted USING btree (discussion_id);


--
-- TOC entry 3122 (class 1259 OID 16630)
-- Name: discussions_upvoted_user_id_f8233b27; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_upvoted_user_id_f8233b27 ON public.discussions_upvoted USING btree (user_id);


--
-- TOC entry 3103 (class 1259 OID 16532)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3106 (class 1259 OID 16533)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3127 (class 1259 OID 16660)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3130 (class 1259 OID 16659)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3164 (class 1259 OID 16938)
-- Name: problems_bookmark_problem_id_9ee2c82f; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_bookmark_problem_id_9ee2c82f ON public.problems_bookmark USING btree (problem_id);


--
-- TOC entry 3165 (class 1259 OID 16939)
-- Name: problems_bookmark_user_id_550f864e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_bookmark_user_id_550f864e ON public.problems_bookmark USING btree (user_id);


--
-- TOC entry 3161 (class 1259 OID 16927)
-- Name: problems_inputoutput_problem_id_9dd618b3; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_inputoutput_problem_id_9dd618b3 ON public.problems_inputoutput USING btree (problem_id);


--
-- TOC entry 3178 (class 1259 OID 17035)
-- Name: problems_problem_companies_company_id_62f5fe1d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_companies_company_id_62f5fe1d ON public.problems_problem_companies USING btree (company_id);


--
-- TOC entry 3181 (class 1259 OID 17034)
-- Name: problems_problem_companies_problem_id_496e4620; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_companies_problem_id_496e4620 ON public.problems_problem_companies USING btree (problem_id);


--
-- TOC entry 3186 (class 1259 OID 17064)
-- Name: problems_problem_roles_problem_id_52d6434b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_roles_problem_id_52d6434b ON public.problems_problem_roles USING btree (problem_id);


--
-- TOC entry 3189 (class 1259 OID 17065)
-- Name: problems_problem_roles_role_id_6ee93c61; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_roles_role_id_6ee93c61 ON public.problems_problem_roles USING btree (role_id);


--
-- TOC entry 3194 (class 1259 OID 17078)
-- Name: problems_problem_subcategories_problem_id_63c721e1; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_subcategories_problem_id_63c721e1 ON public.problems_problem_subcategories USING btree (problem_id);


--
-- TOC entry 3195 (class 1259 OID 17079)
-- Name: problems_problem_subcategories_subcategory_id_703d70cc; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_subcategories_subcategory_id_703d70cc ON public.problems_problem_subcategories USING btree (subcategory_id);


--
-- TOC entry 3157 (class 1259 OID 16892)
-- Name: problems_solution_problem_id_2d4e6e8e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_solution_problem_id_2d4e6e8e ON public.problems_solution USING btree (problem_id);


--
-- TOC entry 3158 (class 1259 OID 16893)
-- Name: problems_solution_user_id_1d693e38; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_solution_user_id_1d693e38 ON public.problems_solution USING btree (user_id);


--
-- TOC entry 3152 (class 1259 OID 16881)
-- Name: problems_subcategory_category_id_fda38037; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_subcategory_category_id_fda38037 ON public.problems_subcategory USING btree (category_id);


--
-- TOC entry 3227 (class 2606 OID 16965)
-- Name: assessments_assessment_roles assessments_assessme_assessment_id_ba5f8115_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessme_assessment_id_ba5f8115_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3229 (class 2606 OID 17002)
-- Name: assessments_assessment_categories assessments_assessme_assessment_id_bd0ae8fa_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessme_assessment_id_bd0ae8fa_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3230 (class 2606 OID 17007)
-- Name: assessments_assessment_categories assessments_assessme_category_id_8ed2a4fa_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessme_category_id_8ed2a4fa_fk_problems_ FOREIGN KEY (category_id) REFERENCES public.problems_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3228 (class 2606 OID 16970)
-- Name: assessments_assessment_roles assessments_assessme_role_id_f6ee4e3b_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessme_role_id_f6ee4e3b_fk_problems_ FOREIGN KEY (role_id) REFERENCES public.problems_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3219 (class 2606 OID 16729)
-- Name: assessments_quesoption assessments_quesopti_option_id_d298963d_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesopti_option_id_d298963d_fk_assessmen FOREIGN KEY (option_id) REFERENCES public.assessments_option(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3220 (class 2606 OID 16734)
-- Name: assessments_quesoption assessments_quesopti_question_id_0233bee8_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesopti_question_id_0233bee8_fk_assessmen FOREIGN KEY (question_id) REFERENCES public.assessments_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3218 (class 2606 OID 16958)
-- Name: assessments_question assessments_question_assessment_id_165f6d6d_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question
    ADD CONSTRAINT assessments_question_assessment_id_165f6d6d_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3237 (class 2606 OID 17102)
-- Name: assessments_userassessment assessments_userasse_assessment_id_49144e6e_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment
    ADD CONSTRAINT assessments_userasse_assessment_id_49144e6e_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3238 (class 2606 OID 17107)
-- Name: assessments_userassessment assessments_userassessment_user_id_0bbc6cc0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment
    ADD CONSTRAINT assessments_userassessment_user_id_0bbc6cc0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3202 (class 2606 OID 16474)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3201 (class 2606 OID 16469)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3200 (class 2606 OID 16460)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3204 (class 2606 OID 16489)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3203 (class 2606 OID 16484)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3206 (class 2606 OID 16503)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3205 (class 2606 OID 16498)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3209 (class 2606 OID 16550)
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3211 (class 2606 OID 16578)
-- Name: discussions_comments discussions_comments_discussion_id_f90e1469_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_discussion_id_f90e1469_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3212 (class 2606 OID 16596)
-- Name: discussions_comments discussions_comments_user_id_264c0caa_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_user_id_264c0caa_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3210 (class 2606 OID 16590)
-- Name: discussions_discussion discussions_discussion_user_id_243d8c0b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion
    ADD CONSTRAINT discussions_discussion_user_id_243d8c0b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3215 (class 2606 OID 16639)
-- Name: discussions_downvoted discussions_downvote_discussion_id_94acc25e_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvote_discussion_id_94acc25e_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3216 (class 2606 OID 16644)
-- Name: discussions_downvoted discussions_downvoted_user_id_ce7b0bbe_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvoted_user_id_ce7b0bbe_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3213 (class 2606 OID 16619)
-- Name: discussions_upvoted discussions_upvoted_discussion_id_39235d74_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_upvoted
    ADD CONSTRAINT discussions_upvoted_discussion_id_39235d74_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3214 (class 2606 OID 16624)
-- Name: discussions_upvoted discussions_upvoted_user_id_f8233b27_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_upvoted
    ADD CONSTRAINT discussions_upvoted_user_id_f8233b27_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3207 (class 2606 OID 16522)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3208 (class 2606 OID 16527)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3225 (class 2606 OID 16928)
-- Name: problems_bookmark problems_bookmark_problem_id_9ee2c82f_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_problem_id_9ee2c82f_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3226 (class 2606 OID 16933)
-- Name: problems_bookmark problems_bookmark_user_id_550f864e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_user_id_550f864e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3224 (class 2606 OID 16922)
-- Name: problems_inputoutput problems_inputoutput_problem_id_9dd618b3_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput
    ADD CONSTRAINT problems_inputoutput_problem_id_9dd618b3_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3232 (class 2606 OID 17029)
-- Name: problems_problem_companies problems_problem_com_company_id_62f5fe1d_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_com_company_id_62f5fe1d_fk_problems_ FOREIGN KEY (company_id) REFERENCES public.problems_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3231 (class 2606 OID 17024)
-- Name: problems_problem_companies problems_problem_com_problem_id_496e4620_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_com_problem_id_496e4620_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3233 (class 2606 OID 17054)
-- Name: problems_problem_roles problems_problem_rol_problem_id_52d6434b_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_rol_problem_id_52d6434b_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3234 (class 2606 OID 17059)
-- Name: problems_problem_roles problems_problem_roles_role_id_6ee93c61_fk_problems_role_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_role_id_6ee93c61_fk_problems_role_id FOREIGN KEY (role_id) REFERENCES public.problems_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3235 (class 2606 OID 17068)
-- Name: problems_problem_subcategories problems_problem_sub_problem_id_63c721e1_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_sub_problem_id_63c721e1_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3236 (class 2606 OID 17073)
-- Name: problems_problem_subcategories problems_problem_sub_subcategory_id_703d70cc_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_sub_subcategory_id_703d70cc_fk_problems_ FOREIGN KEY (subcategory_id) REFERENCES public.problems_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3222 (class 2606 OID 16882)
-- Name: problems_solution problems_solution_problem_id_2d4e6e8e_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_problem_id_2d4e6e8e_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3223 (class 2606 OID 16887)
-- Name: problems_solution problems_solution_user_id_1d693e38_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_user_id_1d693e38_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3221 (class 2606 OID 16876)
-- Name: problems_subcategory problems_subcategory_category_id_fda38037_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory
    ADD CONSTRAINT problems_subcategory_category_id_fda38037_fk_problems_ FOREIGN KEY (category_id) REFERENCES public.problems_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3217 (class 2606 OID 16677)
-- Name: users_user users_user_user_ptr_id_dad4eb89_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_user_ptr_id_dad4eb89_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-08-27 16:00:27 +06

--
-- PostgreSQL database dump complete
--

