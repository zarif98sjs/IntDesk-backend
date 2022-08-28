--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

-- Started on 2022-08-28 13:57:30 +06

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
-- TOC entry 254 (class 1259 OID 16959)
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
-- TOC entry 264 (class 1259 OID 17080)
-- Name: assessments_assessment_categories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment_categories (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.assessments_assessment_categories OWNER TO "user";

--
-- TOC entry 263 (class 1259 OID 17078)
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
-- Dependencies: 263
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_categories_id_seq OWNED BY public.assessments_assessment_categories.id;


--
-- TOC entry 253 (class 1259 OID 16957)
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
-- Dependencies: 253
-- Name: assessments_assessment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_id_seq OWNED BY public.assessments_assessment.id;


--
-- TOC entry 262 (class 1259 OID 17029)
-- Name: assessments_assessment_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment_roles (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.assessments_assessment_roles OWNER TO "user";

--
-- TOC entry 261 (class 1259 OID 17027)
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
-- Dependencies: 261
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_roles_id_seq OWNED BY public.assessments_assessment_roles.id;


--
-- TOC entry 256 (class 1259 OID 16967)
-- Name: assessments_option; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_option (
    id bigint NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.assessments_option OWNER TO "user";

--
-- TOC entry 255 (class 1259 OID 16965)
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
-- Dependencies: 255
-- Name: assessments_option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_option_id_seq OWNED BY public.assessments_option.id;


--
-- TOC entry 260 (class 1259 OID 16989)
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
-- TOC entry 259 (class 1259 OID 16987)
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
-- Dependencies: 259
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_quesoption_id_seq OWNED BY public.assessments_quesoption.id;


--
-- TOC entry 258 (class 1259 OID 16978)
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
-- TOC entry 257 (class 1259 OID 16976)
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
-- Dependencies: 257
-- Name: assessments_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_question_id_seq OWNED BY public.assessments_question.id;


--
-- TOC entry 266 (class 1259 OID 17145)
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
-- TOC entry 265 (class 1259 OID 17143)
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
-- TOC entry 225 (class 1259 OID 16596)
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO "user";

--
-- TOC entry 223 (class 1259 OID 16556)
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
-- TOC entry 222 (class 1259 OID 16554)
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
-- Dependencies: 222
-- Name: discussions_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_comments_id_seq OWNED BY public.discussions_comments.id;


--
-- TOC entry 221 (class 1259 OID 16545)
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
-- TOC entry 220 (class 1259 OID 16543)
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
-- Dependencies: 220
-- Name: discussions_discussion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_discussion_id_seq OWNED BY public.discussions_discussion.id;


--
-- TOC entry 230 (class 1259 OID 16665)
-- Name: discussions_downvoted; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_downvoted (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.discussions_downvoted OWNER TO "user";

--
-- TOC entry 229 (class 1259 OID 16663)
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
-- Dependencies: 229
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_downvoted_id_seq OWNED BY public.discussions_downvoted.id;


--
-- TOC entry 228 (class 1259 OID 16645)
-- Name: discussions_upvoted; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_upvoted (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.discussions_upvoted OWNER TO "user";

--
-- TOC entry 227 (class 1259 OID 16643)
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
-- Dependencies: 227
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
-- TOC entry 224 (class 1259 OID 16577)
-- Name: django_session; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "user";

--
-- TOC entry 246 (class 1259 OID 16786)
-- Name: problems_bookmark; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_bookmark (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    user_id integer NOT NULL,
    time_added timestamp with time zone NOT NULL
);


ALTER TABLE public.problems_bookmark OWNER TO "user";

--
-- TOC entry 245 (class 1259 OID 16784)
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
-- Dependencies: 245
-- Name: problems_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_bookmark_id_seq OWNED BY public.problems_bookmark.id;


--
-- TOC entry 232 (class 1259 OID 16685)
-- Name: problems_category; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_category (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_category OWNER TO "user";

--
-- TOC entry 231 (class 1259 OID 16683)
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
-- Dependencies: 231
-- Name: problems_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_category_id_seq OWNED BY public.problems_category.id;


--
-- TOC entry 234 (class 1259 OID 16696)
-- Name: problems_company; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_company (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_company OWNER TO "user";

--
-- TOC entry 233 (class 1259 OID 16694)
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
-- Dependencies: 233
-- Name: problems_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_company_id_seq OWNED BY public.problems_company.id;


--
-- TOC entry 244 (class 1259 OID 16775)
-- Name: problems_inputoutput; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_inputoutput (
    id bigint NOT NULL,
    input text NOT NULL,
    output text NOT NULL,
    points integer NOT NULL,
    problem_id bigint NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_inputoutput OWNER TO "user";

--
-- TOC entry 243 (class 1259 OID 16773)
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
-- Dependencies: 243
-- Name: problems_inputoutput_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_inputoutput_id_seq OWNED BY public.problems_inputoutput.id;


--
-- TOC entry 236 (class 1259 OID 16707)
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
-- TOC entry 248 (class 1259 OID 16873)
-- Name: problems_problem_companies; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_companies (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    company_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_companies OWNER TO "user";

--
-- TOC entry 247 (class 1259 OID 16871)
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
-- Dependencies: 247
-- Name: problems_problem_companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_companies_id_seq OWNED BY public.problems_problem_companies.id;


--
-- TOC entry 235 (class 1259 OID 16705)
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
-- Dependencies: 235
-- Name: problems_problem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_id_seq OWNED BY public.problems_problem.id;


--
-- TOC entry 250 (class 1259 OID 16895)
-- Name: problems_problem_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_roles (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_roles OWNER TO "user";

--
-- TOC entry 249 (class 1259 OID 16893)
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
-- Dependencies: 249
-- Name: problems_problem_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_roles_id_seq OWNED BY public.problems_problem_roles.id;


--
-- TOC entry 252 (class 1259 OID 16903)
-- Name: problems_problem_subcategories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_subcategories (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    subcategory_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_subcategories OWNER TO "user";

--
-- TOC entry 251 (class 1259 OID 16901)
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
-- Dependencies: 251
-- Name: problems_problem_subcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_subcategories_id_seq OWNED BY public.problems_problem_subcategories.id;


--
-- TOC entry 238 (class 1259 OID 16726)
-- Name: problems_role; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_role (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_role OWNER TO "user";

--
-- TOC entry 237 (class 1259 OID 16724)
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
-- Dependencies: 237
-- Name: problems_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_role_id_seq OWNED BY public.problems_role.id;


--
-- TOC entry 242 (class 1259 OID 16748)
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
-- TOC entry 241 (class 1259 OID 16746)
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
-- Dependencies: 241
-- Name: problems_solution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_solution_id_seq OWNED BY public.problems_solution.id;


--
-- TOC entry 240 (class 1259 OID 16737)
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
-- TOC entry 239 (class 1259 OID 16735)
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
-- Dependencies: 239
-- Name: problems_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_subcategory_id_seq OWNED BY public.problems_subcategory.id;


--
-- TOC entry 226 (class 1259 OID 16615)
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
    skills character varying(100)[],
    is_admin boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO "user";

--
-- TOC entry 3057 (class 2604 OID 16962)
-- Name: assessments_assessment id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 17083)
-- Name: assessments_assessment_categories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_categories_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 17032)
-- Name: assessments_assessment_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_roles_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 16970)
-- Name: assessments_option id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_option ALTER COLUMN id SET DEFAULT nextval('public.assessments_option_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 16992)
-- Name: assessments_quesoption id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption ALTER COLUMN id SET DEFAULT nextval('public.assessments_quesoption_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 16981)
-- Name: assessments_question id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question ALTER COLUMN id SET DEFAULT nextval('public.assessments_question_id_seq'::regclass);


--
-- TOC entry 3063 (class 2604 OID 17148)
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
-- TOC entry 3043 (class 2604 OID 16559)
-- Name: discussions_comments id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments ALTER COLUMN id SET DEFAULT nextval('public.discussions_comments_id_seq'::regclass);


--
-- TOC entry 3042 (class 2604 OID 16548)
-- Name: discussions_discussion id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion ALTER COLUMN id SET DEFAULT nextval('public.discussions_discussion_id_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 16668)
-- Name: discussions_downvoted id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted ALTER COLUMN id SET DEFAULT nextval('public.discussions_downvoted_id_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 16648)
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
-- TOC entry 3053 (class 2604 OID 16789)
-- Name: problems_bookmark id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark ALTER COLUMN id SET DEFAULT nextval('public.problems_bookmark_id_seq'::regclass);


--
-- TOC entry 3046 (class 2604 OID 16688)
-- Name: problems_category id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_category ALTER COLUMN id SET DEFAULT nextval('public.problems_category_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 16699)
-- Name: problems_company id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_company ALTER COLUMN id SET DEFAULT nextval('public.problems_company_id_seq'::regclass);


--
-- TOC entry 3052 (class 2604 OID 16778)
-- Name: problems_inputoutput id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput ALTER COLUMN id SET DEFAULT nextval('public.problems_inputoutput_id_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 16710)
-- Name: problems_problem id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 16876)
-- Name: problems_problem_companies id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_companies_id_seq'::regclass);


--
-- TOC entry 3055 (class 2604 OID 16898)
-- Name: problems_problem_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_roles_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 16906)
-- Name: problems_problem_subcategories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_subcategories_id_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 16729)
-- Name: problems_role id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_role ALTER COLUMN id SET DEFAULT nextval('public.problems_role_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 16751)
-- Name: problems_solution id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution ALTER COLUMN id SET DEFAULT nextval('public.problems_solution_id_seq'::regclass);


--
-- TOC entry 3050 (class 2604 OID 16740)
-- Name: problems_subcategory id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory ALTER COLUMN id SET DEFAULT nextval('public.problems_subcategory_id_seq'::regclass);


--
-- TOC entry 3417 (class 0 OID 16959)
-- Dependencies: 254
-- Data for Name: assessments_assessment; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment (id, skill_name, passed_by, taken_by, image_link) FROM stdin;
3	Python	2	11	https://seeklogo.com/images/P/python-logo-A32636CAA3-seeklogo.com.png
5	Git	2	20	
6	Machine Learning	3	25	
2	Java	11	21	https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/800px-Java_programming_language_logo.svg.png
4	CPP	2	101	
7	MongoDB	1	23	https://cdn.icon-icons.com/icons2/2415/PNG/512/mongodb_original_logo_icon_146424.png
\.


--
-- TOC entry 3427 (class 0 OID 17080)
-- Dependencies: 264
-- Data for Name: assessments_assessment_categories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment_categories (id, assessment_id, category_id) FROM stdin;
\.


--
-- TOC entry 3425 (class 0 OID 17029)
-- Dependencies: 262
-- Data for Name: assessments_assessment_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment_roles (id, assessment_id, role_id) FROM stdin;
3	2	2
4	2	3
5	3	6
6	4	6
7	5	11
8	5	12
9	6	13
10	6	14
16	7	15
17	7	13
\.


--
-- TOC entry 3419 (class 0 OID 16967)
-- Dependencies: 256
-- Data for Name: assessments_option; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_option (id, description) FROM stdin;
1	128
2	str and int
3	str and str
4	16
5	int and str
6	No fixed length is specified
7	int and int
8	129
9	32
10	Loops
11	Dynamic Typing
12	All of the above
13	31 13
14	31 31
15	13 13
16	13 31
17	[2, 4, 6], [2, 4, 6]
18	[2, 4, 6], [1, 3, 5]
19	[1, 3, 5], [1, 3, 5]
20	None of these
21	if ele in list
22	Both A and B
23	if not ele not in list
24	None of the above
25	for
26	while
27	do-while
28	None of the above
29	try
30	except
31	finally
32	10
33	20
34	All of the above
35	50
36	Key
37	None of the above
39	121
40	1
38	8
41	Indentation
42	Brackets
43	None of the above
44	five neither three thrive
46	five neither five neither
45	five neither thrive three
48	three three three three
47	filter
49	int
50	list
51	tuple
52	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
53	{'first' : 'sunday', 'second' : 'monday'}
55	[7, 19, 45, 89]
54	{ 1:3, 2:4}
56	None of the above
58	[2, 4, 22, 72]
57	[2, 4, 7, 19, 22, 45, 72, 89]
59	Odd
62	Error
61	[4, 7, 19, 2, 89, 45, 72, 22]
60	Even
63	{'Hello' : 'World', 'First' : 1}
64	{'World' : 'Hello', 1 : 'First'}
65	None
66	Nonel of the above
67	float and int
68	Can be both A or B
69	int and float
70	float and float
71	int and int
72	List
73	Tuple
74	Int
75	String
76	strptime()
77	strftime()
79	Both A and B
80	54 is an even number
78	None of the above
81	54 is an odd number
82	number is an even number
83	number is an odd number
84	[1, 2]
85	Error
86	[1, 2, 1, 2]
87	[1, 2, 1, 2, 1, 2]
88	['Monday', 'Tuesday']
89	['Sunday', 'Monday']
91	['Tuesday', 'Wednesday']
90	['Wednesday', 'Monday']
92	pYtHoN PrOgRaMmInG
93	Python Programming
94	python programming
95	PYTHON PROGRAMMING
96	{1, 2, 3, 4, 5}
97	{1, 2, 3, 3, 2, 4, 5, 5}
98	None
99	{1, 5}
100	(1,2,3)
101	Error
102	0 3 6 9 12 15
103	Infinite loop
104	[2,2,3]
105	(2,2,3)
106	0 1 2 ..... 15
107	0 3 6 9 12
108	int and float
109	float and int
110	float and float
111	Local
112	int and int
113	Global
114	None
115	Cannot be predicted
116	Pointers
117	8
118	121
119	None of the above
120	129
121	32
122	float and int
123	int and float
124	float and float
125	16
126	128
127	None of the above
128	129
129	8
130	121
131	Brackets
132	No fixed length is specified
133	int and str
134	int and int
135	str and int
136	str and str
137	Indentation
138	int and int
139	10
141	1
140	20
142	50
143	129
144	121
145	8
146	five neither thrive three
147	five neither three thrive
148	three three three three
149	five neither five neither
150	None of the above
151	['Monday', 'Tuesday']
152	['Sunday', 'Monday']
153	['Tuesday', 'Wednesday']
155	[2,2,3]
154	['Wednesday', 'Monday']
156	(2,2,3)
157	(1,2,3)
158	Error
159	All of the above
160	Dynamic Typing
161	Pointers
162	Loops
163	try
164	except
165	finally
166	All of the above
167	None of the above
168	[2, 4, 6], [2, 4, 6]
169	[2, 4, 6], [1, 3, 5]
171	[1, 3, 5], [1, 3, 5]
172	0 1 2 ..... 15
170	None of these
174	0 3 6 9 12 15
173	Infinite loop
175	0 3 6 9 12
176	Global
177	Local
178	None
180	31 13
179	Cannot be predicted
181	31 31
182	13 13
183	13 31
184	Odd
185	Error
186	Even
187	for
188	while
189	None
190	do-while
191	None of the above
192	Key
193	if ele in list
194	if not ele not in list
195	None of the above
196	Both A and B
197	Error
198	[1, 2]
199	[1, 2, 1, 2]
201	int
200	[1, 2, 1, 2, 1, 2]
202	filter
203	list
204	tuple
206	Tuple
205	String
207	List
208	Int
209	54 is an even number
210	54 is an odd number
211	number is an odd number
213	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
212	{'first' : 'sunday', 'second' : 'monday'}
214	{ 1:3, 2:4}
216	None of the above
215	number is an even number
217	[7, 19, 45, 89]
218	[2, 4, 22, 72]
219	[4, 7, 19, 2, 89, 45, 72, 22]
220	[2, 4, 7, 19, 22, 45, 72, 89]
221	float and float
222	int and float
223	float and int
224	int and int
225	{1, 2, 3, 3, 2, 4, 5, 5}
226	{1, 2, 3, 4, 5}
228	None
227	{1, 5}
229	Python Programming
230	pYtHoN PrOgRaMmInG
231	PYTHON PROGRAMMING
232	strptime()
233	python programming
234	strftime()
235	Both A and B
236	None of the above
237	{'World' : 'Hello', 1 : 'First'}
238	{'Hello' : 'World', 'First' : 1}
239	Can be both A or B
240	Nonel of the above
241	five neither five neither
242	five neither thrive three
243	8
244	three three three three
245	16
246	five neither three thrive
247	128
248	121
250	None of the above
249	129
251	32
252	No fixed length is specified
253	[2,2,3]
254	Key
255	(2,2,3)
256	Brackets
257	Indentation
258	None of the above
259	Error
261	Error
260	(1,2,3)
262	[1, 2]
263	[1, 2, 1, 2]
264	[1, 2, 1, 2, 1, 2]
265	Even
267	Odd
266	Error
268	None
269	List
270	Tuple
271	String
272	Int
273	int
274	int and str
275	filter
278	int and int
276	str and int
277	str and str
279	list
280	tuple
281	float and int
282	int and float
283	int and int
284	float and float
285	if ele in list
286	if not ele not in list
287	Both A and B
288	pYtHoN PrOgRaMmInG
289	None of the above
290	Python Programming
291	strptime()
292	python programming
293	PYTHON PROGRAMMING
294	None of the above
295	strftime()
296	Both A and B
297	54 is an even number
298	54 is an odd number
299	number is an even number
300	number is an odd number
301	{'Hello' : 'World', 'First' : 1}
303	None of the above
302	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
304	{'World' : 'Hello', 1 : 'First'}
306	Can be both A or B
305	{'first' : 'sunday', 'second' : 'monday'}
307	32
308	None of the above
310	128
309	8
311	16
312	121
313	int and str
314	str and int
315	str and str
316	int and int
317	Indentation
318	Key
319	None of the above
320	129
321	No fixed length is specified
322	Brackets
323	int and float
324	float and int
325	50
326	int and int
327	float and float
328	10
329	20
330	Cannot be predicted
331	Local
332	(2,2,3)
333	Global
334	Pointers
335	[2,2,3]
336	Loops
338	Infinite loop
337	1
339	0 1 2 ..... 15
340	0 3 6 9 12 15
341	None
343	129
342	0 3 6 9 12
344	121
345	(1,2,3)
346	None of the above
347	Error
348	Dynamic Typing
349	try
350	except
351	finally
352	All of the above
353	['Sunday', 'Monday']
354	['Monday', 'Tuesday']
355	All of the above
356	['Wednesday', 'Monday']
357	[2, 4, 6], [2, 4, 6]
358	8
359	five neither thrive three
360	['Tuesday', 'Wednesday']
361	[1, 3, 5], [1, 3, 5]
362	[2, 4, 6], [1, 3, 5]
363	None of these
364	five neither three thrive
366	three three three three
365	five neither five neither
367	if not ele not in list
369	None of the above
368	Error
370	if ele in list
371	[1, 2]
372	[1, 2, 1, 2, 1, 2]
373	Both A and B
374	None
375	Error
376	[1, 2, 1, 2]
377	Even
379	Odd
378	List
380	Tuple
381	Int
382	54 is an odd number
383	String
384	54 is an even number
385	number is an even number
386	number is an odd number
387	128
388	16
390	129
389	121
391	No fixed length is specified
392	32
393	8
394	float and int
395	float and float
396	int and int
397	None of the above
398	[2,2,3]
399	(2,2,3)
400	(1,2,3)
402	Error
401	int and float
403	int and str
404	str and str
405	Local
406	int and int
407	Global
408	None
409	Cannot be predicted
410	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
411	{ 1:3, 2:4}
412	{'first' : 'sunday', 'second' : 'monday'}
413	None of the above
414	str and int
416	Brackets
415	Indentation
417	None of the above
418	[7, 19, 45, 89]
419	[2, 4, 22, 72]
420	[4, 7, 19, 2, 89, 45, 72, 22]
421	[2, 4, 7, 19, 22, 45, 72, 89]
422	54 is an even number
423	54 is an odd number
424	number is an even number
425	float and float
426	float and int
427	int and float
428	int and int
429	number is an odd number
430	try
431	except
432	finally
433	All of the above
434	Even
436	Key
435	Odd
437	Error
438	None
440	{'World' : 'Hello', 1 : 'First'}
439	{'Hello' : 'World', 'First' : 1}
441	Can be both A or B
442	pYtHoN PrOgRaMmInG
443	Nonel of the above
444	Python Programming
445	python programming
446	PYTHON PROGRAMMING
447	{1, 2, 3, 3, 2, 4, 5, 5}
448	None
450	['Monday', 'Tuesday']
449	{1, 2, 3, 4, 5}
451	{1, 5}
452	['Tuesday', 'Wednesday']
453	['Sunday', 'Monday']
454	['Wednesday', 'Monday']
455	List
456	Tuple
457	String
458	Int
459	int
460	filter
461	tuple
462	list
463	strptime()
464	strftime()
465	Both A and B
466	None of the above
467	Infinite loop
468	0 3 6 9 12
469	1
470	129
471	20
472	0 1 2 ..... 15
474	10
475	8
473	0 3 6 9 12 15
476	121
477	do-while
478	None of the above
479	for
480	10
481	Loops
482	20
483	1
484	Pointers
485	50
486	128
488	Dynamic Typing
487	32
489	16
490	No fixed length is specified
491	All of the above
492	129
493	8
494	121
495	str and int
496	None of the above
497	int and str
498	(2,2,3)
499	(1,2,3)
500	0 3 6 9 12
501	int and int
502	Infinite loop
503	Error
504	0 3 6 9 12 15
505	str and str
506	None of the above
507	[2,2,3]
508	int and float
510	0 1 2 ..... 15
511	float and float
509	float and int
512	Indentation
513	Brackets
514	int and int
515	Key
516	Odd
517	Even
518	Error
519	None
520	if not ele not in list
521	if ele in list
522	Both A and B
524	None of the above
523	List
525	Tuple
526	Int
528	five neither three thrive
527	String
529	five neither thrive three
530	five neither five neither
531	Error
533	[1, 2, 1, 2]
532	three three three three
534	[1, 2, 1, 2, 1, 2]
535	[1, 2]
536	121
537	[7, 19, 45, 89]
538	8
539	129
540	None of the above
541	[4, 7, 19, 2, 89, 45, 72, 22]
542	[2, 4, 22, 72]
\.


--
-- TOC entry 3423 (class 0 OID 16989)
-- Dependencies: 260
-- Data for Name: assessments_quesoption; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_quesoption (id, is_correct, option_id, question_id) FROM stdin;
1	f	2	4
2	f	1	2
3	f	3	4
4	f	4	2
5	t	6	2
6	t	5	4
7	f	7	4
8	f	9	2
9	t	8	3
10	f	11	9
11	f	10	9
12	f	12	9
13	t	13	12
14	f	14	12
15	f	15	12
16	f	16	12
17	f	18	13
18	t	17	13
19	f	19	13
20	f	20	13
21	f	21	14
22	f	23	14
23	t	22	14
24	f	24	14
25	f	25	16
26	f	26	16
27	t	27	16
28	f	30	15
29	f	28	16
30	f	29	15
31	f	31	15
33	f	33	18
32	t	32	18
34	t	34	15
35	f	35	18
36	f	36	5
37	f	39	3
39	f	38	3
40	f	37	3
41	t	41	5
38	f	40	18
42	f	42	5
43	f	43	5
44	f	44	17
45	t	45	17
47	t	47	19
46	f	46	17
48	f	48	17
49	f	49	19
50	f	50	19
51	f	51	19
52	t	52	23
54	f	54	23
55	f	53	23
53	t	55	20
56	f	56	23
57	f	58	20
58	f	62	21
60	f	61	20
59	f	57	20
62	t	60	21
61	f	59	21
64	t	64	24
63	f	63	24
65	f	66	24
66	f	68	24
68	f	65	21
67	t	67	22
69	f	69	22
70	f	70	22
71	t	72	27
72	f	71	22
73	f	73	27
74	f	74	27
75	f	75	27
77	f	77	25
76	t	76	25
78	f	79	25
79	t	80	29
80	f	78	25
81	f	81	29
82	f	82	29
83	f	83	29
85	f	85	26
84	f	84	26
86	t	87	26
87	f	86	26
89	f	89	28
88	t	88	28
90	f	91	28
91	f	90	28
92	t	92	30
93	f	93	30
94	f	94	30
95	f	95	30
96	f	97	31
97	t	96	31
98	f	98	31
99	f	99	31
100	f	100	6
101	t	101	6
102	t	102	7
103	f	103	7
104	f	104	6
105	f	105	6
106	f	106	7
107	f	107	7
108	t	109	8
109	f	108	8
111	f	110	8
110	t	111	11
112	f	112	8
113	f	113	11
114	f	115	11
115	f	114	11
116	f	117	10
117	t	116	9
118	f	118	10
119	f	119	10
120	t	120	10
121	f	121	32
122	t	122	40
124	f	125	32
127	f	124	40
123	f	123	40
125	f	126	32
126	f	127	34
128	t	128	34
129	f	129	34
130	f	130	34
131	f	131	35
133	t	133	33
132	t	132	32
134	f	134	33
135	f	135	33
137	t	137	35
136	f	136	33
138	f	138	40
140	f	141	36
139	t	139	36
141	f	142	36
143	f	140	36
142	t	143	37
144	f	145	37
145	f	144	37
146	t	146	49
147	f	147	49
148	f	148	49
150	f	150	37
149	f	149	49
151	t	151	50
152	f	152	50
153	f	153	50
154	f	155	39
155	f	154	50
156	f	156	39
157	f	157	39
158	t	158	39
159	f	159	38
161	f	162	38
160	f	160	38
162	t	161	38
163	f	163	41
164	f	164	41
165	t	166	41
166	f	167	35
167	f	165	41
168	t	168	43
169	f	169	43
170	f	171	43
171	f	170	43
172	f	172	42
173	f	173	42
174	t	174	42
175	f	175	42
176	f	176	45
177	t	177	45
178	f	178	45
179	t	180	44
180	f	181	44
181	f	179	45
182	f	182	44
183	f	183	44
184	f	184	46
185	f	185	46
186	t	186	46
187	f	189	46
188	f	188	47
189	f	187	47
190	t	190	47
191	f	191	47
192	f	192	35
193	f	193	48
194	f	194	48
195	f	195	48
196	t	196	48
197	f	197	51
198	f	198	51
199	f	199	51
200	f	201	53
202	t	202	53
201	t	200	51
203	f	203	53
205	f	205	52
204	f	206	52
206	f	204	53
207	t	207	52
208	f	208	52
209	t	209	56
210	f	210	56
211	f	211	56
212	f	212	55
214	f	214	55
213	t	213	55
216	f	216	55
215	f	215	56
217	t	217	54
218	f	218	54
219	f	219	54
220	f	220	54
221	f	221	58
222	f	222	58
223	t	223	58
224	f	224	58
225	f	225	60
226	t	226	60
227	f	228	60
228	f	227	60
229	f	229	57
230	t	230	57
231	t	232	59
232	f	231	57
233	f	233	57
234	f	234	59
235	f	235	59
236	f	236	59
237	t	237	61
239	f	239	61
238	f	238	61
240	f	240	61
241	f	241	78
243	f	243	63
246	f	246	78
244	f	244	78
242	f	245	62
245	t	242	78
247	f	247	62
248	f	248	63
250	f	250	63
249	t	249	63
251	f	251	62
252	t	252	62
253	f	253	65
254	f	254	66
255	f	255	65
256	f	256	66
257	t	257	66
258	f	258	66
259	t	259	65
260	f	260	65
261	f	261	79
262	f	262	79
263	f	263	79
264	t	264	79
265	t	265	80
267	f	266	80
266	f	267	80
268	f	268	80
269	t	269	84
271	f	270	84
270	f	271	84
272	f	272	84
273	f	273	81
274	t	274	64
275	t	275	81
276	f	278	64
277	f	277	64
279	f	276	64
278	f	279	81
280	f	280	81
281	f	282	83
282	t	281	83
284	f	284	83
283	f	283	83
285	f	285	82
286	f	286	82
287	t	287	82
288	t	288	85
289	f	289	82
290	f	290	85
291	t	291	86
292	f	292	85
293	f	293	85
294	f	294	86
295	f	295	86
296	f	296	86
297	t	297	89
298	f	298	89
299	f	299	89
300	f	300	89
301	f	301	90
302	t	302	87
303	f	303	87
305	f	306	90
304	t	304	90
306	f	305	87
308	f	308	94
307	f	307	92
310	f	309	94
309	f	310	92
312	f	312	94
311	f	311	92
313	f	314	95
314	t	313	95
315	f	315	95
316	f	316	95
317	t	317	93
318	f	318	93
319	f	319	93
320	t	320	94
321	t	321	92
322	f	322	93
323	f	323	96
324	t	324	96
325	f	325	98
326	f	326	96
327	f	327	96
328	t	328	98
329	f	329	98
330	f	330	99
331	t	331	99
333	f	332	102
332	f	333	99
334	t	334	101
335	f	335	102
336	f	336	101
337	f	338	97
338	f	337	98
339	t	340	97
340	f	339	97
341	f	341	99
342	t	343	100
343	f	342	97
345	f	345	102
344	f	344	100
346	f	346	100
347	t	347	102
349	f	348	101
348	f	350	105
350	f	349	105
351	f	351	105
352	t	352	105
353	f	353	104
354	f	355	101
355	t	354	104
357	f	356	104
356	t	357	103
358	f	358	100
359	t	359	107
360	f	360	104
361	f	362	103
362	f	363	103
363	f	361	103
364	f	364	107
365	f	366	107
366	f	365	107
367	f	367	106
368	f	369	106
369	f	368	108
370	f	370	106
371	f	371	108
372	t	372	108
373	t	373	106
374	f	374	113
376	f	376	108
375	f	375	113
377	t	377	113
378	t	378	109
379	f	379	113
380	f	380	109
382	f	382	111
381	f	381	109
383	t	384	111
384	f	383	109
385	f	385	111
386	f	386	111
387	f	387	124
388	f	388	124
389	t	390	122
390	t	391	124
391	f	389	122
392	f	392	124
393	f	393	122
394	t	394	123
395	f	395	123
396	f	396	123
397	f	397	122
398	f	398	126
399	f	399	126
400	f	400	126
401	t	402	126
402	f	401	123
403	t	403	125
404	f	404	125
406	f	406	125
405	t	405	138
407	f	407	138
408	f	408	138
409	f	409	138
410	t	410	142
411	f	411	142
412	f	412	142
413	f	413	142
414	f	414	125
415	f	416	127
416	t	415	127
417	f	417	127
418	t	418	140
419	f	419	140
420	f	420	140
421	f	421	140
423	f	423	141
422	t	422	141
424	f	424	141
426	t	426	143
425	f	425	143
427	f	427	143
428	f	428	143
429	f	429	141
430	f	430	139
431	f	431	139
433	f	432	139
432	t	433	139
434	t	434	145
435	f	436	127
437	f	437	145
436	f	435	145
438	f	438	145
439	t	440	146
440	f	439	146
441	f	441	146
442	t	442	147
443	f	443	146
444	f	444	147
445	f	445	147
446	f	446	147
447	f	447	144
449	f	448	144
450	t	449	144
448	t	450	149
451	f	451	144
452	f	452	149
454	f	453	149
453	f	454	149
455	t	455	148
456	f	456	148
457	f	457	148
458	f	458	148
459	f	459	150
460	t	460	150
461	f	461	150
463	t	463	151
462	f	462	150
464	f	464	151
465	f	465	151
466	f	466	151
467	f	467	128
468	f	468	128
469	f	469	129
470	t	470	130
471	f	471	129
472	f	472	128
473	t	474	129
475	t	473	128
474	f	475	130
476	f	476	130
477	t	477	132
478	f	478	130
479	f	479	132
480	t	480	160
481	f	481	159
482	f	482	160
483	f	483	160
484	t	484	159
485	f	485	160
486	f	486	153
488	f	487	153
487	f	488	159
490	t	490	153
489	f	489	153
491	f	491	159
492	t	492	152
493	f	493	152
494	f	494	152
495	f	495	154
496	f	496	152
497	t	497	154
498	f	498	155
499	f	499	155
500	f	500	157
501	f	501	154
502	t	503	155
504	t	504	157
503	f	502	157
505	f	505	154
506	f	506	156
507	f	507	155
508	f	508	158
510	t	509	158
509	f	510	157
511	f	511	158
512	t	512	156
513	f	513	156
514	f	514	158
515	f	515	156
516	f	516	167
517	t	517	167
518	f	518	167
519	f	519	167
520	f	520	168
521	f	521	168
522	t	522	168
523	f	524	168
524	t	523	169
525	f	525	169
526	f	526	169
527	f	528	170
528	f	527	169
529	t	529	170
530	f	530	170
532	f	531	172
531	f	532	170
533	f	533	172
534	t	534	172
535	f	535	172
536	f	536	161
537	t	537	171
538	f	538	161
539	t	539	161
540	f	540	161
541	f	541	171
542	f	542	171
\.


--
-- TOC entry 3421 (class 0 OID 16978)
-- Dependencies: 258
-- Data for Name: assessments_question; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_question (id, description, "time", points, difficulty_level, assessment_id) FROM stdin;
1	Number of primitive data types in Java are?	7	10	E	2
2	What is the maximum length of a Python identifier?	10	5	E	3
3	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	3
4	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	3
5	 How is a code block indicated in Python?	10	5	E	3
6	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	3
7	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	3
8	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	3
9	 Which of the following concepts is not a part of Python?	10	5	E	3
11	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	3
10	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	3
12	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	3
13	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	3
14	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	3
15	Which of the following statements are used in Exception Handling in Python?	20	10	M	3
16	Which of the following types of loops are not supported in Python?	20	10	M	3
17	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	3
18	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	3
19	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	3
20	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	3
21	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	3
23	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	3
22	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	3
24	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	3
25	Which of the following functions converts date to corresponding time in Python?	30	20	H	3
26	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	3
27	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	3
28	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	3
29	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	3
30	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	3
31	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	3
32	What is the maximum length of a Python identifier?	10	5	E	2
33	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	2
34	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	2
35	 How is a code block indicated in Python?	10	5	E	2
132	Which of the following types of loops are not supported in Python?	20	10	M	4
37	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	2
36	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	2
39	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	2
40	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	2
38	 Which of the following concepts is not a part of Python?	10	5	E	2
41	Which of the following statements are used in Exception Handling in Python?	20	10	M	2
42	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	2
43	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	2
45	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	2
44	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	2
46	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	2
47	Which of the following types of loops are not supported in Python?	20	10	M	2
48	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	2
49	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	2
50	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	2
51	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	2
54	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	2
52	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	2
53	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	2
55	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	2
56	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	2
57	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	2
58	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	2
59	Which of the following functions converts date to corresponding time in Python?	30	20	H	2
60	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	2
61	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	2
62	What is the maximum length of a Python identifier?	10	5	E	7
63	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	7
65	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	7
64	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	7
66	 How is a code block indicated in Python?	10	5	E	7
67	 Which of the following concepts is not a part of Python?	10	5	E	7
70	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	7
68	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	7
69	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	7
71	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	7
74	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	7
72	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	7
73	Which of the following types of loops are not supported in Python?	20	10	M	7
75	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	7
76	Which of the following statements are used in Exception Handling in Python?	20	10	M	7
77	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	7
78	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	7
80	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	7
79	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	7
81	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	7
82	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	7
83	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	7
84	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	7
85	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	7
86	Which of the following functions converts date to corresponding time in Python?	30	20	H	7
87	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	7
88	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	7
89	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	7
90	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	7
91	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	7
92	What is the maximum length of a Python identifier?	10	5	E	6
93	 How is a code block indicated in Python?	10	5	E	6
95	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	6
94	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	6
96	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	6
98	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	6
97	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	6
130	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	4
99	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	6
100	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	6
101	 Which of the following concepts is not a part of Python?	10	5	E	6
102	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	6
104	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	6
103	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	6
105	Which of the following statements are used in Exception Handling in Python?	20	10	M	6
106	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	6
107	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	6
108	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	6
109	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	6
110	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	6
111	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	6
112	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	6
113	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	6
114	Which of the following types of loops are not supported in Python?	20	10	M	6
115	Which of the following functions converts date to corresponding time in Python?	30	20	H	6
116	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	6
117	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	6
118	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	6
119	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	6
120	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	6
121	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	6
122	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	4
123	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	4
124	What is the maximum length of a Python identifier?	10	5	E	4
125	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	4
127	 How is a code block indicated in Python?	10	5	E	4
126	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	4
128	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	4
129	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	4
131	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	4
133	 Which of the following concepts is not a part of Python?	10	5	E	4
134	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	4
135	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	4
136	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	4
137	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	4
138	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	4
139	Which of the following statements are used in Exception Handling in Python?	20	10	M	4
142	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	4
141	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	4
140	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	4
143	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	4
144	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	4
145	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	4
146	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	4
147	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	4
149	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	4
148	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	4
150	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	4
151	Which of the following functions converts date to corresponding time in Python?	30	20	H	4
153	What is the maximum length of a Python identifier?	10	5	E	5
152	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	5
154	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	5
155	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	5
156	 How is a code block indicated in Python?	10	5	E	5
157	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	5
158	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	5
159	 Which of the following concepts is not a part of Python?	10	5	E	5
160	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	5
161	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	5
162	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	5
163	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	5
164	Which of the following statements are used in Exception Handling in Python?	20	10	M	5
166	Which of the following types of loops are not supported in Python?	20	10	M	5
165	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	5
167	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	5
168	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	5
169	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	5
170	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	5
171	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	5
173	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	5
172	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	5
175	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	5
174	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	5
176	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	5
177	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	5
178	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	5
179	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	5
180	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	5
181	Which of the following functions converts date to corresponding time in Python?	30	20	H	5
\.


--
-- TOC entry 3429 (class 0 OID 17145)
-- Dependencies: 266
-- Data for Name: assessments_userassessment; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_userassessment (id, assessment_id, user_id, passed, taken_time) FROM stdin;
1	2	1	t	2022-08-28 07:34:56.147215+00
2	7	1	t	2022-08-28 07:35:35.872075+00
3	4	1	f	2022-08-28 07:38:47.60785+00
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
25	Can add discussion	7	add_discussion
26	Can change discussion	7	change_discussion
27	Can delete discussion	7	delete_discussion
28	Can view discussion	7	view_discussion
29	Can add comments	8	add_comments
30	Can change comments	8	change_comments
31	Can delete comments	8	delete_comments
32	Can view comments	8	view_comments
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add Token	10	add_token
38	Can change Token	10	change_token
39	Can delete Token	10	delete_token
40	Can view Token	10	view_token
41	Can add token	11	add_tokenproxy
42	Can change token	11	change_tokenproxy
43	Can delete token	11	delete_tokenproxy
44	Can view token	11	view_tokenproxy
45	Can add upvoted	12	add_upvoted
46	Can change upvoted	12	change_upvoted
47	Can delete upvoted	12	delete_upvoted
48	Can view upvoted	12	view_upvoted
49	Can add downvoted	13	add_downvoted
50	Can change downvoted	13	change_downvoted
51	Can delete downvoted	13	delete_downvoted
52	Can view downvoted	13	view_downvoted
53	Can add category	14	add_category
54	Can change category	14	change_category
55	Can delete category	14	delete_category
56	Can view category	14	view_category
57	Can add company	15	add_company
58	Can change company	15	change_company
59	Can delete company	15	delete_company
60	Can view company	15	view_company
61	Can add problem	16	add_problem
62	Can change problem	16	change_problem
63	Can delete problem	16	delete_problem
64	Can view problem	16	view_problem
65	Can add role	17	add_role
66	Can change role	17	change_role
67	Can delete role	17	delete_role
68	Can view role	17	view_role
69	Can add sub category	18	add_subcategory
70	Can change sub category	18	change_subcategory
71	Can delete sub category	18	delete_subcategory
72	Can view sub category	18	view_subcategory
73	Can add solution	19	add_solution
74	Can change solution	19	change_solution
75	Can delete solution	19	delete_solution
76	Can view solution	19	view_solution
77	Can add input output	20	add_inputoutput
78	Can change input output	20	change_inputoutput
79	Can delete input output	20	delete_inputoutput
80	Can view input output	20	view_inputoutput
81	Can add book mark	21	add_bookmark
82	Can change book mark	21	change_bookmark
83	Can delete book mark	21	delete_bookmark
84	Can view book mark	21	view_bookmark
85	Can add assessment	22	add_assessment
86	Can change assessment	22	change_assessment
87	Can delete assessment	22	delete_assessment
88	Can view assessment	22	view_assessment
89	Can add option	23	add_option
90	Can change option	23	change_option
91	Can delete option	23	delete_option
92	Can view option	23	view_option
93	Can add question	24	add_question
94	Can change question	24	change_question
95	Can delete question	24	delete_question
96	Can view question	24	view_question
97	Can add ques option	25	add_quesoption
98	Can change ques option	25	change_quesoption
99	Can delete ques option	25	delete_quesoption
100	Can view ques option	25	view_quesoption
101	Can add comment upvoted	26	add_commentupvoted
102	Can change comment upvoted	26	change_commentupvoted
103	Can delete comment upvoted	26	delete_commentupvoted
104	Can view comment upvoted	26	view_commentupvoted
105	Can add comment downvoted	27	add_commentdownvoted
106	Can change comment downvoted	27	change_commentdownvoted
107	Can delete comment downvoted	27	delete_commentdownvoted
108	Can view comment downvoted	27	view_commentdownvoted
109	Can add user assessment	28	add_userassessment
110	Can change user assessment	28	change_userassessment
111	Can delete user assessment	28	delete_userassessment
112	Can view user assessment	28	view_userassessment
\.


--
-- TOC entry 3376 (class 0 OID 16434)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$320000$Y6XQUedeTY8REhMo7qoayQ$7bsCuVnYrlwe/yIY5JCcFiim95ryY2l2qYOBw0dyy/4=	\N	f	user2	User	Two	user2@gmail.com	f	t	2022-07-16 12:16:07.119652+00
3	pbkdf2_sha256$320000$eWk56i38i9t4ExQeZyazJ9$85Ac5M4yNYGbusKd5XuJQRRpzrcwHcd1NygghcoBQqE=	\N	f	test_user	test	user	test_user@gmail.com	f	t	2022-08-27 13:44:15.718439+00
1	pbkdf2_sha256$320000$5B9tjl7J6Sc0eGZ2vKqo88$QVpvMBxT4sIyodtYq77l3sCK0FfTcT+28J8LsHdoO3Q=	\N	f	ramisa	ramisa	alam	ramisa@gmail.com	f	t	2022-07-15 14:18:04.390805+00
4	pbkdf2_sha256$320000$OOARwaD8x5YTHpNzuaZesX$V8kpxrZO9gSyuxmKlXKym2SbzWQISsxbYADa769UCJA=	\N	f	sadia	sadia	sadia	sadia@gmail.com	f	t	2022-08-28 07:48:56.547799+00
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
-- TOC entry 3388 (class 0 OID 16596)
-- Dependencies: 225
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
51c60b736e81e14ba457be703ba2acf6841be4eb	2022-07-15 14:19:17.117625+00	1
c9ac4b978846956f7228c8813c1bdb11faba2633	2022-07-16 12:16:15.955439+00	2
557c55d2f7dd9b23a92e5445ade3bd6dd9bd0e76	2022-08-27 13:44:32.537174+00	3
ef6706751e20305f232dc7661acacf5cf20e4ba5	2022-08-28 07:49:47.110412+00	4
\.


--
-- TOC entry 3386 (class 0 OID 16556)
-- Dependencies: 223
-- Data for Name: discussions_comments; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_comments (id, comment, created_at, updated_at, discussion_id, parent, user_id, hash) FROM stdin;
7	<p>okay</p>	2022-07-16 19:08:13.231615+00	2022-07-16 19:08:13.231642+00	5	\N	1	05f793f5-7440-4356-81f3-ed7d398972f4
8	<p>That was really helpful. Thanks!</p>	2022-07-17 08:17:36.739026+00	2022-07-17 08:17:36.739048+00	13	\N	1	3bf8a2ba-78c2-491d-82eb-a9d1dadaefe2
9	<p>You're welcome</p>	2022-07-17 08:18:09.694016+00	2022-07-17 08:18:09.694033+00	13	3bf8a2ba-78c2-491d-82eb-a9d1dadaefe2	2	fa3879c3-6899-4418-8847-6ad41a92002b
10	<p>You should handle Index Out Of Range</p>	2022-07-17 08:26:07.31792+00	2022-07-17 08:26:07.317936+00	18	\N	2	bcc0b8a8-4d17-4d36-ac01-27ce534176eb
11	you are completely wrong	2022-07-31 04:17:42.952498+00	2022-07-31 04:17:42.952515+00	5	\N	1	saidhaih13281381932bj
12	<p>hdak</p>	2022-07-31 08:42:20.679778+00	2022-07-31 08:42:20.679793+00	5	\N	1	21f13125-a98c-4834-85b6-78ad7f5299e8
13	<p>Lets goo</p>	2022-07-31 08:47:35.498962+00	2022-07-31 08:47:35.498985+00	5	\N	1	94dba9aa-c95e-47ba-8f7c-20c3eff213c0
14	<p>hi</p>	2022-07-31 08:49:26.257767+00	2022-07-31 08:49:26.257788+00	5	\N	1	114b6027-564e-4deb-a70a-809370ab4fdc
15	<p>HH</p>	2022-07-31 08:50:16.20721+00	2022-07-31 08:50:16.207226+00	5	\N	1	44d38899-bb24-429c-8c81-7c2d2c213e2f
16	<p>Thanks</p>	2022-07-31 09:03:27.418744+00	2022-07-31 09:03:27.418759+00	13	\N	1	7600db7a-a4d3-4ef2-b822-846cef9a5ac0
17	<p>Hi&nbsp;</p>	2022-07-31 09:29:21.060567+00	2022-07-31 09:29:21.060584+00	13	\N	1	24dc8499-7856-44c9-b2f8-59a762eda9ff
21	<p>dakhd</p>	2022-07-31 10:23:48.725071+00	2022-07-31 10:23:48.725093+00	14	\N	1	e34871ca-b364-4ac3-8506-a3cd7c96e4c1
\.


--
-- TOC entry 3384 (class 0 OID 16545)
-- Dependencies: 221
-- Data for Name: discussions_discussion; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_discussion (id, title, description, created_at, updated_at, upvotes, downvotes, views, comment_count, user_id, tags) FROM stdin;
19	daskjdnkaj	**hi**\n\n	2022-08-11 11:19:51.530796+00	2022-08-11 11:19:51.53083+00	0	0	0	0	1	{interview}
13	How to write an Interview Question post	IntDesk Discuss is a community where you can share questions and experiences from interviews. Before you post, please try to follow these guidelines:\n\nThe title should follow this format:\n\n    Company Name | Stage (Phone, Onsite, OA) | Question name\n\nFor example, this could look like:\n\n    Amazon | Phone | Missing number\n    Google | Onsite | Robot Room Cleaner\n\n- Please post **clear** and **concise** descriptions of the problems and make sure your question has not already been posted.\n\n- If you're including **code in your post**, please surround the code block with three backticks (```) to make it more readable. Posts that do not follow this guideline may be removed by moderators.\n\n- Each question should be accompanied by **at least** one example - the more the better!\n\n- Please enter the company name in the tags shown below which will help people see your question more easily.\n\n- Each post should include only one question. If you want to share your overall interview experience, please post in the Interview Experience category.\n\n- You represent and warrant that any User Content that you submit, post or display through the Services does not infringe or violate any of the copyright, patent, trademark, trade name, trade secrets or any other personal or proprietary rights of any third party.\n\nHappy discussing! :)	2022-07-17 08:17:08.124708+00	2022-07-17 08:18:14.44561+00	2	1	0	0	1	{interview," discussion"}
16	Operating System Interview Question	Questions related Operating System faces in an interview of 2021:\n\n- What is Kernal? (V. Imp)\n- What is a process in OS and What are the different states of a process?\n- What is a Scheduling Algorithm? Name different types of scheduling algorithms.\n- What do you mean by FCFS Algorithm and best advantages of it?\n- What is virtual memory?\n- What is thread in OS?\n- What is Cache ? (Use a Example)\n- What is the difference between paging and segmentation?\n- What is thrashing in OS?\n\nIf you find the post useful. Please upvote ;)\nFeel Free to ask Anything	2022-07-17 08:22:12.119032+00	2022-07-17 08:22:12.119078+00	0	0	0	0	2	{"Operating System"," OS"," System Desing"}
15	Microsoft - Uber System Design	Some questions asked in Uber system design\n\n    1. Where to store the driver info ?\n    2. Driver -> Vehicle . Where will you store ? Relational DB or NoSQL?\n    3. Driver location keeps changing every 5 seconds. Write-heavy system. Which is the best option to store this?\n    4. Customer is shown a price for a ride but he does not book the ride immediately. By the time he clicks 'Confirm ride', the price may change. The ride can no longer be given at the same old price. How to detect and handle this ?\n    5. Where do we store the booking information?\n    6. How will you handle Uberpool?\n    7. In some places and some timings, there may be surge in traffic. eg.. people leaving the office in the evenings. Can we cache any data ? What data would we like to cache?\n\n	2022-07-17 08:20:46.023475+00	2022-07-17 08:20:46.023554+00	0	0	0	0	2	{Microsoft," System Design"}
18	Tic-Tac-Toe || Machine Coding || LLD || Fully Optimised || Feedback Needed || Review Needed	```\nclass Player:\n  def __init__(self,name):\n    self.userName=name\n\n\nclass Grid:\n  def __init__(self):\n    self.grid=[[0 for x in range(3)] for y in range(3)]\n\n  def printGrid(self):\n    for y in range(len(self.grid)):\n      for x in range(len(self.grid[y])):\n        print(self.grid[y][x],end=" ")\n      print("")\n\n  def isValid(self):\n    for y in range(len(self.grid)):\n      for x in range(len(self.grid[y])):\n        if(self.grid[y][x]==0):\n          return True\n    return False\n\n\n  def validMove(self,y,x):\n    return (y>=0 and y<=2) and (x>=0 and x<=2) and self.grid[y][x]==0\n\n  def setValue(self,y,x,val):\n    self.grid[y][x]=val\n\n\n  def solve(self):\n    # Horizontal Check\n    for y in range(len(self.grid)):\n      state=self.grid[y][0]\n      flag=True\n      if(state==0):\n        continue\n      for x in range(1,len(self.grid[y])):\n        if(self.grid[y][x]!=state):\n          flag=False\n          break\n      if(flag):\n        return True\n\n    # Vertical Check\n    for x in range(len(self.grid[0])):\n      state=self.grid[0][x]\n      flag=True\n      if(state==0):\n        continue\n      for y in range(1,len(self.grid)):  \n        if(self.grid[y][x]!=state):\n          flag=False\n          break\n      if(flag):\n          return True\n\n    # Diagonal Check\n    if(self.grid[1][1]!=0 and self.grid[1][1]==self.grid[0][0] and self.grid[1][1]==self.grid[2][2]):\n      return True\n    if(self.grid[1][1]!=0 and self.grid[1][1]==self.grid[0][2] and self.grid[1][1]==self.grid[2][0]):\n      return True\n\n    # No One Won\n    return False\n\n\nclass Game:\n  def __init__(self,user1,user2):\n    self.player1=user1\n    self.player2=user2\n    self.choice=True\n    self.grid=Grid()\n\n  def gameInstance(self):\n    self.grid.printGrid()\n\n  def play(self):\n    if(not self.grid.isValid()):\n      print("MATCH DRAW")\n      return\n\n    if(self.choice):\n      print("Player 1: "+self.player1.userName+" Move")\n      y1,x1=map(int,input().split())\n      y1-=1\n      x1-=1\n      if(self.grid.validMove(y1,x1)):\n        self.grid.setValue(y1,x1,1)\n        self.gameInstance()\n        if(self.grid.solve()):\n          print("Player 1: "+self.player1.userName+" Won the Match")\n          return\n        self.choice=False\n        self.play()\n      else:\n        print("Invalid Move...Try A Valid Move Instead")\n        self.play()\n\n    else:\n      print("Player 2: "+self.player2.userName+" Move")\n      y2,x2=map(int,input().split())\n      y2-=1\n      x2-=1\n      if(self.grid.validMove(y2,x2)):\n        self.grid.setValue(y2,x2,2)\n        self.gameInstance()\n        if(self.grid.solve()):\n          print("Player 2: "+self.player2.userName+" Won the Match")\n          return\n        self.choice=True\n        self.play()\n      else:\n        print("Invalid Move...Try A Valid Move Instead")\n        self.play()\n\n\nplayer1=Player(input("Enter first player's name : "))\nplayer2=Player(input("Enter second player's name : "))\nnewGame=Game(player1,player2)\nnewGame.gameInstance()\nnewGame.play()\n\n\n```	2022-07-17 08:25:16.965804+00	2022-07-17 08:26:12.525248+00	1	0	0	0	1	{OOD," Object Oriented Design"," Feedback"}
5	Blind 75 Part 2	I did 500+ LeetCode questions, created Blind 75, and interviewed hundreds of FAANG candidates. Frankly speaking, I don't think LeetCode is the best way to interview candidates, but the rules aren't set by us and the best we can do is to be better at this stupid game together.\nSo here are some tips for you on how to get better at LeetCode:\n\n- Revise your CS fundamentals before your start LeetCoding. You don't have to spend that much time studying, but you need to know the advantages of each data structure and when to use which for the question.\n- The average question difficulty you'll get is Medium. Start with Easy questions, do more of them, move on to Medium questions. You probably won't be asked Hard questions in real interviews but you should do some famous Hard questions like Word ladder, serialize/deserialize Binary tree and trapping rain water. You should not be practicing only Easy questions.\n\n\nA paragraph with *emphasis* and **strong importance**.\n\n> A block quote with ~strikethrough~ and a URL: https://reactjs.org.\n\n* Lists\n* [ ] todo\n* [x] done\n\nA table:\n\n| a | b |\n| - | - |\n\nCode:\n~~~js\nfunction(x) {\n  return x;\n}\n~~~\n	2022-07-15 20:45:29.815602+00	2022-07-31 04:16:19.524091+00	5	3	0	0	1	{leetcode,interview,FAANG,coding}
14	Microsoft Online Assessment Question	\n   - Min Deletions to Make Frequency of Each Letter Unique\n    - Min Swaps to Make Palindrome\n    - Min Steps to Make Piles Equal Height\n    - Largest K such that both K and -K exist in array\n    - Max Length of a Concatenated String with Unique Characters\n    - Unique Integers That Sum Up To 0\n    - Partition array into N subsets with balanced sum\n    - Jump Game [Experienced]\n    - Meeting Rooms II\n    - Count Visible Nodes in Binary Tree\n    - Largest Alphabetic Character\n	2022-07-17 08:19:27.308202+00	2022-08-11 11:18:58.853292+00	2	1	0	0	2	{Microsoft," Interview"," Online Assessment"}
\.


--
-- TOC entry 3393 (class 0 OID 16665)
-- Dependencies: 230
-- Data for Name: discussions_downvoted; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_downvoted (id, discussion_id, user_id) FROM stdin;
3	13	2
4	14	1
\.


--
-- TOC entry 3391 (class 0 OID 16645)
-- Dependencies: 228
-- Data for Name: discussions_upvoted; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_upvoted (id, discussion_id, user_id) FROM stdin;
2	13	1
3	13	2
4	14	2
5	18	2
6	14	1
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
7	discussions	discussion
8	discussions	comments
9	users	user
10	authtoken	token
11	authtoken	tokenproxy
12	discussions	upvoted
13	discussions	downvoted
14	problems	category
15	problems	company
16	problems	problem
17	problems	role
18	problems	subcategory
19	problems	solution
20	problems	inputoutput
21	problems	bookmark
22	assessments	assessment
23	assessments	option
24	assessments	question
25	assessments	quesoption
26	discussions	commentupvoted
27	discussions	commentdownvoted
28	assessments	userassessment
\.


--
-- TOC entry 3366 (class 0 OID 16387)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-07-13 22:07:11.025486+00
2	auth	0001_initial	2022-07-13 22:07:11.104376+00
3	admin	0001_initial	2022-07-13 22:07:11.125828+00
4	admin	0002_logentry_remove_auto_add	2022-07-13 22:07:11.138418+00
5	admin	0003_logentry_add_action_flag_choices	2022-07-13 22:07:11.147865+00
6	contenttypes	0002_remove_content_type_name	2022-07-13 22:07:11.170486+00
7	auth	0002_alter_permission_name_max_length	2022-07-13 22:07:11.180254+00
8	auth	0003_alter_user_email_max_length	2022-07-13 22:07:11.192347+00
9	auth	0004_alter_user_username_opts	2022-07-13 22:07:11.204212+00
10	auth	0005_alter_user_last_login_null	2022-07-13 22:07:11.213476+00
11	auth	0006_require_contenttypes_0002	2022-07-13 22:07:11.217218+00
12	auth	0007_alter_validators_add_error_messages	2022-07-13 22:07:11.227698+00
13	auth	0008_alter_user_username_max_length	2022-07-13 22:07:11.24197+00
14	auth	0009_alter_user_last_name_max_length	2022-07-13 22:07:11.253506+00
15	auth	0010_alter_group_name_max_length	2022-07-13 22:07:11.26575+00
16	auth	0011_update_proxy_permissions	2022-07-13 22:07:11.275143+00
17	auth	0012_alter_user_first_name_max_length	2022-07-13 22:07:11.287799+00
18	discussions	0001_initial	2022-07-13 22:07:11.297064+00
19	discussions	0002_comments	2022-07-13 22:07:11.311833+00
20	discussions	0003_comments_parent	2022-07-13 22:07:11.322287+00
21	sessions	0001_initial	2022-07-13 22:07:11.335585+00
22	users	0001_initial	2022-07-13 22:07:11.34205+00
23	authtoken	0001_initial	2022-07-14 13:54:13.819453+00
24	authtoken	0002_auto_20160226_1747	2022-07-14 13:54:13.854633+00
25	authtoken	0003_tokenproxy	2022-07-14 13:54:13.858484+00
26	discussions	0004_discussion_user	2022-07-14 13:54:13.882589+00
27	users	0002_delete_user	2022-07-14 13:54:13.890408+00
28	users	0003_initial	2022-07-14 13:54:13.912016+00
29	discussions	0005_comments_user	2022-07-15 12:27:15.307643+00
30	discussions	0006_comments_hash	2022-07-15 12:27:15.335923+00
31	discussions	0007_alter_comments_parent	2022-07-15 12:27:15.407736+00
32	discussions	0008_upvoted	2022-07-15 12:27:15.449626+00
33	discussions	0009_downvoted	2022-07-15 12:27:15.495108+00
34	discussions	0010_discussion_tags	2022-07-15 12:27:15.524651+00
35	problems	0001_initial	2022-07-15 12:27:15.789782+00
36	problems	0002_alter_problem_companies_alter_problem_roles_and_more	2022-07-15 18:07:08.701829+00
37	problems	0003_alter_inputoutput_problem	2022-07-16 18:55:56.498222+00
38	problems	0004_alter_inputoutput_problem	2022-07-30 16:55:45.555602+00
39	problems	0005_remove_problem_companies_remove_problem_roles_and_more	2022-07-30 17:43:18.672813+00
40	problems	0006_problem_companies	2022-07-30 17:59:38.793532+00
41	problems	0007_problem_roles_problem_subcategories	2022-07-30 18:10:50.502601+00
42	problems	0008_alter_problem_memory_limit_alter_problem_time_limit	2022-07-30 20:41:02.820149+00
43	assessments	0001_initial	2022-07-31 04:25:50.475422+00
44	assessments	0002_assessment_roles_assessment_subcategories_and_more	2022-07-31 04:25:50.599571+00
45	assessments	0003_assessment_image_link	2022-07-31 04:25:50.612632+00
46	assessments	0004_remove_question_image_link	2022-07-31 04:25:50.621953+00
47	assessments	0005_remove_option_image_link	2022-07-31 04:25:50.627647+00
48	assessments	0006_remove_assessment_subcategories_and_more	2022-07-31 04:25:50.696677+00
49	discussions	0011_comments_downvotes_comments_upvotes	2022-07-31 08:46:35.44345+00
50	discussions	0012_commentupvoted_commentdownvoted	2022-07-31 09:02:42.876277+00
51	assessments	0007_userassessment	2022-08-14 07:43:13.924895+00
52	discussions	0013_remove_commentupvoted_comment_and_more	2022-08-14 07:43:14.062337+00
53	problems	0009_alter_solution_language_alter_solution_solve_status	2022-08-25 21:53:07.746941+00
54	problems	0010_solution_time_added	2022-08-25 22:03:51.111174+00
55	assessments	0008_userassessment_passed_userassessment_taken_time	2022-08-26 03:34:25.668589+00
56	users	0004_user_languages_user_skills	2022-08-26 03:34:25.725524+00
57	problems	0011_alter_solution_problem	2022-08-26 04:10:16.503837+00
58	problems	0012_remove_bookmark_date_added_bookmark_time_added_and_more	2022-08-26 15:07:41.682625+00
59	problems	0013_alter_bookmark_time_added_alter_solution_time_added	2022-08-26 15:09:16.920618+00
60	problems	0014_alter_bookmark_problem	2022-08-26 20:19:53.559149+00
61	users	0005_user_is_admin	2022-08-27 13:37:22.577205+00
62	problems	0015_inputoutput_description	2022-08-27 20:32:52.325763+00
\.


--
-- TOC entry 3387 (class 0 OID 16577)
-- Dependencies: 224
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3409 (class 0 OID 16786)
-- Dependencies: 246
-- Data for Name: problems_bookmark; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_bookmark (id, problem_id, user_id, time_added) FROM stdin;
8	44	1	2022-08-27 19:46:37.225878+00
9	43	1	2022-08-27 19:46:46.373808+00
11	45	3	2022-08-28 06:44:30.107086+00
\.


--
-- TOC entry 3395 (class 0 OID 16685)
-- Dependencies: 232
-- Data for Name: problems_category; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_category (id, name, description) FROM stdin;
2	Algo	
3	algo	
5	{'id': 1, 'name': 'Algorithm', 'description': ''}	
6	{'id': 5, 'name': "{'id': 1, 'name': 'Algorithm', 'description': ''}", 'description': ''}	
4	Database	
1	Algorithm	
\.


--
-- TOC entry 3397 (class 0 OID 16696)
-- Dependencies: 234
-- Data for Name: problems_company; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_company (id, name, description) FROM stdin;
3	Amazon	Jeff Bezos
4	new company	new
5	my company	mine
6	Company1	Compny1
7	iijo	hiuh
8	hi	hi
10	A	A
11	Amazon	a
9	a	a
12	Microsoft	
13	Shikho	
14	Lenovo	
2	Facebook	
15	Intdesk	
16	Paypal	
17	Bkash	
18	Sqlcl	
19	Analytica	
20	Datacom	
1	Google	A multinational tech company
\.


--
-- TOC entry 3407 (class 0 OID 16775)
-- Dependencies: 244
-- Data for Name: problems_inputoutput; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_inputoutput (id, input, output, points, problem_id, description) FROM stdin;
106	1	1	1	46	Small Case
107	3	1\n3\n5\n	10	46	Odd 
26	5	1\n2\n3\n4\n5\n\n	1	21	
27	3	1\n2\n3\n	1	21	
34	1	1	1	30	
75	10	1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n	1	40	
76	1	1\n	1	40	
77	5	1\n2\n3\n4\n5\n	1	40	
97	5	1\n2\n3\n4\n5\n	1	43	
99	1	1	1	38	Base Case
100	1	Hello World\n\n	1	44	Basic printing syntax
101	1	1\n	1	45	Small case
102	3	1\n2\n3\n	2	45	Checks for odd values
103	10	1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n	10	45	Checks for large values
\.


--
-- TOC entry 3399 (class 0 OID 16707)
-- Dependencies: 236
-- Data for Name: problems_problem; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem (id, name, description, time_limit, memory_limit, difficulty, submission_count, solve_count) FROM stdin;
22	Two Sum	Given an array of integers $nums$ and an integer $target$, *return indices of the two numbers such that they add up to* $target$.\r\n\r\nYou may assume that each input would have **exactly one solution**, and you may not use the same element twice.\r\n\r\nYou can return the answer in any order.\r\n\r\n\r\n\r\n\r\n### **Example 1:**\r\n\r\n**Input**: nums = [2,7,11,15], target = 9\r\n**Output:** [0,1]\r\n**Explanation:** Because nums[0] + nums[1] == 9, we return [0, 1].\r\n\r\n\r\n### **Example 2:**\r\n\r\n**Input:** nums = [3,2,4], target = 6\r\n**Output:** [1,2]\r\n\r\n### **Example 3:**\r\n\r\n**Input**: nums = [3,3], target = 6\r\n**Output:** [0,1]\r\n\r\n### **Constraints:**\r\n\r\n-  $2 <= nums.length <= 104$\r\n-  $ -109 <= nums[i] <= 109$\r\n-  $-109 <= target <= 109$\r\n- **Only one valid answer exists.**\r\n\r\n \r\n**Follow-up:** Can you come up with an algorithm that is less than O(n2) time complexity?\r\n\r\n\r\n	1.00	256	Medium	0	0
23	Gas Station 2	There are $n$ gas stations along a circular route, where the amount of gas at the $i^{th}$ station is $gas[i]$.\n\n\nYou have a car with an unlimited gas tank and it costs $cost[i]$ of gas to travel from the $i^{th}$ station to its next $(i + 1)^{th}$ station. You begin the journey with an empty tank at one of the gas stations.\n\n\nGiven two integer arrays $gas$ and $cost$, return *the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return* $-1$. \n\n\nIf there exists a solution, **it is guaranteed to be unique.** \n\n\n### **Example**\n\n**Input:** gas = [1,2,3,4,5], cost = [3,4,5,1,2]\n\n**Output:** 3\n\n**Explanation:**\n\nStart at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4\n\nTravel to station 4. Your tank = 4 - 1 + 5 = 8\n\nTravel to station 0. Your tank = 8 - 2 + 1 = 7\n\nTravel to station 1. Your tank = 7 - 3 + 2 = 6\n\nTravel to station 2. Your tank = 6 - 4 + 3 = 5\n\nTravel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.\n\nTherefore, return 3 as the starting index.\n\n**Constraints:**\n\n- $n == gas.length == cost.length$\n\n- $1 <= n <= 105$\n\n- $0 <= gas[i], cost[i] <= 104$\n\n	2.00	256	Easy	0	0
27	New One	Hhakdshakjdasjdnkajsd	2.00	128	Easy	100	50
29	New Problem	Hello	1.00	256	Easy	0	0
32	Check Company	Demo problem for checking company adding	1.00	256	Hard	50	25
21	Gas Station	There are $n$ gas stations along a circular route, where the amount of gas at the $i^{th}$ station is $gas[i]$.\n\n\nYou have a car with an unlimited gas tank and it costs $cost[i]$ of gas to travel from the $i^{th}$ station to its next $(i + 1)^{th}$ station. You begin the journey with an empty tank at one of the gas stations.\n\n\nGiven two integer arrays $gas$ and $cost$, return *the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return* $-1$. \n\n\nIf there exists a solution, **it is guaranteed to be unique.** \n\n\n### **Example**\n\n**Input:** gas = [1,2,3,4,5], cost = [3,4,5,1,2]\n\n**Output:** 3\n\n**Explanation:**\n\nStart at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4\n\nTravel to station 4. Your tank = 4 - 1 + 5 = 8\n\nTravel to station 0. Your tank = 8 - 2 + 1 = 7\n\nTravel to station 1. Your tank = 7 - 3 + 2 = 6\n\nTravel to station 2. Your tank = 6 - 4 + 3 = 5\n\nTravel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.\n\nTherefore, return 3 as the starting index.\n\n**Constraints:**\n\n- $n == gas.length == cost.length$\n\n- $1 <= n <= 105$\n\n- $0 <= gas[i], cost[i] <= 104$\n\n	2.00	256	Easy	0	0
33	Check Company Part 2	Demo for adding companies	1.00	256	Easy	0	0
34	Adding all tags	# Adding the folllowing:\n- roles\n- subcategories\n- companies\n- edited	1.00	256	Medium	555	255
38	New Examples	Desc	1.00	256	Medium	600	257
24	Gas Station 3	There are $n$ gas stations along a circular route, where the amount of gas at the $i^{th}$ station is $gas[i]$.\n\n\nYou have a car with an unlimited gas tank and it costs $cost[i]$ of gas to travel from the $i^{th}$ station to its next $(i + 1)^{th}$ station. You begin the journey with an empty tank at one of the gas stations.\n\n\nGiven two integer arrays $gas$ and $cost$, return *the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return* $-1$. \n\n\nIf there exists a solution, **it is guaranteed to be unique.** \n\n\n### **Example**\n\n**Input:** gas = [1,2,3,4,5], cost = [3,4,5,1,2]\n\n**Output:** 3\n\n**Explanation:**\n\nStart at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4\n\nTravel to station 4. Your tank = 4 - 1 + 5 = 8\n\nTravel to station 0. Your tank = 8 - 2 + 1 = 7\n\nTravel to station 1. Your tank = 7 - 3 + 2 = 6\n\nTravel to station 2. Your tank = 6 - 4 + 3 = 5\n\nTravel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.\n\nTherefore, return 3 as the starting index.\n\n**Constraints:**\n\n- $n == gas.length == cost.length$\n\n- $1 <= n <= 105$\n\n- $0 <= gas[i], cost[i] <= 104$\n\n	2.00	256	Medium	0	0
44	Hello World	Print the string "Hello World"	1.00	256	Easy	1011	1000
30	New Problem	Hello	1.00	256	Easy	0	0
35	Adding All Fields Part 2	# Adding :\n- **I/O**\n- Roles\n- Companies\n- Subcategories\n- Editing added\n- done	2.00	256	Easy	1001	900
28	My Problem	# Headline\n**bold**	1.00	256	Easy	1000	500
40	Easy Loop Problem 2	Given an integer $n$ print the first $n$ positive integers. Each number should be printed in a seperate line.    	1.00	256	Easy	103	77
43	New Problem 	New Demo	1.00	256	Hard	520	150
46	New Prolem Test	For input n, output first n positive intergers\n	2.00	512	Medium	0	0
45	Creating New Problem	There are $n$ gas stations along a circular route, where the amount of gas at the $i^{th}$ station is $gas[i]$.\n\n\nYou have a car with an unlimited gas tank and it costs $cost[i]$ of gas to travel from the $i^{th}$ station to its next $(i + 1)^{th}$ station. You begin the journey with an empty tank at one of the gas stations.\n\n\nGiven two integer arrays $gas$ and $cost$, return *the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return* $-1$. \n\n\nIf there exists a solution, **it is guaranteed to be unique.** \n\n\n### **Example**\n\n**Input:** gas = [1,2,3,4,5], cost = [3,4,5,1,2]\n\n**Output:** 3\n\n**Explanation:**\n\nStart at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4\n\nTravel to station 4. Your tank = 4 - 1 + 5 = 8\n\nTravel to station 0. Your tank = 8 - 2 + 1 = 7\n\nTravel to station 1. Your tank = 7 - 3 + 2 = 6\n\nTravel to station 2. Your tank = 6 - 4 + 3 = 5\n\nTravel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.\n\nTherefore, return 3 as the starting index.\n\n**Constraints:**\n\n- $n == gas.length == cost.length$\n\n- $1 <= n <= 105$\n\n- $0 <= gas[i], cost[i] <= 104$\n\n	1.00	256	Hard	761	253
\.


--
-- TOC entry 3411 (class 0 OID 16873)
-- Dependencies: 248
-- Data for Name: problems_problem_companies; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_companies (id, problem_id, company_id) FROM stdin;
1	33	2
2	33	1
8	21	13
16	43	1
18	44	15
19	44	16
20	44	17
21	35	18
22	35	19
23	28	19
24	28	20
\.


--
-- TOC entry 3413 (class 0 OID 16895)
-- Dependencies: 250
-- Data for Name: problems_problem_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_roles (id, problem_id, role_id) FROM stdin;
19	21	7
38	40	4
57	43	8
58	43	7
61	34	4
62	38	8
63	38	4
64	44	4
65	44	9
66	35	5
67	35	10
68	28	5
69	28	10
70	45	4
73	46	4
74	46	8
\.


--
-- TOC entry 3415 (class 0 OID 16903)
-- Dependencies: 252
-- Data for Name: problems_problem_subcategories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_subcategories (id, problem_id, subcategory_id) FROM stdin;
74	38	8
75	38	1
76	44	16
77	35	6
78	35	7
79	28	6
80	28	7
81	45	13
82	45	14
84	46	8
85	46	1
15	21	9
86	22	1
37	40	8
67	43	1
68	43	5
69	43	15
72	34	7
73	34	6
\.


--
-- TOC entry 3401 (class 0 OID 16726)
-- Dependencies: 238
-- Data for Name: problems_role; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_role (id, name, description) FROM stdin;
1	Software Engineer	Does SWE stuff.
2	Machine Learning Engineer	
3	Data Analyst	
7	Software engineer	
9	Swe intern	
5	Data analyst	
10	Data engineer	
4	Swe	
8	Software developer	
6	Software Developer	
11	Manager	
12	 Backend Engineer	
14	 Data Scientist	
15	Database Engineer	
13	AI Engineer	
\.


--
-- TOC entry 3405 (class 0 OID 16748)
-- Dependencies: 242
-- Data for Name: problems_solution; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_solution (id, code, language, runtime, memory_usage, solve_status, problem_id, user_id, time_added) FROM stdin;
1	// Enter your code here\n\n#include<stdio.h>\n\nint main()\n{\n    printf("hello\\n");\n}	c	0	0	Accepted	22	1	2022-08-25 22:15:43.624033+00
2	// Enter your code here	c	0	0	Accepted	22	1	2022-08-26 03:38:53.827222+00
3	// Enter your code here\n\n#include<iostream>\nusing namespace std;\n\nint main()\n{\n    cout << "hello" << endl;\n}	c	0	0	Accepted	22	1	2022-08-26 04:16:23.680422+00
4	// Enter your code here\n\n#include<iostream>\nusing namespace std;\n\nint main()\n{\n    cout << "hello" << endl;\n    cout << "HIIIIII" << endl;\n}	c	0	0	Accepted	22	1	2022-08-26 04:24:34.953857+00
5	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i <= 5)\n\t\t{\n\t\t\tcout << i << endl;\n\t\t}\n\t}\n}	cpp	0.011	26116	Accepted	40	1	2022-08-26 05:43:16.185204+00
6	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i <= 5)\n\t\t{\n\t\t\tcout << i << endl;\n\t\t}\n\t}\n}	cpp	0.007	1884	Accepted	40	1	2022-08-26 05:43:43.690074+00
7	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i <= 5)\n\t\t{\n\t\t\tcout << i << endl;\n\t\t}\n\t}\n}	c	0	0	Accepted	40	1	2022-08-26 05:49:34.625378+00
8	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i <= 5)\n\t\t{\n\t\t\tcout << i << endl;\n\t\t}\n\t}\n}	cpp	0.007	9844	Accepted	40	1	2022-08-26 06:12:14.550635+00
9	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i <= 5)\n\t\t{\n\t\t\tcout << i << endl;\n\t\t}\n\t}\n}	cpp	0.006	1700	Wrong Answer	40	1	2022-08-26 06:13:11.178665+00
10	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\t\n\t\t\tcout << i << endl;\n\t\t\n\t}\n}	cpp	0.007	1700	Accepted	40	1	2022-08-26 06:13:32.868514+00
11	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\t\n\t\t\tcout << i << endl;\n\t\t\n\t}\n}	cpp	0.007	1832	Accepted	40	1	2022-08-26 06:13:32.95767+00
12	#include<stdio.h>\n\nint main()\n{\n    printf("hello\\n");\n}	c	0.007	20080	Wrong Answer	40	2	2022-08-26 12:39:25.898114+00
13	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i,j,k,l;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\t\n\t\tcout << i << endl;\n\t\t\n\t}\n}	cpp	0.006	6516	Accepted	40	1	2022-08-26 15:13:57.563026+00
14	#include<iostream>\nusing namespace std;\n\nint main()\n{\n\tint n,i,j,k,l;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\t\n\t\tcout << i << endl;\n\t\t\n\t}\n}	cpp	0.008	24684	Accepted	40	1	2022-08-26 15:13:57.743549+00
15		c	0	0	Accepted	44	1	2022-08-27 20:06:55.780221+00
16	// Enter your code here\n\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.004	20404	Wrong Answer	44	1	2022-08-27 20:10:37.463259+00
17	// Enter your code here\n\n#include<stdio.h>\n\nint main()\n{\n    printf("1\\n");\n}	c	0.005	1652	Wrong Answer	45	1	2022-08-27 20:12:56.596133+00
18	// Enter your code here\n#include<stdio.h>\nusing namespace std;\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0	0	Compilation Error	44	1	2022-08-27 20:42:41.873262+00
19	// Enter your code here\n\n#include<stdio.h>\nint main()\n{\n    printf("HELLOO\\n");\n}	c	0.007	20532	Wrong Answer	44	1	2022-08-27 20:43:11.151156+00
20	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.004	5340	Wrong Answer	44	1	2022-08-27 20:45:09.444365+00
21	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.004	5340	Wrong Answer	44	1	2022-08-27 20:45:58.005767+00
22	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.005	5340	Wrong Answer	44	1	2022-08-27 20:46:01.151035+00
23	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.005	5340	Wrong Answer	44	1	2022-08-27 20:46:13.186808+00
24	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.005	5340	Wrong Answer	44	1	2022-08-27 20:46:15.838764+00
25	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.005	5340	Wrong Answer	44	1	2022-08-27 20:46:15.960802+00
26	// Enter your code here\n#include<stdio.h>\n\nint main()\n{\n    printf("Hello\\n");\n}	c	0.005	1640	Wrong Answer	44	1	2022-08-27 21:01:07.741133+00
27	#include<iostream.h>\nusing namespace std;\n\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tcout << i << endl;\n\t}\n}	cpp	0	0	Compilation Error	45	3	2022-08-28 06:23:26.156688+00
28	#include<iostream>\nusing namespace std;\n\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tcout << i << endl;\n\t}\n}	cpp	0.007	24992	Accepted	45	3	2022-08-28 06:23:47.046607+00
29	#include<iostream>\nusing namespace std;\n\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tcout << i << endl;\n\t}\n}	cpp	0.007	26032	Accepted	45	3	2022-08-28 06:23:47.218838+00
30	#include<iostream>\nusing namespace std;\n\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i<=5) cout << i << endl;\n\t}\n}	cpp	0.006	1520	Wrong Answer	45	3	2022-08-28 06:28:29.849637+00
63	#include<iostream>\nusing namespace std;\n\n\nint main()\n{\n\tint n,i;\n\tcin >> n;\n\tfor(i=1;i<=n;i++)\n\t{\n\t\tif(i<=5) cout << i << endl;\n\t}\n}	cpp	0.007	26168	Wrong Answer	45	3	2022-08-28 06:43:02.172384+00
\.


--
-- TOC entry 3403 (class 0 OID 16737)
-- Dependencies: 240
-- Data for Name: problems_subcategory; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_subcategory (id, name, description, category_id) FROM stdin;
2	DP		2
3	Dp		2
4	dp		3
10	Trees		6
9	Trees		5
11	Loop		5
12	Loop		6
5	Trees		1
15	Strings		1
16	String		1
6	SQL		4
7	Data Analysis		4
13	Prime Numbers		1
14	Number Theory		1
8	Loop		1
1	DP		1
\.


--
-- TOC entry 3389 (class 0 OID 16615)
-- Dependencies: 226
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users_user (user_ptr_id, city, country, about, occupation, current_workplace, website_link, github_link, languages, skills, is_admin) FROM stdin;
2								\N	\N	t
3								\N	\N	f
1	Dhaka	Bangladesh		Student	None	ramisa2108.com	ramisa2108	{English,Bengali}	{C,C++,Java}	t
4								\N	\N	f
\.


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 263
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_categories_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 253
-- Name: assessments_assessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_id_seq', 7, true);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 261
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_roles_id_seq', 17, true);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 255
-- Name: assessments_option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_option_id_seq', 542, true);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 259
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_quesoption_id_seq', 542, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 257
-- Name: assessments_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_question_id_seq', 181, true);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 265
-- Name: assessments_userassessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_userassessment_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 112, true);


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

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 222
-- Name: discussions_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_comments_id_seq', 21, true);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 220
-- Name: discussions_discussion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_discussion_id_seq', 19, true);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 229
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_downvoted_id_seq', 4, true);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 227
-- Name: discussions_upvoted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_upvoted_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.django_content_type_id_seq', 28, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 245
-- Name: problems_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_bookmark_id_seq', 11, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 231
-- Name: problems_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_category_id_seq', 6, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 233
-- Name: problems_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_company_id_seq', 20, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 243
-- Name: problems_inputoutput_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_inputoutput_id_seq', 107, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 247
-- Name: problems_problem_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_companies_id_seq', 25, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 235
-- Name: problems_problem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_id_seq', 46, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 249
-- Name: problems_problem_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_roles_id_seq', 74, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 251
-- Name: problems_problem_subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_subcategories_id_seq', 86, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 237
-- Name: problems_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_role_id_seq', 15, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 241
-- Name: problems_solution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_solution_id_seq', 63, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 239
-- Name: problems_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_subcategory_id_seq', 16, true);


--
-- TOC entry 3191 (class 2606 OID 17087)
-- Name: assessments_assessment_categories assessments_assessment_c_assessment_id_category_i_a39850b4_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessment_c_assessment_id_category_i_a39850b4_uniq UNIQUE (assessment_id, category_id);


--
-- TOC entry 3195 (class 2606 OID 17085)
-- Name: assessments_assessment_categories assessments_assessment_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessment_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 16964)
-- Name: assessments_assessment assessments_assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment
    ADD CONSTRAINT assessments_assessment_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 17050)
-- Name: assessments_assessment_roles assessments_assessment_r_assessment_id_role_id_48a76d7a_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessment_r_assessment_id_role_id_48a76d7a_uniq UNIQUE (assessment_id, role_id);


--
-- TOC entry 3188 (class 2606 OID 17034)
-- Name: assessments_assessment_roles assessments_assessment_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessment_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 16975)
-- Name: assessments_option assessments_option_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_option
    ADD CONSTRAINT assessments_option_pkey PRIMARY KEY (id);


--
-- TOC entry 3182 (class 2606 OID 16994)
-- Name: assessments_quesoption assessments_quesoption_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesoption_pkey PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 16986)
-- Name: assessments_question assessments_question_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question
    ADD CONSTRAINT assessments_question_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 17150)
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
-- TOC entry 3120 (class 2606 OID 16600)
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- TOC entry 3122 (class 2606 OID 16602)
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- TOC entry 3112 (class 2606 OID 16564)
-- Name: discussions_comments discussions_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 3108 (class 2606 OID 16553)
-- Name: discussions_discussion discussions_discussion_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion
    ADD CONSTRAINT discussions_discussion_pkey PRIMARY KEY (id);


--
-- TOC entry 3131 (class 2606 OID 16670)
-- Name: discussions_downvoted discussions_downvoted_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvoted_pkey PRIMARY KEY (id);


--
-- TOC entry 3127 (class 2606 OID 16650)
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
-- TOC entry 3116 (class 2606 OID 16584)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3152 (class 2606 OID 16791)
-- Name: problems_bookmark problems_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_pkey PRIMARY KEY (id);


--
-- TOC entry 3134 (class 2606 OID 16693)
-- Name: problems_category problems_category_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_category
    ADD CONSTRAINT problems_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3136 (class 2606 OID 16704)
-- Name: problems_company problems_company_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_company
    ADD CONSTRAINT problems_company_pkey PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 16783)
-- Name: problems_inputoutput problems_inputoutput_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput
    ADD CONSTRAINT problems_inputoutput_pkey PRIMARY KEY (id);


--
-- TOC entry 3157 (class 2606 OID 16878)
-- Name: problems_problem_companies problems_problem_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 3160 (class 2606 OID 16880)
-- Name: problems_problem_companies problems_problem_companies_problem_id_company_id_139482c3_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_companies_problem_id_company_id_139482c3_uniq UNIQUE (problem_id, company_id);


--
-- TOC entry 3138 (class 2606 OID 16715)
-- Name: problems_problem problems_problem_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem
    ADD CONSTRAINT problems_problem_pkey PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 16900)
-- Name: problems_problem_roles problems_problem_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 16910)
-- Name: problems_problem_roles problems_problem_roles_problem_id_role_id_8e4c921f_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_problem_id_role_id_8e4c921f_uniq UNIQUE (problem_id, role_id);


--
-- TOC entry 3168 (class 2606 OID 16924)
-- Name: problems_problem_subcategories problems_problem_subcate_problem_id_subcategory_i_8024c4a4_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_subcate_problem_id_subcategory_i_8024c4a4_uniq UNIQUE (problem_id, subcategory_id);


--
-- TOC entry 3170 (class 2606 OID 16908)
-- Name: problems_problem_subcategories problems_problem_subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_subcategories_pkey PRIMARY KEY (id);


--
-- TOC entry 3140 (class 2606 OID 16734)
-- Name: problems_role problems_role_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_role
    ADD CONSTRAINT problems_role_pkey PRIMARY KEY (id);


--
-- TOC entry 3145 (class 2606 OID 16756)
-- Name: problems_solution problems_solution_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_pkey PRIMARY KEY (id);


--
-- TOC entry 3143 (class 2606 OID 16745)
-- Name: problems_subcategory problems_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory
    ADD CONSTRAINT problems_subcategory_pkey PRIMARY KEY (id);


--
-- TOC entry 3124 (class 2606 OID 16622)
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (user_ptr_id);


--
-- TOC entry 3192 (class 1259 OID 17098)
-- Name: assessments_assessment_categories_assessment_id_bd0ae8fa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_categories_assessment_id_bd0ae8fa ON public.assessments_assessment_categories USING btree (assessment_id);


--
-- TOC entry 3193 (class 1259 OID 17099)
-- Name: assessments_assessment_categories_category_id_8ed2a4fa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_categories_category_id_8ed2a4fa ON public.assessments_assessment_categories USING btree (category_id);


--
-- TOC entry 3186 (class 1259 OID 17061)
-- Name: assessments_assessment_roles_assessment_id_ba5f8115; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_roles_assessment_id_ba5f8115 ON public.assessments_assessment_roles USING btree (assessment_id);


--
-- TOC entry 3189 (class 1259 OID 17062)
-- Name: assessments_assessment_roles_role_id_f6ee4e3b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_roles_role_id_f6ee4e3b ON public.assessments_assessment_roles USING btree (role_id);


--
-- TOC entry 3180 (class 1259 OID 17013)
-- Name: assessments_quesoption_option_id_d298963d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_quesoption_option_id_d298963d ON public.assessments_quesoption USING btree (option_id);


--
-- TOC entry 3183 (class 1259 OID 17014)
-- Name: assessments_quesoption_question_id_0233bee8; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_quesoption_question_id_0233bee8 ON public.assessments_quesoption USING btree (question_id);


--
-- TOC entry 3177 (class 1259 OID 17077)
-- Name: assessments_question_assessment_id_165f6d6d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_question_assessment_id_165f6d6d ON public.assessments_question USING btree (assessment_id);


--
-- TOC entry 3196 (class 1259 OID 17161)
-- Name: assessments_userassessment_assessment_id_49144e6e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_userassessment_assessment_id_49144e6e ON public.assessments_userassessment USING btree (assessment_id);


--
-- TOC entry 3199 (class 1259 OID 17162)
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
-- TOC entry 3118 (class 1259 OID 16608)
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- TOC entry 3110 (class 1259 OID 16570)
-- Name: discussions_comments_discussion_id_f90e1469; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_comments_discussion_id_f90e1469 ON public.discussions_comments USING btree (discussion_id);


--
-- TOC entry 3113 (class 1259 OID 16633)
-- Name: discussions_comments_user_id_264c0caa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_comments_user_id_264c0caa ON public.discussions_comments USING btree (user_id);


--
-- TOC entry 3109 (class 1259 OID 16614)
-- Name: discussions_discussion_user_id_243d8c0b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_discussion_user_id_243d8c0b ON public.discussions_discussion USING btree (user_id);


--
-- TOC entry 3129 (class 1259 OID 16681)
-- Name: discussions_downvoted_discussion_id_94acc25e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_downvoted_discussion_id_94acc25e ON public.discussions_downvoted USING btree (discussion_id);


--
-- TOC entry 3132 (class 1259 OID 16682)
-- Name: discussions_downvoted_user_id_ce7b0bbe; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_downvoted_user_id_ce7b0bbe ON public.discussions_downvoted USING btree (user_id);


--
-- TOC entry 3125 (class 1259 OID 16661)
-- Name: discussions_upvoted_discussion_id_39235d74; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_upvoted_discussion_id_39235d74 ON public.discussions_upvoted USING btree (discussion_id);


--
-- TOC entry 3128 (class 1259 OID 16662)
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
-- TOC entry 3114 (class 1259 OID 16586)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3117 (class 1259 OID 16585)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3153 (class 1259 OID 16868)
-- Name: problems_bookmark_problem_id_9ee2c82f; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_bookmark_problem_id_9ee2c82f ON public.problems_bookmark USING btree (problem_id);


--
-- TOC entry 3154 (class 1259 OID 16869)
-- Name: problems_bookmark_user_id_550f864e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_bookmark_user_id_550f864e ON public.problems_bookmark USING btree (user_id);


--
-- TOC entry 3150 (class 1259 OID 16857)
-- Name: problems_inputoutput_problem_id_9dd618b3; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_inputoutput_problem_id_9dd618b3 ON public.problems_inputoutput USING btree (problem_id);


--
-- TOC entry 3155 (class 1259 OID 16892)
-- Name: problems_problem_companies_company_id_62f5fe1d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_companies_company_id_62f5fe1d ON public.problems_problem_companies USING btree (company_id);


--
-- TOC entry 3158 (class 1259 OID 16891)
-- Name: problems_problem_companies_problem_id_496e4620; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_companies_problem_id_496e4620 ON public.problems_problem_companies USING btree (problem_id);


--
-- TOC entry 3163 (class 1259 OID 16921)
-- Name: problems_problem_roles_problem_id_52d6434b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_roles_problem_id_52d6434b ON public.problems_problem_roles USING btree (problem_id);


--
-- TOC entry 3166 (class 1259 OID 16922)
-- Name: problems_problem_roles_role_id_6ee93c61; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_roles_role_id_6ee93c61 ON public.problems_problem_roles USING btree (role_id);


--
-- TOC entry 3171 (class 1259 OID 16935)
-- Name: problems_problem_subcategories_problem_id_63c721e1; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_subcategories_problem_id_63c721e1 ON public.problems_problem_subcategories USING btree (problem_id);


--
-- TOC entry 3172 (class 1259 OID 16936)
-- Name: problems_problem_subcategories_subcategory_id_703d70cc; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_subcategories_subcategory_id_703d70cc ON public.problems_problem_subcategories USING btree (subcategory_id);


--
-- TOC entry 3146 (class 1259 OID 16822)
-- Name: problems_solution_problem_id_2d4e6e8e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_solution_problem_id_2d4e6e8e ON public.problems_solution USING btree (problem_id);


--
-- TOC entry 3147 (class 1259 OID 16823)
-- Name: problems_solution_user_id_1d693e38; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_solution_user_id_1d693e38 ON public.problems_solution USING btree (user_id);


--
-- TOC entry 3141 (class 1259 OID 16811)
-- Name: problems_subcategory_category_id_fda38037; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_subcategory_category_id_fda38037 ON public.problems_subcategory USING btree (category_id);


--
-- TOC entry 3233 (class 2606 OID 17051)
-- Name: assessments_assessment_roles assessments_assessme_assessment_id_ba5f8115_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessme_assessment_id_ba5f8115_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3235 (class 2606 OID 17088)
-- Name: assessments_assessment_categories assessments_assessme_assessment_id_bd0ae8fa_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessme_assessment_id_bd0ae8fa_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3236 (class 2606 OID 17093)
-- Name: assessments_assessment_categories assessments_assessme_category_id_8ed2a4fa_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessme_category_id_8ed2a4fa_fk_problems_ FOREIGN KEY (category_id) REFERENCES public.problems_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3234 (class 2606 OID 17056)
-- Name: assessments_assessment_roles assessments_assessme_role_id_f6ee4e3b_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessme_role_id_f6ee4e3b_fk_problems_ FOREIGN KEY (role_id) REFERENCES public.problems_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3231 (class 2606 OID 17003)
-- Name: assessments_quesoption assessments_quesopti_option_id_d298963d_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesopti_option_id_d298963d_fk_assessmen FOREIGN KEY (option_id) REFERENCES public.assessments_option(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3232 (class 2606 OID 17008)
-- Name: assessments_quesoption assessments_quesopti_question_id_0233bee8_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesopti_question_id_0233bee8_fk_assessmen FOREIGN KEY (question_id) REFERENCES public.assessments_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3230 (class 2606 OID 17044)
-- Name: assessments_question assessments_question_assessment_id_165f6d6d_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question
    ADD CONSTRAINT assessments_question_assessment_id_165f6d6d_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3237 (class 2606 OID 17151)
-- Name: assessments_userassessment assessments_userasse_assessment_id_49144e6e_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment
    ADD CONSTRAINT assessments_userasse_assessment_id_49144e6e_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3238 (class 2606 OID 17156)
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
-- TOC entry 3212 (class 2606 OID 16603)
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3210 (class 2606 OID 16565)
-- Name: discussions_comments discussions_comments_discussion_id_f90e1469_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_discussion_id_f90e1469_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3211 (class 2606 OID 16628)
-- Name: discussions_comments discussions_comments_user_id_264c0caa_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_user_id_264c0caa_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3209 (class 2606 OID 16609)
-- Name: discussions_discussion discussions_discussion_user_id_243d8c0b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion
    ADD CONSTRAINT discussions_discussion_user_id_243d8c0b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3216 (class 2606 OID 16671)
-- Name: discussions_downvoted discussions_downvote_discussion_id_94acc25e_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvote_discussion_id_94acc25e_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3217 (class 2606 OID 16676)
-- Name: discussions_downvoted discussions_downvoted_user_id_ce7b0bbe_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvoted_user_id_ce7b0bbe_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3214 (class 2606 OID 16651)
-- Name: discussions_upvoted discussions_upvoted_discussion_id_39235d74_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_upvoted
    ADD CONSTRAINT discussions_upvoted_discussion_id_39235d74_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3215 (class 2606 OID 16656)
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
-- TOC entry 3222 (class 2606 OID 16858)
-- Name: problems_bookmark problems_bookmark_problem_id_9ee2c82f_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_problem_id_9ee2c82f_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3223 (class 2606 OID 16863)
-- Name: problems_bookmark problems_bookmark_user_id_550f864e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_user_id_550f864e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3221 (class 2606 OID 16852)
-- Name: problems_inputoutput problems_inputoutput_problem_id_9dd618b3_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput
    ADD CONSTRAINT problems_inputoutput_problem_id_9dd618b3_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3225 (class 2606 OID 16886)
-- Name: problems_problem_companies problems_problem_com_company_id_62f5fe1d_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_com_company_id_62f5fe1d_fk_problems_ FOREIGN KEY (company_id) REFERENCES public.problems_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3224 (class 2606 OID 16881)
-- Name: problems_problem_companies problems_problem_com_problem_id_496e4620_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_com_problem_id_496e4620_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3226 (class 2606 OID 16911)
-- Name: problems_problem_roles problems_problem_rol_problem_id_52d6434b_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_rol_problem_id_52d6434b_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3227 (class 2606 OID 16916)
-- Name: problems_problem_roles problems_problem_roles_role_id_6ee93c61_fk_problems_role_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_role_id_6ee93c61_fk_problems_role_id FOREIGN KEY (role_id) REFERENCES public.problems_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3228 (class 2606 OID 16925)
-- Name: problems_problem_subcategories problems_problem_sub_problem_id_63c721e1_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_sub_problem_id_63c721e1_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3229 (class 2606 OID 16930)
-- Name: problems_problem_subcategories problems_problem_sub_subcategory_id_703d70cc_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_sub_subcategory_id_703d70cc_fk_problems_ FOREIGN KEY (subcategory_id) REFERENCES public.problems_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3219 (class 2606 OID 16812)
-- Name: problems_solution problems_solution_problem_id_2d4e6e8e_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_problem_id_2d4e6e8e_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3220 (class 2606 OID 16817)
-- Name: problems_solution problems_solution_user_id_1d693e38_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_user_id_1d693e38_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3218 (class 2606 OID 16806)
-- Name: problems_subcategory problems_subcategory_category_id_fda38037_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory
    ADD CONSTRAINT problems_subcategory_category_id_fda38037_fk_problems_ FOREIGN KEY (category_id) REFERENCES public.problems_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3213 (class 2606 OID 16623)
-- Name: users_user users_user_user_ptr_id_dad4eb89_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_user_ptr_id_dad4eb89_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-08-28 13:57:30 +06

--
-- PostgreSQL database dump complete
--

