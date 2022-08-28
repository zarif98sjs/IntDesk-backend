--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

-- Started on 2022-08-28 09:15:55 +06

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
-- TOC entry 237 (class 1259 OID 16723)
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
-- TOC entry 247 (class 1259 OID 16844)
-- Name: assessments_assessment_categories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment_categories (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.assessments_assessment_categories OWNER TO "user";

--
-- TOC entry 246 (class 1259 OID 16842)
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
-- Dependencies: 246
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_categories_id_seq OWNED BY public.assessments_assessment_categories.id;


--
-- TOC entry 236 (class 1259 OID 16721)
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
-- Dependencies: 236
-- Name: assessments_assessment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_id_seq OWNED BY public.assessments_assessment.id;


--
-- TOC entry 245 (class 1259 OID 16793)
-- Name: assessments_assessment_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_assessment_roles (
    id bigint NOT NULL,
    assessment_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.assessments_assessment_roles OWNER TO "user";

--
-- TOC entry 244 (class 1259 OID 16791)
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
-- Dependencies: 244
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_assessment_roles_id_seq OWNED BY public.assessments_assessment_roles.id;


--
-- TOC entry 239 (class 1259 OID 16731)
-- Name: assessments_option; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assessments_option (
    id bigint NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.assessments_option OWNER TO "user";

--
-- TOC entry 238 (class 1259 OID 16729)
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
-- Dependencies: 238
-- Name: assessments_option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_option_id_seq OWNED BY public.assessments_option.id;


--
-- TOC entry 243 (class 1259 OID 16753)
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
-- TOC entry 242 (class 1259 OID 16751)
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
-- Dependencies: 242
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_quesoption_id_seq OWNED BY public.assessments_quesoption.id;


--
-- TOC entry 241 (class 1259 OID 16742)
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
-- TOC entry 240 (class 1259 OID 16740)
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
-- Dependencies: 240
-- Name: assessments_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assessments_question_id_seq OWNED BY public.assessments_question.id;


--
-- TOC entry 249 (class 1259 OID 16866)
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
-- TOC entry 248 (class 1259 OID 16864)
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
-- Dependencies: 248
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
-- TOC entry 250 (class 1259 OID 16895)
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO "user";

--
-- TOC entry 254 (class 1259 OID 16921)
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
-- TOC entry 253 (class 1259 OID 16919)
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
-- Dependencies: 253
-- Name: discussions_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_comments_id_seq OWNED BY public.discussions_comments.id;


--
-- TOC entry 252 (class 1259 OID 16910)
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
-- TOC entry 251 (class 1259 OID 16908)
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
-- Dependencies: 251
-- Name: discussions_discussion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_discussion_id_seq OWNED BY public.discussions_discussion.id;


--
-- TOC entry 258 (class 1259 OID 16985)
-- Name: discussions_downvoted; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_downvoted (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.discussions_downvoted OWNER TO "user";

--
-- TOC entry 257 (class 1259 OID 16983)
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
-- Dependencies: 257
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.discussions_downvoted_id_seq OWNED BY public.discussions_downvoted.id;


--
-- TOC entry 256 (class 1259 OID 16965)
-- Name: discussions_upvoted; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.discussions_upvoted (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.discussions_upvoted OWNER TO "user";

--
-- TOC entry 255 (class 1259 OID 16963)
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
-- Dependencies: 255
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
-- TOC entry 265 (class 1259 OID 17127)
-- Name: django_session; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "user";

--
-- TOC entry 235 (class 1259 OID 16637)
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
-- TOC entry 234 (class 1259 OID 16635)
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
-- Dependencies: 234
-- Name: problems_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_bookmark_id_seq OWNED BY public.problems_bookmark.id;


--
-- TOC entry 221 (class 1259 OID 16536)
-- Name: problems_category; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_category (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_category OWNER TO "user";

--
-- TOC entry 220 (class 1259 OID 16534)
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
-- Dependencies: 220
-- Name: problems_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_category_id_seq OWNED BY public.problems_category.id;


--
-- TOC entry 223 (class 1259 OID 16547)
-- Name: problems_company; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_company (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_company OWNER TO "user";

--
-- TOC entry 222 (class 1259 OID 16545)
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
-- Dependencies: 222
-- Name: problems_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_company_id_seq OWNED BY public.problems_company.id;


--
-- TOC entry 233 (class 1259 OID 16626)
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
-- TOC entry 232 (class 1259 OID 16624)
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
-- Dependencies: 232
-- Name: problems_inputoutput_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_inputoutput_id_seq OWNED BY public.problems_inputoutput.id;


--
-- TOC entry 225 (class 1259 OID 16558)
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
-- TOC entry 260 (class 1259 OID 17047)
-- Name: problems_problem_companies; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_companies (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    company_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_companies OWNER TO "user";

--
-- TOC entry 259 (class 1259 OID 17045)
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
-- TOC entry 224 (class 1259 OID 16556)
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
-- Dependencies: 224
-- Name: problems_problem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_problem_id_seq OWNED BY public.problems_problem.id;


--
-- TOC entry 262 (class 1259 OID 17069)
-- Name: problems_problem_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_roles (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_roles OWNER TO "user";

--
-- TOC entry 261 (class 1259 OID 17067)
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
-- TOC entry 264 (class 1259 OID 17077)
-- Name: problems_problem_subcategories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_problem_subcategories (
    id bigint NOT NULL,
    problem_id bigint NOT NULL,
    subcategory_id bigint NOT NULL
);


ALTER TABLE public.problems_problem_subcategories OWNER TO "user";

--
-- TOC entry 263 (class 1259 OID 17075)
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
-- TOC entry 227 (class 1259 OID 16577)
-- Name: problems_role; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.problems_role (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.problems_role OWNER TO "user";

--
-- TOC entry 226 (class 1259 OID 16575)
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
-- Dependencies: 226
-- Name: problems_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_role_id_seq OWNED BY public.problems_role.id;


--
-- TOC entry 231 (class 1259 OID 16599)
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
-- TOC entry 230 (class 1259 OID 16597)
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
-- Dependencies: 230
-- Name: problems_solution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_solution_id_seq OWNED BY public.problems_solution.id;


--
-- TOC entry 229 (class 1259 OID 16588)
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
-- TOC entry 228 (class 1259 OID 16586)
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
-- Dependencies: 228
-- Name: problems_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.problems_subcategory_id_seq OWNED BY public.problems_subcategory.id;


--
-- TOC entry 266 (class 1259 OID 17145)
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
-- TOC entry 3050 (class 2604 OID 16726)
-- Name: assessments_assessment id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_id_seq'::regclass);


--
-- TOC entry 3055 (class 2604 OID 16847)
-- Name: assessments_assessment_categories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_categories_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 16796)
-- Name: assessments_assessment_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles ALTER COLUMN id SET DEFAULT nextval('public.assessments_assessment_roles_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 16734)
-- Name: assessments_option id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_option ALTER COLUMN id SET DEFAULT nextval('public.assessments_option_id_seq'::regclass);


--
-- TOC entry 3053 (class 2604 OID 16756)
-- Name: assessments_quesoption id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption ALTER COLUMN id SET DEFAULT nextval('public.assessments_quesoption_id_seq'::regclass);


--
-- TOC entry 3052 (class 2604 OID 16745)
-- Name: assessments_question id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question ALTER COLUMN id SET DEFAULT nextval('public.assessments_question_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 16869)
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
-- TOC entry 3058 (class 2604 OID 16924)
-- Name: discussions_comments id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments ALTER COLUMN id SET DEFAULT nextval('public.discussions_comments_id_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 16913)
-- Name: discussions_discussion id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion ALTER COLUMN id SET DEFAULT nextval('public.discussions_discussion_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 16988)
-- Name: discussions_downvoted id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted ALTER COLUMN id SET DEFAULT nextval('public.discussions_downvoted_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 16968)
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
-- TOC entry 3049 (class 2604 OID 16640)
-- Name: problems_bookmark id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark ALTER COLUMN id SET DEFAULT nextval('public.problems_bookmark_id_seq'::regclass);


--
-- TOC entry 3042 (class 2604 OID 16539)
-- Name: problems_category id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_category ALTER COLUMN id SET DEFAULT nextval('public.problems_category_id_seq'::regclass);


--
-- TOC entry 3043 (class 2604 OID 16550)
-- Name: problems_company id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_company ALTER COLUMN id SET DEFAULT nextval('public.problems_company_id_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 16629)
-- Name: problems_inputoutput id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput ALTER COLUMN id SET DEFAULT nextval('public.problems_inputoutput_id_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 16561)
-- Name: problems_problem id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 17050)
-- Name: problems_problem_companies id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_companies_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 17072)
-- Name: problems_problem_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_roles_id_seq'::regclass);


--
-- TOC entry 3063 (class 2604 OID 17080)
-- Name: problems_problem_subcategories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories ALTER COLUMN id SET DEFAULT nextval('public.problems_problem_subcategories_id_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 16580)
-- Name: problems_role id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_role ALTER COLUMN id SET DEFAULT nextval('public.problems_role_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 16602)
-- Name: problems_solution id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution ALTER COLUMN id SET DEFAULT nextval('public.problems_solution_id_seq'::regclass);


--
-- TOC entry 3046 (class 2604 OID 16591)
-- Name: problems_subcategory id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory ALTER COLUMN id SET DEFAULT nextval('public.problems_subcategory_id_seq'::regclass);


--
-- TOC entry 3400 (class 0 OID 16723)
-- Dependencies: 237
-- Data for Name: assessments_assessment; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment (id, skill_name, passed_by, taken_by, image_link) FROM stdin;
2	C	2	51	https://upload.wikimedia.org/wikipedia/commons/1/18/C_Programming_Language.svg
5	Microsoft Powerpoint	10	40	https://upload.wikimedia.org/wikipedia/commons/1/16/Microsoft_PowerPoint_2013-2019_logo.svg
4	Javascript	2	15	https://upload.wikimedia.org/wikipedia/commons/9/99/Unofficial_JavaScript_logo_2.svg
1	Python	10	101	https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg
9	MySQL	15	100	https://en.wikipedia.org/wiki/MySQL#/media/File:MySQL_logo.svg
10	Microsoft Excel	7	46	https://en.wikipedia.org/wiki/Microsoft_Excel#/media/File:Microsoft_Office_Excel_(2019%E2%80%93present).svg
\.


--
-- TOC entry 3410 (class 0 OID 16844)
-- Dependencies: 247
-- Data for Name: assessments_assessment_categories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment_categories (id, assessment_id, category_id) FROM stdin;
\.


--
-- TOC entry 3408 (class 0 OID 16793)
-- Dependencies: 245
-- Data for Name: assessments_assessment_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_assessment_roles (id, assessment_id, role_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
6	4	4
7	5	5
272	4	32
273	4	33
277	9	35
278	10	5
279	10	36
\.


--
-- TOC entry 3402 (class 0 OID 16731)
-- Dependencies: 239
-- Data for Name: assessments_option; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_option (id, description) FROM stdin;
1	Local
2	Even
3	Error
4	Odd
5	31 13
6	None
7	Error
8	[1, 2]
9	13 13
11	[1, 2, 1, 2, 1, 2]
10	[1, 2, 1, 2]
13	int and str
12	str and int
14	str and str
15	int and int
16	['Monday', 'Tuesday']
17	['Tuesday', 'Wednesday']
18	['Wednesday', 'Monday']
19	['Sunday', 'Monday']
20	try
21	Brackets
22	54 is an odd number
24	None of the above
23	Indentation
25	Key
26	54 is an even number
27	number is an even number
28	filter
29	number is an odd number
30	tuple
31	list
32	int
33	Global
34	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
35	{'first' : 'sunday', 'second' : 'monday'}
36	Cannot be predicted
37	{ 1:3, 2:4}
38	None of the above
39	List
40	Tuple
41	String
42	finally
43	None
44	[7, 19, 45, 89]
45	Int
46	[2, 4, 22, 72]
47	[4, 7, 19, 2, 89, 45, 72, 22]
48	[2, 4, 7, 19, 22, 45, 72, 89]
49	All of the above
50	31 31
51	int and float
52	float and float
53	float and int
54	int and int
55	strptime()
56	strftime()
57	Both A and B
58	None of the above
59	13 31
60	{'Hello' : 'World', 'First' : 1}
61	{'World' : 'Hello', 1 : 'First'}
62	Can be both A or B
63	[2,2,3]
64	(2,2,3)
65	Error
66	Nonel of the above
67	(1,2,3)
68	{1, 2, 3, 3, 2, 4, 5, 5}
69	None
71	for
70	{1, 5}
72	{1, 2, 3, 4, 5}
73	pYtHoN PrOgRaMmInG
74	python programming
75	PYTHON PROGRAMMING
76	Python Programming
77	except
78	float and int
79	int and float
80	float and float
81	while
82	int and int
83	Both A and B
84	None of the above
85	if not ele not in list
86	128
87	five neither three thrive
88	if ele in list
89	16
90	do-while
91	three three three three
92	five neither five neither
93	8
94	129
95	121
96	None of the above
97	None of the above
98	0 1 2 ..... 15
99	32
100	Infinite loop
101	0 3 6 9 12 15
102	0 3 6 9 12
103	No fixed length is specified
104	Pointers
105	Loops
106	five neither thrive three
107	Dynamic Typing
108	All of the above
109	10
110	1
111	50
112	20
113	None of the above
114	121
115	8
116	[2, 4, 6], [1, 3, 5]
117	[2, 4, 6], [2, 4, 6]
118	129
119	None of these
120	[1, 3, 5], [1, 3, 5]
121	32
122	['Monday', 'Tuesday']
123	['Sunday', 'Monday']
124	['Tuesday', 'Wednesday']
125	['Wednesday', 'Monday']
126	Even
127	16
128	Odd
129	Error
130	None
131	Error
132	[1, 2]
133	[1, 2, 1, 2]
134	[1, 2, 1, 2, 1, 2]
135	List
136	Tuple
137	Int
138	String
139	filter
140	int
141	list
142	for
143	tuple
144	five neither three thrive
145	three three three three
146	five neither thrive three
147	five neither five neither
148	[7, 19, 45, 89]
149	while
151	[4, 7, 19, 2, 89, 45, 72, 22]
150	[2, 4, 22, 72]
152	[2, 4, 7, 19, 22, 45, 72, 89]
153	do-while
154	float and int
155	float and float
156	int and float
157	{1, 2, 3, 3, 2, 4, 5, 5}
158	int and int
159	None
160	{'Hello' : 'World', 'First' : 1}
161	{1, 2, 3, 4, 5}
162	{1, 5}
163	{'World' : 'Hello', 1 : 'First'}
164	Can be both A or B
165	Nonel of the above
166	None of the above
167	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
169	if ele in list
168	{'first' : 'sunday', 'second' : 'monday'}
170	{ 1:3, 2:4}
171	None of the above
173	54 is an even number
172	54 is an odd number
174	number is an even number
175	number is an odd number
176	128
177	None of the above
178	Both A and B
179	[2, 4, 6], [2, 4, 6]
180	if not ele not in list
181	No fixed length is specified
182	10
183	20
184	50
185	strftime()
186	strptime()
187	Both A and B
188	1
189	None of the above
190	pYtHoN PrOgRaMmInG
191	Python Programming
192	python programming
193	PYTHON PROGRAMMING
194	Pointers
195	Loops
196	Dynamic Typing
197	All of the above
198	[2, 4, 6], [1, 3, 5]
199	finally
200	except
201	[1, 3, 5], [1, 3, 5]
202	0 1 2 ..... 15
203	Infinite loop
204	0 3 6 9 12
205	0 3 6 9 12 15
206	str and int
207	All of the above
208	try
209	None of these
210	13 31
211	31 31
212	129
213	13 13
214	8
215	121
216	int and str
217	str and str
218	None of the above
219	Brackets
220	Indentation
221	Key
222	int and int
223	31 13
224	(2,2,3)
225	(1,2,3)
226	Error
227	float and int
228	int and int
229	129
230	8
231	[2,2,3]
232	Local
233	None of the above
234	Global
235	None
236	float and float
237	Cannot be predicted
238	int and float
239	None of the above
240	121
242	20
241	None of the above
243	10
244	float and int
245	int and float
246	float and float
247	int and int
248	1
249	129
250	0 1 2 ..... 15
251	0 3 6 9 12
252	Infinite loop
253	0 3 6 9 12 15
254	8
255	50
256	128
257	16
258	Pointers
259	Dynamic Typing
260	All of the above
261	Loops
262	32
263	None of the above
264	No fixed length is specified
265	121
266	[2, 4, 6], [1, 3, 5]
267	[2, 4, 6], [2, 4, 6]
268	(2,2,3)
269	[2,2,3]
270	(1,2,3)
271	Error
272	None of these
273	8
274	[1, 3, 5], [1, 3, 5]
276	129
275	Global
278	Local
277	Cannot be predicted
279	try
280	except
281	All of the above
282	121
283	None of the above
284	13 13
285	13 31
286	for
287	None
288	while
289	None of the above
290	finally
291	five neither three thrive
292	three three three three
293	five neither five neither
294	31 13
295	31 31
296	Even
297	Odd
298	for
299	8
300	121
301	None of the above
302	31 13
303	31 31
304	13 31
305	13 13
306	do-while
307	0 1 2 ..... 15
308	Infinite loop
309	0 3 6 9 12 15
310	10
311	0 3 6 9 12
312	None of the above
313	20
314	50
315	three three three three
316	[2, 4, 6], [2, 4, 6]
317	1
318	five neither thrive three
319	[2, 4, 6], [1, 3, 5]
320	[1, 3, 5], [1, 3, 5]
321	None of these
322	five neither five neither
323	Odd
324	Error
325	Even
326	121
327	while
328	Loops
329	Pointers
330	None of the above
331	All of the above
332	Dynamic Typing
333	Error
334	[1, 2]
335	five neither three thrive
336	[1, 2, 1, 2]
337	[1, 2, 1, 2, 1, 2]
338	16
339	List
340	128
341	None
342	Tuple
344	8
343	String
345	129
346	Int
347	str and int
348	int and str
349	int and int
350	str and str
351	if ele in list
352	None of the above
353	Both A and B
354	if not ele not in list
355	['Sunday', 'Monday']
356	['Tuesday', 'Wednesday']
357	No fixed length is specified
358	32
359	[2, 4, 7, 19, 22, 45, 72, 89]
360	{'first' : 'sunday', 'second' : 'monday'}
361	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
362	[4, 7, 19, 2, 89, 45, 72, 22]
363	['Monday', 'Tuesday']
364	float and int
365	['Wednesday', 'Monday']
366	int and float
367	float and float
368	[7, 19, 45, 89]
369	[2, 4, 22, 72]
370	int and int
371	{1, 2, 3, 3, 2, 4, 5, 5}
372	{1, 2, 3, 4, 5}
373	None
374	{1, 5}
375	filter
376	list
377	None of the above
378	{ 1:3, 2:4}
379	Nonel of the above
380	Can be both A or B
381	54 is an odd number
382	54 is an even number
383	number is an even number
384	number is an odd number
385	strptime()
386	strftime()
387	Both A and B
388	None of the above
389	int
390	Key
391	None of the above
392	{'Hello' : 'World', 'First' : 1}
393	tuple
394	python programming
395	Python Programming
396	pYtHoN PrOgRaMmInG
397	{'World' : 'Hello', 1 : 'First'}
398	PYTHON PROGRAMMING
399	Local
400	Global
401	None
402	Cannot be predicted
403	[2,2,3]
404	(2,2,3)
405	(1,2,3)
406	Error
407	float and int
408	Brackets
409	Indentation
410	int and float
411	float and float
412	try
413	int and int
414	finally
415	except
416	All of the above
417	129
419	strptime()
420	strftime()
418	No fixed length is specified
421	Both A and B
422	[2, 4, 6], [2, 4, 6]
423	None of the above
424	[2, 4, 6], [1, 3, 5]
425	10
426	20
427	50
428	1
429	[1, 3, 5], [1, 3, 5]
430	None of these
431	16
432	128
433	32
434	129
435	8
436	None of the above
437	Local
438	8
439	129
440	None of the above
441	121
442	Cannot be predicted
443	None
444	except
445	try
446	31 31
447	121
448	13 31
449	if ele in list
450	Global
451	if not ele not in list
452	Both A and B
454	None of the above
453	for
455	while
456	finally
457	All of the above
458	31 13
459	do-while
460	Odd
461	Even
462	Error
463	None
464	13 13
465	five neither three thrive
466	three three three three
467	five neither five neither
468	Brackets
469	Key
470	None of the above
471	None of the above
472	str and int
473	[2,2,3]
474	(2,2,3)
476	(1,2,3)
475	five neither thrive three
477	Error
478	Indentation
479	Tuple
480	String
481	['Monday', 'Tuesday']
482	int and str
483	str and str
484	['Sunday', 'Monday']
485	['Tuesday', 'Wednesday']
486	int and int
487	Error
488	['Wednesday', 'Monday']
489	[1, 2]
490	[1, 2, 1, 2]
491	filter
492	[1, 2, 1, 2, 1, 2]
493	List
494	{ 1:3, 2:4}
495	list
496	Int
497	None of the above
498	54 is an even number
499	54 is an odd number
500	number is an odd number
501	int
502	number is an even number
503	None
504	{1, 5}
505	{'first' : 'sunday', 'second' : 'monday'}
506	tuple
507	{'Hello' : 'World', 'First' : 1}
508	{'World' : 'Hello', 1 : 'First'}
509	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
510	Can be both A or B
511	float and int
512	Nonel of the above
514	int and int
515	[7, 19, 45, 89]
513	float and float
516	int and float
517	{1, 2, 3, 4, 5}
518	{1, 2, 3, 3, 2, 4, 5, 5}
519	Python Programming
520	python programming
521	PYTHON PROGRAMMING
522	Pointers
523	[2, 4, 22, 72]
524	[4, 7, 19, 2, 89, 45, 72, 22]
525	[2, 4, 7, 19, 22, 45, 72, 89]
526	pYtHoN PrOgRaMmInG
527	Loops
528	Dynamic Typing
529	0 1 2 ..... 15
530	All of the above
531	0 3 6 9 12 15
532	Infinite loop
533	float and int
534	0 3 6 9 12
535	float and float
536	int and float
537	int and int
538	31 31
539	31 13
540	0 1 2 ..... 15
541	Infinite loop
542	13 13
543	[2, 4, 6], [2, 4, 6]
544	0 3 6 9 12
545	[2, 4, 6], [1, 3, 5]
546	Brackets
547	0 3 6 9 12 15
548	[1, 3, 5], [1, 3, 5]
549	None of these
550	129
551	121
552	8
553	None of the above
554	None of the above
555	Global
556	Local
557	None
558	Cannot be predicted
559	while
560	Indentation
561	13 31
562	None of the above
563	do-while
564	try
565	except
566	finally
567	All of the above
568	Even
569	Key
570	Odd
571	for
572	32
573	Error
574	16
575	128
576	No fixed length is specified
577	int and int
578	129
579	8
580	121
581	None of the above
582	if not ele not in list
583	Both A and B
584	None of the above
585	['Monday', 'Tuesday']
586	None
587	['Sunday', 'Monday']
588	['Wednesday', 'Monday']
589	Error
590	str and int
591	int and str
592	[1, 2]
593	str and str
594	[1, 2, 1, 2]
595	[1, 2, 1, 2, 1, 2]
596	filter
597	if ele in list
598	tuple
599	list
600	five neither three thrive
601	five neither thrive three
602	List
604	['Tuesday', 'Wednesday']
603	Int
606	float and int
605	int
607	float and float
608	[2,2,3]
609	int and int
610	Tuple
611	five neither five neither
612	three three three three
613	(2,2,3)
614	(1,2,3)
615	String
616	Error
617	54 is an even number
618	54 is an odd number
619	number is an even number
620	number is an odd number
621	int and float
622	{ 1:3, 2:4}
623	[7, 19, 45, 89]
624	{'first' : 'sunday', 'second' : 'monday'}
625	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
626	[2, 4, 22, 72]
627	Can be both A or B
628	None of the above
629	pYtHoN PrOgRaMmInG
630	Python Programming
631	PYTHON PROGRAMMING
632	python programming
633	[4, 7, 19, 2, 89, 45, 72, 22]
634	{'Hello' : 'World', 'First' : 1}
635	{'World' : 'Hello', 1 : 'First'}
636	Nonel of the above
637	[2, 4, 7, 19, 22, 45, 72, 89]
638	{1, 2, 3, 3, 2, 4, 5, 5}
639	{1, 2, 3, 4, 5}
640	None
641	{1, 5}
642	float and int
643	float and float
644	int and float
645	int and int
646	20
647	10
648	50
649	1
650	Loops
651	Dynamic Typing
652	Pointers
653	All of the above
654	strptime()
655	strftime()
656	Both A and B
657	None of the above
658	54 is an even number
660	three three three three
659	five neither five neither
661	five neither three thrive
662	129
663	54 is an odd number
664	number is an even number
665	number is an odd number
666	31 13
667	31 31
668	8
669	13 13
670	13 31
671	121
673	{'first' : 'sunday', 'second' : 'monday', 1:3, 2:4}
672	{'first' : 'sunday', 'second' : 'monday'}
674	{ 1:3, 2:4}
675	None of the above
676	['Sunday', 'Monday']
677	List
678	['Monday', 'Tuesday']
679	['Tuesday', 'Wednesday']
680	['Wednesday', 'Monday']
681	[2,2,3]
682	float and int
683	Tuple
684	String
685	Int
686	int and float
687	float and float
688	filter
689	int
690	list
691	int and int
693	Brackets
692	tuple
694	Indentation
695	None of the above
696	Key
697	{1, 2, 3, 4, 5}
698	None of the above
699	{1, 2, 3, 3, 2, 4, 5, 5}
700	(1,2,3)
701	None
702	(2,2,3)
703	{1, 5}
704	Error
705	32
706	16
707	128
708	{'World' : 'Hello', 1 : 'First'}
710	str and int
709	Nonel of the above
712	int and str
711	str and str
713	int and int
714	python programming
715	{'Hello' : 'World', 'First' : 1}
716	strptime()
717	Can be both A or B
718	No fixed length is specified
719	strftime()
720	None of the above
721	Both A and B
722	float and int
723	pYtHoN PrOgRaMmInG
724	Python Programming
725	int and float
726	float and float
727	[2, 4, 6], [1, 3, 5]
728	int and int
729	[2, 4, 6], [2, 4, 6]
730	[1, 3, 5], [1, 3, 5]
731	None of these
732	PYTHON PROGRAMMING
733	None
734	Global
735	Local
736	Cannot be predicted
737	0 1 2 ..... 15
738	Infinite loop
739	All of the above
740	0 3 6 9 12
741	0 3 6 9 12 15
742	except
743	finally
744	try
745	Odd
746	Error
747	Even
748	Dynamic Typing
749	None
750	Pointers
751	Loops
752	All of the above
753	10
754	129
755	121
756	50
757	None of the above
758	20
759	do-while
760	8
761	if not ele not in list
762	1
763	for
764	None of the above
765	Both A and B
766	while
767	None of the above
768	if ele in list
769	[7, 19, 45, 89]
770	[4, 7, 19, 2, 89, 45, 72, 22]
771	[2, 4, 22, 72]
772	[2, 4, 7, 19, 22, 45, 72, 89]
773	Error
774	[1, 2]
775	[1, 2, 1, 2, 1, 2]
776	[1, 2, 1, 2]
777	five neither thrive three
\.


--
-- TOC entry 3406 (class 0 OID 16753)
-- Dependencies: 243
-- Data for Name: assessments_quesoption; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_quesoption (id, is_correct, option_id, question_id) FROM stdin;
1	t	1	8
2	t	2	14
3	f	3	14
4	f	4	14
5	t	5	9
6	f	6	14
7	f	7	19
8	f	8	19
9	f	9	9
10	f	10	19
11	t	11	19
12	t	13	16
13	f	12	16
14	f	14	16
15	f	15	16
16	t	16	17
18	f	17	17
17	f	18	17
19	f	19	17
20	f	20	10
21	f	21	18
22	f	22	23
25	t	26	23
24	t	23	18
23	f	24	18
26	f	25	18
27	f	27	23
28	t	28	22
29	f	29	23
30	f	30	22
31	f	31	22
32	f	32	22
33	f	33	8
34	t	34	24
35	f	35	24
36	f	36	8
37	f	37	24
38	f	38	24
39	t	39	20
40	f	40	20
41	f	41	20
42	f	42	10
43	f	43	8
44	t	44	21
45	f	45	20
46	f	46	21
47	f	47	21
48	f	48	21
49	t	49	10
50	f	50	9
51	f	51	25
52	f	52	25
53	t	53	25
54	f	54	25
55	t	55	27
56	f	56	27
57	f	57	27
58	f	58	27
59	f	59	9
60	f	60	28
61	t	61	28
62	f	62	28
63	f	63	11
64	t	65	11
65	f	64	11
66	f	66	28
67	f	67	11
68	f	68	26
69	f	69	26
70	f	71	12
71	f	70	26
72	t	72	26
73	t	73	29
74	f	74	29
75	f	75	29
76	f	76	29
77	f	77	10
78	t	78	30
79	f	79	30
80	f	80	30
81	f	82	30
82	f	81	12
83	t	83	13
84	f	84	12
85	f	85	13
86	f	86	1
87	f	87	15
88	f	89	1
89	f	88	13
90	t	90	12
91	f	91	15
92	f	92	15
93	f	93	2
94	t	94	2
95	f	95	2
96	f	96	2
97	f	97	13
98	f	98	3
99	f	99	1
100	t	101	3
101	f	100	3
102	f	102	3
103	t	103	1
104	t	104	4
106	t	106	15
105	f	105	4
107	f	107	4
108	f	108	4
109	t	109	5
110	f	110	5
111	f	111	5
112	f	112	5
113	f	113	7
114	f	114	7
115	f	115	7
116	f	116	6
117	t	117	6
118	t	118	7
119	f	119	6
120	f	120	6
121	f	121	31
122	t	122	46
123	f	123	46
124	f	124	46
125	t	126	45
126	f	125	46
127	f	127	31
128	f	128	45
129	f	129	45
130	f	130	45
131	f	131	47
132	f	132	47
133	f	133	47
134	t	134	47
135	t	135	48
136	f	136	48
137	f	137	48
138	f	138	48
139	t	139	49
140	f	140	49
141	f	141	49
142	f	142	42
143	f	143	49
144	f	144	44
145	f	145	44
146	t	146	44
147	f	147	44
148	t	148	50
149	f	149	42
150	f	151	50
151	f	150	50
152	f	152	50
153	t	153	42
154	t	154	54
155	f	155	54
156	f	156	54
157	f	157	52
158	f	158	54
159	f	159	52
160	f	160	55
161	f	162	52
163	f	164	55
162	t	161	52
164	t	163	55
165	f	165	55
166	f	166	42
167	t	167	53
168	f	169	43
169	f	168	53
170	f	170	53
171	f	171	53
172	t	173	51
173	f	172	51
174	f	174	51
175	f	175	51
176	f	176	31
177	f	177	43
178	t	178	43
180	f	180	43
179	t	179	37
181	t	181	31
182	t	182	59
183	f	183	59
184	f	184	59
185	f	185	56
186	f	187	56
187	t	186	56
188	f	188	59
189	f	189	56
190	t	190	57
191	f	191	57
192	f	192	57
193	f	193	57
194	t	194	58
195	f	195	58
196	f	196	58
197	f	197	58
198	f	198	37
199	f	199	40
200	f	200	40
201	f	201	37
202	f	202	60
203	f	203	60
204	f	204	60
205	t	205	60
206	t	207	40
207	f	206	39
208	f	208	40
209	f	209	37
210	f	211	41
211	f	210	41
212	t	212	32
213	f	213	41
214	f	214	32
215	f	215	32
216	t	216	39
217	f	217	39
218	f	218	32
219	f	219	35
220	t	220	35
221	f	221	35
222	f	222	39
223	t	223	41
224	f	224	34
225	f	225	34
226	t	226	34
227	t	227	33
228	f	228	33
229	t	229	36
230	f	230	36
231	f	231	34
232	t	232	38
233	f	233	35
234	f	234	38
235	f	235	38
237	f	237	38
236	f	236	33
238	f	238	33
239	f	239	36
240	f	240	36
314	f	314	115
315	f	315	95
317	f	317	115
316	t	316	116
318	t	318	95
319	f	319	116
320	f	320	116
321	f	321	116
322	f	322	95
323	f	323	97
324	f	324	97
325	t	325	97
326	f	326	91
327	f	327	92
328	f	328	120
329	t	329	120
330	f	330	91
332	f	331	120
331	f	332	120
333	f	333	99
334	f	334	99
335	f	335	95
336	f	336	99
298	f	298	92
299	f	299	114
300	f	300	114
301	f	301	114
302	t	302	117
303	f	303	117
304	f	304	117
305	f	305	117
306	t	306	92
307	f	307	119
308	f	308	119
309	t	309	119
310	t	310	115
312	f	312	92
311	f	311	119
313	f	313	115
337	t	337	99
338	f	338	94
339	t	339	100
340	f	340	94
341	f	341	97
342	f	344	91
343	f	342	100
344	f	343	100
345	t	345	91
346	f	346	100
347	f	347	93
348	t	348	93
349	f	349	93
351	f	351	96
350	f	350	93
352	f	352	96
353	f	354	96
354	t	353	96
355	f	355	98
356	f	356	98
357	t	357	94
358	f	358	94
359	f	359	102
360	f	360	104
361	t	361	104
362	f	362	102
363	t	363	98
364	t	364	105
365	f	365	98
366	f	366	105
367	f	367	105
368	t	368	102
369	f	369	102
370	f	370	105
371	f	371	106
372	t	372	106
373	f	373	106
374	f	374	106
375	t	375	101
376	f	376	101
377	f	377	104
378	f	378	104
379	f	379	107
380	f	380	107
381	f	381	103
382	t	382	103
383	f	383	103
384	f	384	103
385	t	385	108
386	f	386	108
387	f	387	108
388	f	388	108
389	f	389	101
390	f	390	110
391	f	391	110
392	f	392	107
393	f	393	101
394	f	394	109
396	f	395	109
395	t	396	109
397	t	397	107
398	f	398	109
399	t	399	111
400	f	400	111
401	f	401	111
402	f	402	111
403	f	403	112
404	f	404	112
405	f	405	112
406	t	406	112
407	t	407	113
408	f	408	110
409	t	409	110
410	f	410	113
411	f	411	113
412	f	412	118
413	f	413	113
414	f	414	118
415	f	415	118
416	t	416	118
417	t	417	114
418	t	419	144
419	t	418	121
420	f	420	144
421	f	421	144
422	t	422	123
423	f	423	144
424	f	424	123
425	t	425	145
426	f	426	145
427	f	427	145
428	f	428	145
429	f	429	123
430	f	430	123
431	f	432	121
432	f	431	121
433	f	433	121
434	t	434	122
435	f	435	122
436	f	436	122
437	t	437	124
438	f	438	150
439	t	439	150
440	f	440	150
441	f	441	150
442	f	442	124
443	f	443	124
444	f	444	125
445	f	445	125
446	f	446	126
447	f	447	122
448	f	448	126
449	f	449	127
450	f	450	124
451	f	451	127
452	t	452	127
453	f	454	127
454	f	453	128
455	f	455	128
456	f	456	125
457	t	457	125
458	t	458	126
459	t	459	128
460	f	460	130
461	t	461	130
462	f	462	130
463	f	463	130
464	f	464	126
465	f	465	129
466	f	466	129
467	f	467	129
469	f	469	131
468	f	468	131
470	f	470	131
471	f	471	128
472	f	472	132
473	f	473	133
474	f	474	133
475	f	476	133
476	t	475	129
477	t	477	133
478	t	478	131
479	f	479	136
480	f	480	136
481	t	481	134
482	t	482	132
483	f	483	132
484	f	484	134
485	f	485	134
486	f	486	132
487	f	487	135
488	f	488	134
489	f	489	135
490	f	490	135
491	t	491	137
492	t	492	135
493	f	494	140
494	t	493	136
495	f	495	137
496	f	496	136
497	f	497	140
498	t	498	139
499	f	499	139
500	f	500	139
501	f	501	137
502	f	502	139
503	f	503	142
504	f	504	142
505	f	505	140
506	f	506	137
507	f	507	143
508	t	508	143
509	t	509	140
510	f	510	143
511	t	511	141
512	f	512	143
514	t	515	138
513	f	514	141
515	f	513	141
516	f	516	141
517	t	517	142
518	f	518	142
519	f	519	147
520	f	520	147
521	f	521	147
522	t	522	146
523	f	523	138
524	f	524	138
525	f	525	138
526	t	526	147
527	f	527	146
528	f	528	146
529	f	529	148
530	f	530	146
531	t	531	148
532	f	532	148
533	t	533	149
534	f	534	148
535	f	535	149
536	f	536	149
537	f	537	149
538	f	538	153
540	f	540	177
539	t	539	153
541	f	541	177
542	f	542	153
543	t	543	178
544	f	544	177
546	f	546	155
545	f	545	178
547	t	547	177
548	f	548	178
549	f	549	178
550	t	550	179
551	f	551	179
552	f	552	179
553	f	553	179
554	f	554	155
555	f	555	176
556	t	556	176
557	f	557	176
558	f	558	176
559	f	559	156
560	t	560	155
561	f	561	153
562	f	562	156
563	t	563	156
564	f	564	180
565	f	565	180
566	f	566	180
567	t	567	180
568	t	568	158
569	f	570	158
571	f	571	156
570	f	569	155
572	f	572	152
573	f	573	158
574	f	574	152
575	f	575	152
576	t	576	152
577	f	577	151
578	t	578	154
579	f	579	154
580	f	580	154
581	f	581	154
582	f	582	157
583	t	583	157
584	f	584	157
585	t	585	160
586	f	586	158
587	f	587	160
588	f	588	160
589	f	589	161
590	f	590	151
591	t	591	151
592	f	592	161
593	f	593	151
594	f	594	161
595	t	595	161
596	t	596	162
597	f	597	157
598	f	598	162
599	f	599	162
600	f	600	159
602	t	602	163
601	t	601	159
603	f	604	160
604	f	603	163
605	t	606	164
606	f	605	162
607	f	607	164
608	f	608	165
609	f	609	164
610	f	610	163
611	f	611	159
612	f	612	159
613	f	613	165
614	f	614	165
615	f	615	163
616	t	616	165
617	t	617	167
618	f	618	167
619	f	619	167
620	f	620	167
621	f	621	164
622	f	622	168
623	t	623	166
624	f	624	168
625	t	625	168
626	f	626	166
627	f	627	171
628	f	628	168
629	t	629	173
630	f	630	173
631	f	631	173
632	f	632	173
633	f	633	166
634	f	634	171
635	t	635	171
636	f	636	171
637	f	637	166
638	f	638	169
639	t	639	169
640	f	640	169
641	f	641	169
642	t	642	170
643	f	643	170
644	f	644	170
645	f	645	170
646	f	646	174
647	t	647	174
648	f	648	174
649	f	649	174
650	f	650	175
651	f	651	175
652	t	652	175
653	f	653	175
654	t	654	172
655	f	655	172
656	f	656	172
657	f	657	172
658	t	658	204
659	f	660	206
660	f	659	206
661	f	661	206
662	t	662	181
663	f	663	204
664	f	664	204
665	f	665	204
666	t	666	201
667	f	667	201
668	f	668	181
669	f	669	201
671	f	670	201
672	t	673	209
670	f	671	181
673	f	672	209
674	f	674	209
675	f	675	209
676	t	677	207
677	t	678	210
678	f	676	210
679	f	679	210
680	f	680	210
681	f	681	183
682	t	682	182
683	f	683	207
684	f	684	207
685	f	685	207
686	f	686	182
687	f	687	182
688	t	688	208
689	f	689	208
690	f	691	182
691	f	690	208
692	f	693	185
693	f	692	208
694	t	694	185
696	f	696	185
695	f	695	181
697	t	697	184
698	f	698	185
699	f	699	184
700	f	700	183
701	f	701	184
702	f	702	183
703	f	703	184
704	t	704	183
705	f	705	188
706	f	706	188
707	f	707	188
708	t	708	187
709	f	710	186
710	f	709	187
711	t	712	186
712	f	711	186
713	f	713	186
714	f	714	189
715	f	715	187
716	t	716	190
717	f	717	187
718	t	718	188
719	f	719	190
720	f	720	190
721	f	721	190
722	t	722	191
723	t	723	189
724	f	724	189
725	f	725	191
726	f	726	191
727	f	727	194
728	f	728	191
729	t	729	194
730	f	730	194
731	f	731	194
732	f	732	189
733	f	733	192
734	f	734	192
735	t	735	192
736	f	736	192
737	f	737	193
738	f	738	193
739	t	739	198
740	f	740	193
741	t	741	193
742	f	742	198
743	f	743	198
744	f	744	198
746	f	746	199
745	f	745	199
747	t	747	199
748	f	748	195
749	f	749	199
750	t	750	195
751	f	751	195
752	f	752	195
753	t	753	197
754	t	754	196
755	f	755	196
756	f	756	197
757	f	757	196
758	f	758	197
759	t	759	200
760	f	760	196
761	f	761	202
762	f	762	197
763	f	763	200
764	f	764	200
765	t	765	202
766	f	766	200
767	f	767	202
768	f	768	202
769	t	769	203
770	f	770	203
771	f	771	203
772	f	772	203
773	f	773	205
774	f	774	205
775	f	776	205
776	t	775	205
777	t	777	206
\.


--
-- TOC entry 3404 (class 0 OID 16742)
-- Dependencies: 241
-- Data for Name: assessments_question; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_question (id, description, "time", points, difficulty_level, assessment_id) FROM stdin;
1	What is the maximum length of a Python identifier?	10	5	E	1
3	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	1
2	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	1
4	 Which of the following concepts is not a part of Python?	10	5	E	1
5	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	1
6	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	1
7	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	1
8	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	1
9	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	1
10	Which of the following statements are used in Exception Handling in Python?	20	10	M	1
11	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	1
12	Which of the following types of loops are not supported in Python?	20	10	M	1
13	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	1
14	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	1
15	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	1
16	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	1
17	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	1
18	 How is a code block indicated in Python?	10	5	E	1
19	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	1
20	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	1
21	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	1
22	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	1
23	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	1
24	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	1
25	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	1
27	Which of the following functions converts date to corresponding time in Python?	30	20	H	1
26	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	1
91	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	4
115	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	4
139	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	5
163	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	9
187	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	10
28	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	1
29	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	1
30	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	1
33	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	2
31	What is the maximum length of a Python identifier?	10	5	E	2
32	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	2
34	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	2
35	 How is a code block indicated in Python?	10	5	E	2
36	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	2
37	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	2
38	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	2
40	Which of the following statements are used in Exception Handling in Python?	20	10	M	2
39	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	2
41	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	2
42	Which of the following types of loops are not supported in Python?	20	10	M	2
43	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	2
44	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	2
45	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	2
46	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	2
47	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	2
48	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	2
49	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	2
50	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	2
51	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	2
52	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	2
92	Which of the following types of loops are not supported in Python?	20	10	M	4
116	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	4
140	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	5
164	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	9
188	What is the maximum length of a Python identifier?	10	5	E	10
53	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	2
93	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	4
117	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	4
141	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	5
165	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	9
189	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	10
55	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	2
94	What is the maximum length of a Python identifier?	10	5	E	4
118	Which of the following statements are used in Exception Handling in Python?	20	10	M	4
142	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	5
166	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	9
190	Which of the following functions converts date to corresponding time in Python?	30	20	H	10
56	Which of the following functions converts date to corresponding time in Python?	30	20	H	2
95	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	4
119	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	4
143	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	5
167	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	9
191	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	10
57	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	2
96	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	4
120	 Which of the following concepts is not a part of Python?	10	5	E	4
144	Which of the following functions converts date to corresponding time in Python?	30	20	H	5
168	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	9
192	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	10
58	 Which of the following concepts is not a part of Python?	10	5	E	2
97	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	4
121	What is the maximum length of a Python identifier?	10	5	E	5
145	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	5
169	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	9
193	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	10
59	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	2
98	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	4
122	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	5
146	 Which of the following concepts is not a part of Python?	10	5	E	5
170	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	9
194	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	10
60	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	2
99	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	4
123	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	5
147	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	5
171	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	9
195	 Which of the following concepts is not a part of Python?	10	5	E	10
100	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	4
124	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	5
148	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	5
172	Which of the following functions converts date to corresponding time in Python?	30	20	H	9
196	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	10
101	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	4
125	Which of the following statements are used in Exception Handling in Python?	20	10	M	5
149	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	5
173	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	9
197	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	10
102	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	4
126	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	5
150	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	5
174	What will be the output of the following code snippet?\n          def solve(a, b):\n             return b if a == 0 else solve(b % a, a)\n          print(solve(20, 50))	10	5	E	9
198	Which of the following statements are used in Exception Handling in Python?	20	10	M	10
103	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	4
127	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	5
151	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	9
175	 Which of the following concepts is not a part of Python?	10	5	E	9
199	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	10
104	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	4
128	Which of the following types of loops are not supported in Python?	20	10	M	5
152	What is the maximum length of a Python identifier?	10	5	E	9
176	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	9
200	Which of the following types of loops are not supported in Python?	20	10	M	10
105	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	4
129	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	5
153	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	9
177	What will be the output of the following code snippet?\n\n          a = [1, 2, 3, 4, 5]\n          sum = 0\n          for ele in a:\n             sum += ele \n          print(sum)	10	5	E	9
201	What will be the output of the following code snippet?\n\n            a = 3\n            b = 1 \n            print(a, b)\n            a, b = b, a \n            print(a, b)	20	10	M	10
106	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	4
130	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	5
154	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	9
178	What will be the output of the following code snippet?\n\n          def solve(a):\n             a = [1, 3, 5]\n          a = [2, 4, 6]\n          print(a)\n          solve(a)\n          print(a)	20	10	M	9
202	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	10
107	 \n            What will be the output of the following code snippet?\n\n            a = {'Hello':'World', 'First': 1}\n            b = {val: k for k , val in a.items()}\n            print(b)	30	20	H	4
131	 How is a code block indicated in Python?	10	5	E	5
155	 How is a code block indicated in Python?	10	5	E	9
179	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	9
203	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	10
108	Which of the following functions converts date to corresponding time in Python?	30	20	H	4
132	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	5
156	Which of the following types of loops are not supported in Python?	20	10	M	9
180	Which of the following statements are used in Exception Handling in Python?	20	10	M	9
204	 What will be the output of the following code snippet?\n\n            def is_even(number):\n              message =  f"{number} is an even number" if number % 2 == 0 else  f"{number} is an odd number"\n             return message\n            print(is_even(54))	30	20	H	10
109	 What will be the output of the following code snippet?\n\n\n            word = "Python Programming"\n            n = len(word)\n            word1 = word.upper()\n            word2 = word.lower()\n            converted_word = ""\n            for i in range(n):\n             if i % 2 == 0:\n               converted_word += word2[i]\n             else:\n               converted_word += word1[i]\n            print(converted_word)\n            	30	20	H	4
133	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	5
157	 Which of the following is the proper syntax to check if a particular element is present in a list?	20	10	M	9
181	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	10
205	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	10
110	 How is a code block indicated in Python?	10	5	E	4
134	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	5
158	 What will be the output of the following code snippet?\n\n            def check(a):\n               print("Even" if a % 2 == 0 else "Odd")\n               \n            check(12)	20	10	M	9
182	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	10
206	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	10
111	What will be the output of the following code snippet?\n   \n            def func():\n               global value\n               value = "Local"\n               \n            value = "Global"\n            func()\n            print(value)	20	10	M	4
135	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	5
159	What will be the output of the following code snippet?\n\n          def thrive(n):\n           if n % 15 == 0:\n             print("thrive", end = “ ”)\n           elif n % 3 != 0 and n % 5 != 0:\n             print("neither", end = “ ”)\n           elif n % 3 == 0:\n             print("three", end = “ ”)\n           elif n % 5 == 0:\n             print("five", end = “ ”)\n          thrive(35)\n          thrive(56)\n          thrive(15)\n          thrive(39)  	20	10	M	9
183	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	10
207	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	10
112	What will be the output of the following code snippet?\n\n          a = [1, 2, 3]\n          a = tuple(a)\n          a[0] = 2\n          print(a)\n          	10	5	E	4
136	What will be the type of the variable sorted_numbers in the below code snippet?\n\n          numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n          sorted_numbers = sorted(numbers)\n          print(sorted_numbers)	30	20	H	5
160	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	9
184	What will be the output of the following code snippet?\n\n          s = {1, 2, 3, 3, 2, 4, 5, 5}\n          print(s)	30	20	H	10
208	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	10
113	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	10	5	E	4
137	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	5
161	 What will be the output of the following code snippet?\n\n            a = [1, 2]\n            print(a * 3)\n            	20	10	M	9
185	 How is a code block indicated in Python?	10	5	E	10
209	 What will be the output of the following code snippet?\n          dict1 = {'first' : 'sunday', 'second' : 'monday'}\n          dict2 = {1: 3, 2: 4}\n          dict1.update(dict2)\n          print(dict1)	30	20	H	10
54	 What will be the output of the following code snippet?\n\n            print(type(5 / 2))\n            print(type(5 // 2))\n            	30	20	H	2
114	 What will be the output of the following code snippet?\n\n            print(2**3 + (5 + 6)**(1 + 1)) \n\n            	10	5	E	4
138	What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            odd_numbers = [x for x in sorted_numbers if x % 2 != 0]\n            print(odd_numbers)	30	20	H	5
162	 What will be the output of the following code snippet?\n\n            numbers = (4, 7, 19, 2, 89, 45, 72, 22)\n            sorted_numbers = sorted(numbers)\n            even = lambda a: a % 2 == 0\n            even_numbers = filter(even, sorted_numbers)\n            print(type(even_numbers))	30	20	H	9
186	What will be the datatype of the var in the below code snippet?\n\n            var = 10\n            print(type(var))\n            var = "Hello"\n            print(type(var))\n            	10	5	E	10
210	What will be the output of the following code snippet?\n\n          example = ["Sunday", "Monday", "Tuesday", "Wednesday"];\n          print(example[-3:-1])	20	10	M	10
\.


--
-- TOC entry 3412 (class 0 OID 16866)
-- Dependencies: 249
-- Data for Name: assessments_userassessment; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assessments_userassessment (id, assessment_id, user_id, passed, taken_time) FROM stdin;
1	1	1	f	2022-08-27 20:31:00.051051+00
2	2	1	t	2022-08-27 20:33:17.170823+00
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
53	Can add assessment	14	add_assessment
54	Can change assessment	14	change_assessment
55	Can delete assessment	14	delete_assessment
56	Can view assessment	14	view_assessment
57	Can add option	15	add_option
58	Can change option	15	change_option
59	Can delete option	15	delete_option
60	Can view option	15	view_option
61	Can add question	16	add_question
62	Can change question	16	change_question
63	Can delete question	16	delete_question
64	Can view question	16	view_question
65	Can add ques option	17	add_quesoption
66	Can change ques option	17	change_quesoption
67	Can delete ques option	17	delete_quesoption
68	Can view ques option	17	view_quesoption
69	Can add user assessment	18	add_userassessment
70	Can change user assessment	18	change_userassessment
71	Can delete user assessment	18	delete_userassessment
72	Can view user assessment	18	view_userassessment
73	Can add category	19	add_category
74	Can change category	19	change_category
75	Can delete category	19	delete_category
76	Can view category	19	view_category
77	Can add company	20	add_company
78	Can change company	20	change_company
79	Can delete company	20	delete_company
80	Can view company	20	view_company
81	Can add problem	21	add_problem
82	Can change problem	21	change_problem
83	Can delete problem	21	delete_problem
84	Can view problem	21	view_problem
85	Can add role	22	add_role
86	Can change role	22	change_role
87	Can delete role	22	delete_role
88	Can view role	22	view_role
89	Can add sub category	23	add_subcategory
90	Can change sub category	23	change_subcategory
91	Can delete sub category	23	delete_subcategory
92	Can view sub category	23	view_subcategory
93	Can add solution	24	add_solution
94	Can change solution	24	change_solution
95	Can delete solution	24	delete_solution
96	Can view solution	24	view_solution
97	Can add input output	25	add_inputoutput
98	Can change input output	25	change_inputoutput
99	Can delete input output	25	delete_inputoutput
100	Can view input output	25	view_inputoutput
101	Can add book mark	26	add_bookmark
102	Can change book mark	26	change_bookmark
103	Can delete book mark	26	delete_bookmark
104	Can view book mark	26	view_bookmark
\.


--
-- TOC entry 3376 (class 0 OID 16434)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$aROeVH9RyxKzDN2d47efyi$+VTDdM6HrTsM3hAZZBzUddQCMNV61SDbDBLazDpVfGw=	\N	f	mashiat	Mashiat	Mustaq	mashiatmustaq98@gmail.com	f	t	2022-08-27 20:21:32.045117+00
2	pbkdf2_sha256$320000$bXRbwc5kVOqrJLOItjomhp$A1pfNffD69RfSHiMp9sh8tyE/k+uWYe2EO3OSRD2RQU=	\N	f	taz	Tahiea	Taz	taz32584651@gmail.com	f	t	2022-08-27 20:41:55.584263+00
3	pbkdf2_sha256$320000$6x4qZ5BpDMgSEzEfdlhGfi$jhVlBULqXzosMVbR71Hi/A5q7ie4K34gfnM0oue5yxU=	\N	f	zarif	zarif	zarif	zarif98sjs@gmail.com	f	t	2022-08-27 20:43:42.502539+00
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
-- TOC entry 3413 (class 0 OID 16895)
-- Dependencies: 250
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
99d81f423dc967e01f48370ce7d048ec8e672934	2022-08-27 20:21:59.073315+00	1
75777ad960af7a5ea4965789b4088b3bc76c1ad0	2022-08-27 20:43:12.713026+00	2
8ddb0ebcc31d3475b1141cc8fe09d04111b72423	2022-08-27 20:43:52.720522+00	3
\.


--
-- TOC entry 3417 (class 0 OID 16921)
-- Dependencies: 254
-- Data for Name: discussions_comments; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_comments (id, comment, created_at, updated_at, discussion_id, parent, user_id, hash) FROM stdin;
\.


--
-- TOC entry 3415 (class 0 OID 16910)
-- Dependencies: 252
-- Data for Name: discussions_discussion; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_discussion (id, title, description, created_at, updated_at, upvotes, downvotes, views, comment_count, user_id, tags) FROM stdin;
\.


--
-- TOC entry 3421 (class 0 OID 16985)
-- Dependencies: 258
-- Data for Name: discussions_downvoted; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_downvoted (id, discussion_id, user_id) FROM stdin;
\.


--
-- TOC entry 3419 (class 0 OID 16965)
-- Dependencies: 256
-- Data for Name: discussions_upvoted; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.discussions_upvoted (id, discussion_id, user_id) FROM stdin;
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
14	assessments	assessment
15	assessments	option
16	assessments	question
17	assessments	quesoption
18	assessments	userassessment
19	problems	category
20	problems	company
21	problems	problem
22	problems	role
23	problems	subcategory
24	problems	solution
25	problems	inputoutput
26	problems	bookmark
\.


--
-- TOC entry 3366 (class 0 OID 16387)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-08-27 20:13:42.731061+00
2	auth	0001_initial	2022-08-27 20:13:42.787368+00
3	admin	0001_initial	2022-08-27 20:13:42.807172+00
4	admin	0002_logentry_remove_auto_add	2022-08-27 20:13:42.814965+00
5	admin	0003_logentry_add_action_flag_choices	2022-08-27 20:13:42.822508+00
6	problems	0001_initial	2022-08-27 20:13:42.963271+00
7	problems	0002_alter_problem_companies_alter_problem_roles_and_more	2022-08-27 20:13:43.01252+00
8	problems	0003_alter_inputoutput_problem	2022-08-27 20:13:43.029863+00
9	problems	0004_alter_inputoutput_problem	2022-08-27 20:13:43.051386+00
10	assessments	0001_initial	2022-08-27 20:13:43.096815+00
11	assessments	0002_assessment_roles_assessment_subcategories_and_more	2022-08-27 20:13:43.183393+00
12	assessments	0003_assessment_image_link	2022-08-27 20:13:43.194166+00
13	assessments	0004_remove_question_image_link	2022-08-27 20:13:43.202067+00
14	assessments	0005_remove_option_image_link	2022-08-27 20:13:43.206442+00
15	assessments	0006_remove_assessment_subcategories_and_more	2022-08-27 20:13:43.251148+00
16	assessments	0007_userassessment	2022-08-27 20:13:43.28244+00
17	assessments	0008_userassessment_passed_userassessment_taken_time	2022-08-27 20:13:43.309613+00
18	contenttypes	0002_remove_content_type_name	2022-08-27 20:13:43.33919+00
19	auth	0002_alter_permission_name_max_length	2022-08-27 20:13:43.359256+00
20	auth	0003_alter_user_email_max_length	2022-08-27 20:13:43.409661+00
21	auth	0004_alter_user_username_opts	2022-08-27 20:13:43.419774+00
22	auth	0005_alter_user_last_login_null	2022-08-27 20:13:43.430965+00
23	auth	0006_require_contenttypes_0002	2022-08-27 20:13:43.432859+00
24	auth	0007_alter_validators_add_error_messages	2022-08-27 20:13:43.444984+00
25	auth	0008_alter_user_username_max_length	2022-08-27 20:13:43.461175+00
26	auth	0009_alter_user_last_name_max_length	2022-08-27 20:13:43.475017+00
27	auth	0010_alter_group_name_max_length	2022-08-27 20:13:43.498416+00
28	auth	0011_update_proxy_permissions	2022-08-27 20:13:43.51751+00
29	auth	0012_alter_user_first_name_max_length	2022-08-27 20:13:43.527955+00
30	authtoken	0001_initial	2022-08-27 20:13:43.557432+00
31	authtoken	0002_auto_20160226_1747	2022-08-27 20:13:43.604927+00
32	authtoken	0003_tokenproxy	2022-08-27 20:13:43.608661+00
33	discussions	0001_initial	2022-08-27 20:13:43.617047+00
34	discussions	0002_comments	2022-08-27 20:13:43.628316+00
35	discussions	0003_comments_parent	2022-08-27 20:13:43.635372+00
36	discussions	0004_discussion_user	2022-08-27 20:13:43.658543+00
37	discussions	0005_comments_user	2022-08-27 20:13:43.684213+00
38	discussions	0006_comments_hash	2022-08-27 20:13:43.695486+00
39	discussions	0007_alter_comments_parent	2022-08-27 20:13:43.728246+00
40	discussions	0008_upvoted	2022-08-27 20:13:43.764753+00
41	discussions	0009_downvoted	2022-08-27 20:13:43.797475+00
42	discussions	0010_discussion_tags	2022-08-27 20:13:43.810415+00
43	discussions	0011_comments_downvotes_comments_upvotes	2022-08-27 20:13:43.835719+00
44	discussions	0012_commentupvoted_commentdownvoted	2022-08-27 20:13:43.900617+00
45	discussions	0013_remove_commentupvoted_comment_and_more	2022-08-27 20:13:43.991733+00
46	problems	0005_remove_problem_companies_remove_problem_roles_and_more	2022-08-27 20:13:44.069007+00
47	problems	0006_problem_companies	2022-08-27 20:13:44.106104+00
48	problems	0007_problem_roles_problem_subcategories	2022-08-27 20:13:44.206662+00
49	problems	0008_alter_problem_memory_limit_alter_problem_time_limit	2022-08-27 20:13:44.239879+00
50	problems	0009_alter_solution_language_alter_solution_solve_status	2022-08-27 20:13:44.273085+00
51	problems	0010_solution_time_added	2022-08-27 20:13:44.294374+00
52	problems	0011_alter_solution_problem	2022-08-27 20:13:44.320393+00
53	problems	0012_remove_bookmark_date_added_bookmark_time_added_and_more	2022-08-27 20:13:44.375141+00
54	problems	0013_alter_bookmark_time_added_alter_solution_time_added	2022-08-27 20:13:44.406963+00
55	problems	0014_alter_bookmark_problem	2022-08-27 20:13:44.434334+00
56	sessions	0001_initial	2022-08-27 20:13:44.444491+00
57	users	0001_initial	2022-08-27 20:13:44.450806+00
58	users	0002_delete_user	2022-08-27 20:13:44.454525+00
59	users	0003_initial	2022-08-27 20:13:44.481653+00
60	users	0004_user_languages_user_skills	2022-08-27 20:13:44.510489+00
61	users	0005_user_is_admin	2022-08-27 20:13:44.528666+00
\.


--
-- TOC entry 3428 (class 0 OID 17127)
-- Dependencies: 265
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3398 (class 0 OID 16637)
-- Dependencies: 235
-- Data for Name: problems_bookmark; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_bookmark (id, problem_id, user_id, time_added) FROM stdin;
\.


--
-- TOC entry 3384 (class 0 OID 16536)
-- Dependencies: 221
-- Data for Name: problems_category; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_category (id, name, description) FROM stdin;
\.


--
-- TOC entry 3386 (class 0 OID 16547)
-- Dependencies: 223
-- Data for Name: problems_company; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_company (id, name, description) FROM stdin;
\.


--
-- TOC entry 3396 (class 0 OID 16626)
-- Dependencies: 233
-- Data for Name: problems_inputoutput; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_inputoutput (id, input, output, points, problem_id) FROM stdin;
\.


--
-- TOC entry 3388 (class 0 OID 16558)
-- Dependencies: 225
-- Data for Name: problems_problem; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem (id, name, description, time_limit, memory_limit, difficulty, submission_count, solve_count) FROM stdin;
\.


--
-- TOC entry 3423 (class 0 OID 17047)
-- Dependencies: 260
-- Data for Name: problems_problem_companies; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_companies (id, problem_id, company_id) FROM stdin;
\.


--
-- TOC entry 3425 (class 0 OID 17069)
-- Dependencies: 262
-- Data for Name: problems_problem_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_roles (id, problem_id, role_id) FROM stdin;
\.


--
-- TOC entry 3427 (class 0 OID 17077)
-- Dependencies: 264
-- Data for Name: problems_problem_subcategories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_problem_subcategories (id, problem_id, subcategory_id) FROM stdin;
\.


--
-- TOC entry 3390 (class 0 OID 16577)
-- Dependencies: 227
-- Data for Name: problems_role; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_role (id, name, description) FROM stdin;
4	Frontend Engineer	
1	Software Developer	
6	Backend Engineer	
32	frontend engineer	
33	UI Designer	
2	AI Engineer	
3	 Backend Engineer	
34	Security Engineer	
35	Database Engineer	
5	Manager	
36	 Data Engineer	
19	B	
20	a	
21	c	
22	k	
23	e	
24	n	
25	d	
26	 	
27	E	
28	g	
29	i	
30	r	
31	,	
\.


--
-- TOC entry 3394 (class 0 OID 16599)
-- Dependencies: 231
-- Data for Name: problems_solution; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_solution (id, code, language, runtime, memory_usage, solve_status, problem_id, user_id, time_added) FROM stdin;
\.


--
-- TOC entry 3392 (class 0 OID 16588)
-- Dependencies: 229
-- Data for Name: problems_subcategory; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.problems_subcategory (id, name, description, category_id) FROM stdin;
\.


--
-- TOC entry 3429 (class 0 OID 17145)
-- Dependencies: 266
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users_user (user_ptr_id, city, country, about, occupation, current_workplace, website_link, github_link, languages, skills, is_admin) FROM stdin;
1	Dhaka	Bangladesh		Student				\N	\N	t
2								\N	\N	t
3								\N	\N	t
\.


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 246
-- Name: assessments_assessment_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_categories_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 236
-- Name: assessments_assessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_id_seq', 10, true);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 244
-- Name: assessments_assessment_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_assessment_roles_id_seq', 287, true);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 238
-- Name: assessments_option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_option_id_seq', 777, true);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 242
-- Name: assessments_quesoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_quesoption_id_seq', 777, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 240
-- Name: assessments_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_question_id_seq', 210, true);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 248
-- Name: assessments_userassessment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assessments_userassessment_id_seq', 2, true);


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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);


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

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 253
-- Name: discussions_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_comments_id_seq', 1, false);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 251
-- Name: discussions_discussion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_discussion_id_seq', 1, false);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 257
-- Name: discussions_downvoted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_downvoted_id_seq', 1, false);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 255
-- Name: discussions_upvoted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.discussions_upvoted_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 61, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 234
-- Name: problems_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_bookmark_id_seq', 1, false);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 220
-- Name: problems_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_category_id_seq', 1, false);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 222
-- Name: problems_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_company_id_seq', 1, false);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 232
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
-- Dependencies: 224
-- Name: problems_problem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_problem_id_seq', 1, false);


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
-- Dependencies: 226
-- Name: problems_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_role_id_seq', 36, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 230
-- Name: problems_solution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_solution_id_seq', 1, false);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 228
-- Name: problems_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.problems_subcategory_id_seq', 1, false);


--
-- TOC entry 3147 (class 2606 OID 16851)
-- Name: assessments_assessment_categories assessments_assessment_c_assessment_id_category_i_a39850b4_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessment_c_assessment_id_category_i_a39850b4_uniq UNIQUE (assessment_id, category_id);


--
-- TOC entry 3151 (class 2606 OID 16849)
-- Name: assessments_assessment_categories assessments_assessment_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessment_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3130 (class 2606 OID 16728)
-- Name: assessments_assessment assessments_assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment
    ADD CONSTRAINT assessments_assessment_pkey PRIMARY KEY (id);


--
-- TOC entry 3141 (class 2606 OID 16814)
-- Name: assessments_assessment_roles assessments_assessment_r_assessment_id_role_id_48a76d7a_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessment_r_assessment_id_role_id_48a76d7a_uniq UNIQUE (assessment_id, role_id);


--
-- TOC entry 3144 (class 2606 OID 16798)
-- Name: assessments_assessment_roles assessments_assessment_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessment_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3132 (class 2606 OID 16739)
-- Name: assessments_option assessments_option_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_option
    ADD CONSTRAINT assessments_option_pkey PRIMARY KEY (id);


--
-- TOC entry 3138 (class 2606 OID 16758)
-- Name: assessments_quesoption assessments_quesoption_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesoption_pkey PRIMARY KEY (id);


--
-- TOC entry 3135 (class 2606 OID 16750)
-- Name: assessments_question assessments_question_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question
    ADD CONSTRAINT assessments_question_pkey PRIMARY KEY (id);


--
-- TOC entry 3154 (class 2606 OID 16871)
-- Name: assessments_userassessment assessments_userassessment_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment
    ADD CONSTRAINT assessments_userassessment_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 2606 OID 16893)
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
-- TOC entry 3090 (class 2606 OID 16887)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3158 (class 2606 OID 16899)
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- TOC entry 3160 (class 2606 OID 16901)
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- TOC entry 3166 (class 2606 OID 16929)
-- Name: discussions_comments discussions_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 16918)
-- Name: discussions_discussion discussions_discussion_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion
    ADD CONSTRAINT discussions_discussion_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 16990)
-- Name: discussions_downvoted discussions_downvoted_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvoted_pkey PRIMARY KEY (id);


--
-- TOC entry 3170 (class 2606 OID 16970)
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
-- TOC entry 3196 (class 2606 OID 17134)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3126 (class 2606 OID 16642)
-- Name: problems_bookmark problems_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_pkey PRIMARY KEY (id);


--
-- TOC entry 3108 (class 2606 OID 16544)
-- Name: problems_category problems_category_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_category
    ADD CONSTRAINT problems_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3110 (class 2606 OID 16555)
-- Name: problems_company problems_company_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_company
    ADD CONSTRAINT problems_company_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 16634)
-- Name: problems_inputoutput problems_inputoutput_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput
    ADD CONSTRAINT problems_inputoutput_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 17052)
-- Name: problems_problem_companies problems_problem_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 3181 (class 2606 OID 17054)
-- Name: problems_problem_companies problems_problem_companies_problem_id_company_id_139482c3_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_companies_problem_id_company_id_139482c3_uniq UNIQUE (problem_id, company_id);


--
-- TOC entry 3112 (class 2606 OID 16566)
-- Name: problems_problem problems_problem_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem
    ADD CONSTRAINT problems_problem_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 17074)
-- Name: problems_problem_roles problems_problem_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 17084)
-- Name: problems_problem_roles problems_problem_roles_problem_id_role_id_8e4c921f_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_problem_id_role_id_8e4c921f_uniq UNIQUE (problem_id, role_id);


--
-- TOC entry 3189 (class 2606 OID 17098)
-- Name: problems_problem_subcategories problems_problem_subcate_problem_id_subcategory_i_8024c4a4_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_subcate_problem_id_subcategory_i_8024c4a4_uniq UNIQUE (problem_id, subcategory_id);


--
-- TOC entry 3191 (class 2606 OID 17082)
-- Name: problems_problem_subcategories problems_problem_subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_subcategories_pkey PRIMARY KEY (id);


--
-- TOC entry 3114 (class 2606 OID 16585)
-- Name: problems_role problems_role_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_role
    ADD CONSTRAINT problems_role_pkey PRIMARY KEY (id);


--
-- TOC entry 3119 (class 2606 OID 16607)
-- Name: problems_solution problems_solution_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_pkey PRIMARY KEY (id);


--
-- TOC entry 3117 (class 2606 OID 16596)
-- Name: problems_subcategory problems_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory
    ADD CONSTRAINT problems_subcategory_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 17152)
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (user_ptr_id);


--
-- TOC entry 3148 (class 1259 OID 16862)
-- Name: assessments_assessment_categories_assessment_id_bd0ae8fa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_categories_assessment_id_bd0ae8fa ON public.assessments_assessment_categories USING btree (assessment_id);


--
-- TOC entry 3149 (class 1259 OID 16863)
-- Name: assessments_assessment_categories_category_id_8ed2a4fa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_categories_category_id_8ed2a4fa ON public.assessments_assessment_categories USING btree (category_id);


--
-- TOC entry 3142 (class 1259 OID 16825)
-- Name: assessments_assessment_roles_assessment_id_ba5f8115; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_roles_assessment_id_ba5f8115 ON public.assessments_assessment_roles USING btree (assessment_id);


--
-- TOC entry 3145 (class 1259 OID 16826)
-- Name: assessments_assessment_roles_role_id_f6ee4e3b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_assessment_roles_role_id_f6ee4e3b ON public.assessments_assessment_roles USING btree (role_id);


--
-- TOC entry 3136 (class 1259 OID 16777)
-- Name: assessments_quesoption_option_id_d298963d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_quesoption_option_id_d298963d ON public.assessments_quesoption USING btree (option_id);


--
-- TOC entry 3139 (class 1259 OID 16778)
-- Name: assessments_quesoption_question_id_0233bee8; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_quesoption_question_id_0233bee8 ON public.assessments_quesoption USING btree (question_id);


--
-- TOC entry 3133 (class 1259 OID 16841)
-- Name: assessments_question_assessment_id_165f6d6d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_question_assessment_id_165f6d6d ON public.assessments_question USING btree (assessment_id);


--
-- TOC entry 3152 (class 1259 OID 16882)
-- Name: assessments_userassessment_assessment_id_49144e6e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_userassessment_assessment_id_49144e6e ON public.assessments_userassessment USING btree (assessment_id);


--
-- TOC entry 3155 (class 1259 OID 16883)
-- Name: assessments_userassessment_user_id_0bbc6cc0; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX assessments_userassessment_user_id_0bbc6cc0 ON public.assessments_userassessment USING btree (user_id);


--
-- TOC entry 3075 (class 1259 OID 16894)
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
-- TOC entry 3088 (class 1259 OID 16888)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3156 (class 1259 OID 16907)
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- TOC entry 3164 (class 1259 OID 16935)
-- Name: discussions_comments_discussion_id_f90e1469; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_comments_discussion_id_f90e1469 ON public.discussions_comments USING btree (discussion_id);


--
-- TOC entry 3167 (class 1259 OID 16953)
-- Name: discussions_comments_user_id_264c0caa; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_comments_user_id_264c0caa ON public.discussions_comments USING btree (user_id);


--
-- TOC entry 3163 (class 1259 OID 16947)
-- Name: discussions_discussion_user_id_243d8c0b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_discussion_user_id_243d8c0b ON public.discussions_discussion USING btree (user_id);


--
-- TOC entry 3172 (class 1259 OID 17001)
-- Name: discussions_downvoted_discussion_id_94acc25e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_downvoted_discussion_id_94acc25e ON public.discussions_downvoted USING btree (discussion_id);


--
-- TOC entry 3175 (class 1259 OID 17002)
-- Name: discussions_downvoted_user_id_ce7b0bbe; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_downvoted_user_id_ce7b0bbe ON public.discussions_downvoted USING btree (user_id);


--
-- TOC entry 3168 (class 1259 OID 16981)
-- Name: discussions_upvoted_discussion_id_39235d74; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX discussions_upvoted_discussion_id_39235d74 ON public.discussions_upvoted USING btree (discussion_id);


--
-- TOC entry 3171 (class 1259 OID 16982)
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
-- TOC entry 3194 (class 1259 OID 17136)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3197 (class 1259 OID 17135)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3127 (class 1259 OID 16719)
-- Name: problems_bookmark_problem_id_9ee2c82f; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_bookmark_problem_id_9ee2c82f ON public.problems_bookmark USING btree (problem_id);


--
-- TOC entry 3128 (class 1259 OID 16720)
-- Name: problems_bookmark_user_id_550f864e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_bookmark_user_id_550f864e ON public.problems_bookmark USING btree (user_id);


--
-- TOC entry 3124 (class 1259 OID 16708)
-- Name: problems_inputoutput_problem_id_9dd618b3; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_inputoutput_problem_id_9dd618b3 ON public.problems_inputoutput USING btree (problem_id);


--
-- TOC entry 3176 (class 1259 OID 17066)
-- Name: problems_problem_companies_company_id_62f5fe1d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_companies_company_id_62f5fe1d ON public.problems_problem_companies USING btree (company_id);


--
-- TOC entry 3179 (class 1259 OID 17065)
-- Name: problems_problem_companies_problem_id_496e4620; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_companies_problem_id_496e4620 ON public.problems_problem_companies USING btree (problem_id);


--
-- TOC entry 3184 (class 1259 OID 17095)
-- Name: problems_problem_roles_problem_id_52d6434b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_roles_problem_id_52d6434b ON public.problems_problem_roles USING btree (problem_id);


--
-- TOC entry 3187 (class 1259 OID 17096)
-- Name: problems_problem_roles_role_id_6ee93c61; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_roles_role_id_6ee93c61 ON public.problems_problem_roles USING btree (role_id);


--
-- TOC entry 3192 (class 1259 OID 17109)
-- Name: problems_problem_subcategories_problem_id_63c721e1; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_subcategories_problem_id_63c721e1 ON public.problems_problem_subcategories USING btree (problem_id);


--
-- TOC entry 3193 (class 1259 OID 17110)
-- Name: problems_problem_subcategories_subcategory_id_703d70cc; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_problem_subcategories_subcategory_id_703d70cc ON public.problems_problem_subcategories USING btree (subcategory_id);


--
-- TOC entry 3120 (class 1259 OID 16673)
-- Name: problems_solution_problem_id_2d4e6e8e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_solution_problem_id_2d4e6e8e ON public.problems_solution USING btree (problem_id);


--
-- TOC entry 3121 (class 1259 OID 16674)
-- Name: problems_solution_user_id_1d693e38; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_solution_user_id_1d693e38 ON public.problems_solution USING btree (user_id);


--
-- TOC entry 3115 (class 1259 OID 16662)
-- Name: problems_subcategory_category_id_fda38037; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX problems_subcategory_category_id_fda38037 ON public.problems_subcategory USING btree (category_id);


--
-- TOC entry 3218 (class 2606 OID 16815)
-- Name: assessments_assessment_roles assessments_assessme_assessment_id_ba5f8115_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessme_assessment_id_ba5f8115_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3220 (class 2606 OID 16852)
-- Name: assessments_assessment_categories assessments_assessme_assessment_id_bd0ae8fa_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessme_assessment_id_bd0ae8fa_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3221 (class 2606 OID 16857)
-- Name: assessments_assessment_categories assessments_assessme_category_id_8ed2a4fa_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_categories
    ADD CONSTRAINT assessments_assessme_category_id_8ed2a4fa_fk_problems_ FOREIGN KEY (category_id) REFERENCES public.problems_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3219 (class 2606 OID 16820)
-- Name: assessments_assessment_roles assessments_assessme_role_id_f6ee4e3b_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_assessment_roles
    ADD CONSTRAINT assessments_assessme_role_id_f6ee4e3b_fk_problems_ FOREIGN KEY (role_id) REFERENCES public.problems_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3216 (class 2606 OID 16767)
-- Name: assessments_quesoption assessments_quesopti_option_id_d298963d_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesopti_option_id_d298963d_fk_assessmen FOREIGN KEY (option_id) REFERENCES public.assessments_option(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3217 (class 2606 OID 16772)
-- Name: assessments_quesoption assessments_quesopti_question_id_0233bee8_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_quesoption
    ADD CONSTRAINT assessments_quesopti_question_id_0233bee8_fk_assessmen FOREIGN KEY (question_id) REFERENCES public.assessments_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3215 (class 2606 OID 16808)
-- Name: assessments_question assessments_question_assessment_id_165f6d6d_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_question
    ADD CONSTRAINT assessments_question_assessment_id_165f6d6d_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3222 (class 2606 OID 16872)
-- Name: assessments_userassessment assessments_userasse_assessment_id_49144e6e_fk_assessmen; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assessments_userassessment
    ADD CONSTRAINT assessments_userasse_assessment_id_49144e6e_fk_assessmen FOREIGN KEY (assessment_id) REFERENCES public.assessments_assessment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3223 (class 2606 OID 16877)
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
-- TOC entry 3224 (class 2606 OID 16902)
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3226 (class 2606 OID 16930)
-- Name: discussions_comments discussions_comments_discussion_id_f90e1469_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_discussion_id_f90e1469_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3227 (class 2606 OID 16948)
-- Name: discussions_comments discussions_comments_user_id_264c0caa_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_comments
    ADD CONSTRAINT discussions_comments_user_id_264c0caa_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3225 (class 2606 OID 16942)
-- Name: discussions_discussion discussions_discussion_user_id_243d8c0b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_discussion
    ADD CONSTRAINT discussions_discussion_user_id_243d8c0b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3230 (class 2606 OID 16991)
-- Name: discussions_downvoted discussions_downvote_discussion_id_94acc25e_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvote_discussion_id_94acc25e_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3231 (class 2606 OID 16996)
-- Name: discussions_downvoted discussions_downvoted_user_id_ce7b0bbe_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_downvoted
    ADD CONSTRAINT discussions_downvoted_user_id_ce7b0bbe_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3228 (class 2606 OID 16971)
-- Name: discussions_upvoted discussions_upvoted_discussion_id_39235d74_fk_discussio; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.discussions_upvoted
    ADD CONSTRAINT discussions_upvoted_discussion_id_39235d74_fk_discussio FOREIGN KEY (discussion_id) REFERENCES public.discussions_discussion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3229 (class 2606 OID 16976)
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
-- TOC entry 3213 (class 2606 OID 16709)
-- Name: problems_bookmark problems_bookmark_problem_id_9ee2c82f_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_problem_id_9ee2c82f_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3214 (class 2606 OID 16714)
-- Name: problems_bookmark problems_bookmark_user_id_550f864e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_bookmark
    ADD CONSTRAINT problems_bookmark_user_id_550f864e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3212 (class 2606 OID 16703)
-- Name: problems_inputoutput problems_inputoutput_problem_id_9dd618b3_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_inputoutput
    ADD CONSTRAINT problems_inputoutput_problem_id_9dd618b3_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3233 (class 2606 OID 17060)
-- Name: problems_problem_companies problems_problem_com_company_id_62f5fe1d_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_com_company_id_62f5fe1d_fk_problems_ FOREIGN KEY (company_id) REFERENCES public.problems_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3232 (class 2606 OID 17055)
-- Name: problems_problem_companies problems_problem_com_problem_id_496e4620_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_companies
    ADD CONSTRAINT problems_problem_com_problem_id_496e4620_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3234 (class 2606 OID 17085)
-- Name: problems_problem_roles problems_problem_rol_problem_id_52d6434b_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_rol_problem_id_52d6434b_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3235 (class 2606 OID 17090)
-- Name: problems_problem_roles problems_problem_roles_role_id_6ee93c61_fk_problems_role_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_roles
    ADD CONSTRAINT problems_problem_roles_role_id_6ee93c61_fk_problems_role_id FOREIGN KEY (role_id) REFERENCES public.problems_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3236 (class 2606 OID 17099)
-- Name: problems_problem_subcategories problems_problem_sub_problem_id_63c721e1_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_sub_problem_id_63c721e1_fk_problems_ FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3237 (class 2606 OID 17104)
-- Name: problems_problem_subcategories problems_problem_sub_subcategory_id_703d70cc_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_problem_subcategories
    ADD CONSTRAINT problems_problem_sub_subcategory_id_703d70cc_fk_problems_ FOREIGN KEY (subcategory_id) REFERENCES public.problems_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3210 (class 2606 OID 16663)
-- Name: problems_solution problems_solution_problem_id_2d4e6e8e_fk_problems_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_problem_id_2d4e6e8e_fk_problems_problem_id FOREIGN KEY (problem_id) REFERENCES public.problems_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3211 (class 2606 OID 16668)
-- Name: problems_solution problems_solution_user_id_1d693e38_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_solution
    ADD CONSTRAINT problems_solution_user_id_1d693e38_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3209 (class 2606 OID 16657)
-- Name: problems_subcategory problems_subcategory_category_id_fda38037_fk_problems_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.problems_subcategory
    ADD CONSTRAINT problems_subcategory_category_id_fda38037_fk_problems_ FOREIGN KEY (category_id) REFERENCES public.problems_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3238 (class 2606 OID 17153)
-- Name: users_user users_user_user_ptr_id_dad4eb89_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_user_ptr_id_dad4eb89_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-08-28 09:15:55 +06

--
-- PostgreSQL database dump complete
--

