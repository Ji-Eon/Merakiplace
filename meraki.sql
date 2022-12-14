PGDMP     $    0            	    z         
   meraki_dev    12.4 (Debian 12.4-1.pgdg100+1)    12.0 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16384 
   meraki_dev    DATABASE     z   CREATE DATABASE meraki_dev WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE meraki_dev;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    16515    account_emailaddress    TABLE     ?   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id uuid NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false    3            ?            1259    16513    account_emailaddress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    3    218            ?           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    217            ?            1259    16525    account_emailconfirmation    TABLE     ?   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false    3            ?            1259    16523     account_emailconfirmation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    3    220            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    219            ?            1259    16416 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false    3            ?            1259    16414    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209    3            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            ?            1259    16426    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false    3            ?            1259    16424    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    3    211            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            ?            1259    16408    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false    3            ?            1259    16406    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207    3            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            ?            1259    16552    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id uuid NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false    3            ?            1259    16550    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    222    3            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    221            ?            1259    16398    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false    3            ?            1259    16396    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205    3            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            ?            1259    16387    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false    3            ?            1259    16385    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203    3            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            ?            1259    16658    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false    3            ?            1259    16670    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false    3            ?            1259    16668    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    237    3            ?           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    236            ?            1259    16622    doctor_apply_history    TABLE        CREATE TABLE public.doctor_apply_history (
    id integer NOT NULL,
    treatment_dt timestamp with time zone NOT NULL,
    agree_status boolean NOT NULL,
    degree_time boolean NOT NULL,
    doctor_id integer NOT NULL,
    patient_id integer NOT NULL
);
 (   DROP TABLE public.doctor_apply_history;
       public         heap    postgres    false    3            ?            1259    16620    doctor_apply_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_apply_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.doctor_apply_history_id_seq;
       public          postgres    false    234    3            ?           0    0    doctor_apply_history_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.doctor_apply_history_id_seq OWNED BY public.doctor_apply_history.id;
          public          postgres    false    233            ?            1259    16611    doctor_depertmentlist    TABLE     E  CREATE TABLE public.doctor_depertmentlist (
    id integer NOT NULL,
    department1 character varying(255),
    department2 character varying(255),
    department3 character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    "Doctor_id" integer NOT NULL
);
 )   DROP TABLE public.doctor_depertmentlist;
       public         heap    postgres    false    3            ?            1259    16609    doctor_depertmentlist_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_depertmentlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.doctor_depertmentlist_id_seq;
       public          postgres    false    232    3            ?           0    0    doctor_depertmentlist_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.doctor_depertmentlist_id_seq OWNED BY public.doctor_depertmentlist.id;
          public          postgres    false    231            ?            1259    16584    doctor_doctor    TABLE     ?   CREATE TABLE public.doctor_doctor (
    id integer NOT NULL,
    doctorname character varying(255),
    hospital character varying(255),
    nonpay character varying(255)
);
 !   DROP TABLE public.doctor_doctor;
       public         heap    postgres    false    3            ?            1259    16582    doctor_doctor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctor_doctor_id_seq;
       public          postgres    false    3    226            ?           0    0    doctor_doctor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor_doctor.id;
          public          postgres    false    225            ?            1259    16603    doctor_lunchtask    TABLE     (  CREATE TABLE public.doctor_lunchtask (
    id integer NOT NULL,
    start_time time without time zone NOT NULL,
    close_time time without time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    "Doctor_id" integer NOT NULL
);
 $   DROP TABLE public.doctor_lunchtask;
       public         heap    postgres    false    3            ?            1259    16601    doctor_lunchtask_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_lunchtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.doctor_lunchtask_id_seq;
       public          postgres    false    3    230            ?           0    0    doctor_lunchtask_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.doctor_lunchtask_id_seq OWNED BY public.doctor_lunchtask.id;
          public          postgres    false    229            ?            1259    16595    doctor_weeklytask    TABLE       CREATE TABLE public.doctor_weeklytask (
    id integer NOT NULL,
    task_monday boolean NOT NULL,
    task_tuesday boolean NOT NULL,
    task_wednesday boolean NOT NULL,
    task_thursday boolean NOT NULL,
    task_friday boolean NOT NULL,
    task_saturday boolean NOT NULL,
    task_sunday boolean NOT NULL,
    start_time time without time zone NOT NULL,
    close_time time without time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    "Doctor_id" integer NOT NULL
);
 %   DROP TABLE public.doctor_weeklytask;
       public         heap    postgres    false    3            ?            1259    16593    doctor_weeklytask_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_weeklytask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.doctor_weeklytask_id_seq;
       public          postgres    false    228    3            ?           0    0    doctor_weeklytask_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.doctor_weeklytask_id_seq OWNED BY public.doctor_weeklytask.id;
          public          postgres    false    227            ?            1259    16576    patient_patient    TABLE     i   CREATE TABLE public.patient_patient (
    id integer NOT NULL,
    patientname character varying(255)
);
 #   DROP TABLE public.patient_patient;
       public         heap    postgres    false    3            ?            1259    16574    patient_patient_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.patient_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.patient_patient_id_seq;
       public          postgres    false    224    3            ?           0    0    patient_patient_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.patient_patient_id_seq OWNED BY public.patient_patient.id;
          public          postgres    false    223            ?            1259    16681    socialaccount_socialaccount    TABLE     A  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id uuid NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false    3            ?            1259    16679 "   socialaccount_socialaccount_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    239    3            ?           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    238            ?            1259    16692    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false    3            ?            1259    16690    socialaccount_socialapp_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    241    3            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    240            ?            1259    16700    socialaccount_socialapp_sites    TABLE     ?   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false    3            ?            1259    16698 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    3    243            ?           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    242            ?            1259    16708    socialaccount_socialtoken    TABLE     ?   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false    3            ?            1259    16706     socialaccount_socialtoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    245    3            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    244            ?            1259    16458 
   users_user    TABLE     ?  CREATE TABLE public.users_user (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    id uuid NOT NULL,
    is_active boolean NOT NULL,
    email character varying(255) NOT NULL,
    username character varying(255)
);
    DROP TABLE public.users_user;
       public         heap    postgres    false    3            ?            1259    16470    users_user_groups    TABLE     }   CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id uuid NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false    3            ?            1259    16468    users_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    214    3            ?           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    213            ?            1259    16478    users_user_user_permissions    TABLE     ?   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id uuid NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false    3            ?            1259    16476 "   users_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    216    3            ?           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    215            i           2604    16518    account_emailaddress id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            j           2604    16528    account_emailconfirmation id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            e           2604    16419    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            f           2604    16429    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            d           2604    16411    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            k           2604    16555    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            c           2604    16401    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            b           2604    16390    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            s           2604    16673    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            r           2604    16625    doctor_apply_history id    DEFAULT     ?   ALTER TABLE ONLY public.doctor_apply_history ALTER COLUMN id SET DEFAULT nextval('public.doctor_apply_history_id_seq'::regclass);
 F   ALTER TABLE public.doctor_apply_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            q           2604    16614    doctor_depertmentlist id    DEFAULT     ?   ALTER TABLE ONLY public.doctor_depertmentlist ALTER COLUMN id SET DEFAULT nextval('public.doctor_depertmentlist_id_seq'::regclass);
 G   ALTER TABLE public.doctor_depertmentlist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            n           2604    16587    doctor_doctor id    DEFAULT     t   ALTER TABLE ONLY public.doctor_doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);
 ?   ALTER TABLE public.doctor_doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            p           2604    16606    doctor_lunchtask id    DEFAULT     z   ALTER TABLE ONLY public.doctor_lunchtask ALTER COLUMN id SET DEFAULT nextval('public.doctor_lunchtask_id_seq'::regclass);
 B   ALTER TABLE public.doctor_lunchtask ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            o           2604    16598    doctor_weeklytask id    DEFAULT     |   ALTER TABLE ONLY public.doctor_weeklytask ALTER COLUMN id SET DEFAULT nextval('public.doctor_weeklytask_id_seq'::regclass);
 C   ALTER TABLE public.doctor_weeklytask ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            m           2604    16579    patient_patient id    DEFAULT     x   ALTER TABLE ONLY public.patient_patient ALTER COLUMN id SET DEFAULT nextval('public.patient_patient_id_seq'::regclass);
 A   ALTER TABLE public.patient_patient ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            t           2604    16684    socialaccount_socialaccount id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            u           2604    16695    socialaccount_socialapp id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            v           2604    16703     socialaccount_socialapp_sites id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            w           2604    16711    socialaccount_socialtoken id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            g           2604    16473    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            h           2604    16481    users_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16515    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    218   0      ?          0    16525    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    220   %0      v          0    16416 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   B0      x          0    16426    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   _0      t          0    16408    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   |0      ?          0    16552    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    222   n3      r          0    16398    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   95      p          0    16387    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   6      ?          0    16658    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    235   O8      ?          0    16670    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    237   ?9      ?          0    16622    doctor_apply_history 
   TABLE DATA           r   COPY public.doctor_apply_history (id, treatment_dt, agree_status, degree_time, doctor_id, patient_id) FROM stdin;
    public          postgres    false    234   ?9      ?          0    16611    doctor_depertmentlist 
   TABLE DATA              COPY public.doctor_depertmentlist (id, department1, department2, department3, created_at, updated_at, "Doctor_id") FROM stdin;
    public          postgres    false    232   ?9      ?          0    16584    doctor_doctor 
   TABLE DATA           I   COPY public.doctor_doctor (id, doctorname, hospital, nonpay) FROM stdin;
    public          postgres    false    226   |:      ?          0    16603    doctor_lunchtask 
   TABLE DATA           k   COPY public.doctor_lunchtask (id, start_time, close_time, created_at, updated_at, "Doctor_id") FROM stdin;
    public          postgres    false    230   ?:      ?          0    16595    doctor_weeklytask 
   TABLE DATA           ?   COPY public.doctor_weeklytask (id, task_monday, task_tuesday, task_wednesday, task_thursday, task_friday, task_saturday, task_sunday, start_time, close_time, created_at, updated_at, "Doctor_id") FROM stdin;
    public          postgres    false    228   @;      ?          0    16576    patient_patient 
   TABLE DATA           :   COPY public.patient_patient (id, patientname) FROM stdin;
    public          postgres    false    224   ?;      ?          0    16681    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    239   ?;      ?          0    16692    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    241   ?;      ?          0    16700    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    243   <      ?          0    16708    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    245   5<      y          0    16458 
   users_user 
   TABLE DATA           ?   COPY public.users_user (password, last_login, is_superuser, first_name, last_name, is_staff, date_joined, id, is_active, email, username) FROM stdin;
    public          postgres    false    212   R<      {          0    16470    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    214   '=      }          0    16478    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    216   D=      ?           0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public          postgres    false    217            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    219            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    206            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);
          public          postgres    false    221            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    204            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);
          public          postgres    false    202            ?           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    236            ?           0    0    doctor_apply_history_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.doctor_apply_history_id_seq', 10, true);
          public          postgres    false    233            ?           0    0    doctor_depertmentlist_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.doctor_depertmentlist_id_seq', 2, true);
          public          postgres    false    231            ?           0    0    doctor_doctor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 2, true);
          public          postgres    false    225            ?           0    0    doctor_lunchtask_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.doctor_lunchtask_id_seq', 2, true);
          public          postgres    false    229            ?           0    0    doctor_weeklytask_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.doctor_weeklytask_id_seq', 2, true);
          public          postgres    false    227            ?           0    0    patient_patient_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.patient_patient_id_seq', 3, true);
          public          postgres    false    223            ?           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    238            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    240            ?           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    242            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    244            ?           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public          postgres    false    213            ?           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          postgres    false    215            ?           2606    16548 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    218            ?           2606    16520 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    218            ?           2606    16532 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    220            ?           2606    16530 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    220            ?           2606    16456    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            ?           2606    16452 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            ?           2606    16431 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            ?           2606    16421    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            ?           2606    16438 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            ?           2606    16413 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            ?           2606    16561 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    222            {           2606    16405 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            }           2606    16403 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            y           2606    16395 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            ?           2606    16665 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    235            ?           2606    16677 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    237            ?           2606    16675    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    237            ?           2606    16627 .   doctor_apply_history doctor_apply_history_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.doctor_apply_history
    ADD CONSTRAINT doctor_apply_history_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.doctor_apply_history DROP CONSTRAINT doctor_apply_history_pkey;
       public            postgres    false    234            ?           2606    16619 0   doctor_depertmentlist doctor_depertmentlist_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.doctor_depertmentlist
    ADD CONSTRAINT doctor_depertmentlist_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.doctor_depertmentlist DROP CONSTRAINT doctor_depertmentlist_pkey;
       public            postgres    false    232            ?           2606    16592     doctor_doctor doctor_doctor_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.doctor_doctor DROP CONSTRAINT doctor_doctor_pkey;
       public            postgres    false    226            ?           2606    16608 &   doctor_lunchtask doctor_lunchtask_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.doctor_lunchtask
    ADD CONSTRAINT doctor_lunchtask_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.doctor_lunchtask DROP CONSTRAINT doctor_lunchtask_pkey;
       public            postgres    false    230            ?           2606    16600 (   doctor_weeklytask doctor_weeklytask_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.doctor_weeklytask
    ADD CONSTRAINT doctor_weeklytask_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.doctor_weeklytask DROP CONSTRAINT doctor_weeklytask_pkey;
       public            postgres    false    228            ?           2606    16581 $   patient_patient patient_patient_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.patient_patient
    ADD CONSTRAINT patient_patient_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.patient_patient DROP CONSTRAINT patient_patient_pkey;
       public            postgres    false    224            ?           2606    16689 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    239            ?           2606    16720 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    239    239            ?           2606    16738 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    243    243            ?           2606    16697 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    241            ?           2606    16705 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    243            ?           2606    16718 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    245    245            ?           2606    16716 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    245            ?           2606    16467    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public            postgres    false    212            ?           2606    16475 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    214            ?           2606    16496 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    214    214            ?           2606    16465    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    212            ?           2606    16483 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    216            ?           2606    16510 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    216    216            ?           1259    16549 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    218            ?           1259    16539 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    218            ?           1259    16546 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     ?   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    220            ?           1259    16545 +   account_emailconfirmation_key_f43612bd_like    INDEX     ?   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    220            ?           1259    16457    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            ?           1259    16453 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            ?           1259    16454 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            ~           1259    16439 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            ?           1259    16572 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    222            ?           1259    16573 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    222            ?           1259    16667 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    235            ?           1259    16666 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    235            ?           1259    16678     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    237            ?           1259    16656 '   doctor_apply_history_doctor_id_18e3b7a4    INDEX     m   CREATE INDEX doctor_apply_history_doctor_id_18e3b7a4 ON public.doctor_apply_history USING btree (doctor_id);
 ;   DROP INDEX public.doctor_apply_history_doctor_id_18e3b7a4;
       public            postgres    false    234            ?           1259    16657 (   doctor_apply_history_patient_id_edff62e6    INDEX     o   CREATE INDEX doctor_apply_history_patient_id_edff62e6 ON public.doctor_apply_history USING btree (patient_id);
 <   DROP INDEX public.doctor_apply_history_patient_id_edff62e6;
       public            postgres    false    234            ?           1259    16645 (   doctor_depertmentlist_Doctor_id_ee1e04cb    INDEX     s   CREATE INDEX "doctor_depertmentlist_Doctor_id_ee1e04cb" ON public.doctor_depertmentlist USING btree ("Doctor_id");
 >   DROP INDEX public."doctor_depertmentlist_Doctor_id_ee1e04cb";
       public            postgres    false    232            ?           1259    16639 #   doctor_lunchtask_Doctor_id_ab0ab861    INDEX     i   CREATE INDEX "doctor_lunchtask_Doctor_id_ab0ab861" ON public.doctor_lunchtask USING btree ("Doctor_id");
 9   DROP INDEX public."doctor_lunchtask_Doctor_id_ab0ab861";
       public            postgres    false    230            ?           1259    16633 $   doctor_weeklytask_Doctor_id_e6c93c9e    INDEX     k   CREATE INDEX "doctor_weeklytask_Doctor_id_e6c93c9e" ON public.doctor_weeklytask USING btree ("Doctor_id");
 :   DROP INDEX public."doctor_weeklytask_Doctor_id_e6c93c9e";
       public            postgres    false    228            ?           1259    16726 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    239            ?           1259    16740 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    243            ?           1259    16739 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     ?   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    243            ?           1259    16751 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    245            ?           1259    16752 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    245            ?           1259    16484    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    212            ?           1259    16498 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    214            ?           1259    16497 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    214            ?           1259    16512 2   users_user_user_permissions_permission_id_0b93982e    INDEX     ?   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    216            ?           1259    16511 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    216            ?           2606    16533 K   account_emailaddress account_emailaddress_user_id_2c513194_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_user_id;
       public          postgres    false    218    2962    212            ?           2606    16540 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    2979    218    220            ?           2606    16446 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    2946    207            ?           2606    16441 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2951    209    211            ?           2606    16432 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2941    205    207            ?           2606    16562 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    222    2941    205            ?           2606    16567 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    2962    212    222            ?           2606    16646 P   doctor_apply_history doctor_apply_history_doctor_id_18e3b7a4_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_apply_history
    ADD CONSTRAINT doctor_apply_history_doctor_id_18e3b7a4_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.doctor_apply_history DROP CONSTRAINT doctor_apply_history_doctor_id_18e3b7a4_fk_doctor_doctor_id;
       public          postgres    false    226    234    2994            ?           2606    16651 S   doctor_apply_history doctor_apply_history_patient_id_edff62e6_fk_patient_patient_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_apply_history
    ADD CONSTRAINT doctor_apply_history_patient_id_edff62e6_fk_patient_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient_patient(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.doctor_apply_history DROP CONSTRAINT doctor_apply_history_patient_id_edff62e6_fk_patient_patient_id;
       public          postgres    false    224    234    2992            ?           2606    16640 R   doctor_depertmentlist doctor_depertmentlist_Doctor_id_ee1e04cb_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_depertmentlist
    ADD CONSTRAINT "doctor_depertmentlist_Doctor_id_ee1e04cb_fk_doctor_doctor_id" FOREIGN KEY ("Doctor_id") REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.doctor_depertmentlist DROP CONSTRAINT "doctor_depertmentlist_Doctor_id_ee1e04cb_fk_doctor_doctor_id";
       public          postgres    false    2994    232    226            ?           2606    16634 H   doctor_lunchtask doctor_lunchtask_Doctor_id_ab0ab861_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_lunchtask
    ADD CONSTRAINT "doctor_lunchtask_Doctor_id_ab0ab861_fk_doctor_doctor_id" FOREIGN KEY ("Doctor_id") REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.doctor_lunchtask DROP CONSTRAINT "doctor_lunchtask_Doctor_id_ab0ab861_fk_doctor_doctor_id";
       public          postgres    false    230    226    2994            ?           2606    16628 J   doctor_weeklytask doctor_weeklytask_Doctor_id_e6c93c9e_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_weeklytask
    ADD CONSTRAINT "doctor_weeklytask_Doctor_id_e6c93c9e_fk_doctor_doctor_id" FOREIGN KEY ("Doctor_id") REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.doctor_weeklytask DROP CONSTRAINT "doctor_weeklytask_Doctor_id_e6c93c9e_fk_doctor_doctor_id";
       public          postgres    false    2994    226    228            ?           2606    16741 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    3018    245    239            ?           2606    16746 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    245    3023    241            ?           2606    16732 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    243    3016    237            ?           2606    16727 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    243    3023    241            ?           2606    16721 Y   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id;
       public          postgres    false    212    239    2962            ?           2606    16490 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    214    2951    209            ?           2606    16485 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          postgres    false    212    2962    214            ?           2606    16504 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    2946    207    216            ?           2606    16499 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          postgres    false    216    2962    212                  x?????? ? ?      ?      x?????? ? ?      v      x?????? ? ?      x      x?????? ? ?      t   ?  x?}?]??0???*X?????ϳ???ʹ?R@@窻??v????;?1?!???fț?5??[??u~e6??/???) i??ps???%?W׻U?Xb??_?~
՛??͏nY?q?
??s??H?{??K{f?????l.o????³?i.??/B???CH?V" .h??????w????e?R?[I;	L?_Ko	Od?	~{?\/?m?ie?Y?e?|n?Ezd??E?8?5??ՆXvԭ.;??h
? ڍF P?O@? ??x???M?t?h?><??UvP??)Լ?8y?
5???Lj????ך?$???????^??[?uS?}$Bٌ??}G?V???E?[????S??m??wҶ?sX??	?fJ??? ??֨??4q??F$n????i??4?]???ϕhe?Ly~׆V?^????-??xQu?7?%?? ?:????y??@?T???X??"q??3??H\}ꐥ?O??Ṹ9?x?gS??A?&?H??G??!!????r?'???3?G-M??,?x?FN?Vp?썜H???܍??:???M?q?+S??1B?"?????3`'?????W?6?wf?@?R??Z?)aɛ?U??L
?(2???V????9?w?ȃ
b????x?cX?????B?? O???k?????[?P????P5G?7?8?L???,E"?y#?)I$???x}?w_?K?RќT??
j'???E?L"??K?-????x?22      ?   ?  x??Խj?@?Z?BU?Xbfg??R?piH??p??8?}a+???HR?t0>? )???b???`?Hn?u???_?`???!F?I?H% ?=0???????jsY??\D???E????a??	???Ag*?ְ8;sB?????h??
T?QXP???o??
a??A?g???????U?Bv?U_/??/w????>??擙?Qa?????yNߟ??^-?6/?????~]?B?Ǒ?ݹ?'?UXN?N?l??-??۴?~???]???~?:@?]???P?1\p??g?|[m?W??k?]?l7????2? ?? R`???4	h4???r?z??>??t?Șq???)ʡ??Q?C?^?v(t?(???B4?OV:?? 8?M?#?t0??~?`??\?R?????1?`)?M?a??1|?1 Ļ?=̠?6?F[??      r   ?   x?mPYn!??S???K?
1N`????}?????c??v??$?PѶ?|?*?E"?>?K?^q???T?J??=?2x ?j?[?#???>&?M?dxz?-?[?z??p?>?˄??=]+:??R^???@jr???P?6????v0qPnφn??+ђV???;0??v?s??P?ť(y?=/????l???@?_?{?1      p   +  x????n? ??????U#??,??i??6.?*y??8??ʾ??>???3??֏Ɏ)]&??ntə????V?zg??#B?E? /:??????]???v???Hc???]Z?dU@h?'?d??bt~??`κ??)??Jb??*(???5?|???~???f??B?)????S??A9&!{F?&&??????_|?BrZ r??܌?م??M?X??P D?Z?v?ӻ?$?6]?m>???hNv?YQ???0Zpr՚?%V?Z??R/?"P슂;
???<??P?d?^r???????S???S??1?yeЦ?b??I)?/U?3۶~ӶJί"?,?}W???9?????b???|h?d8?0\?K"[?K??!*OEM#Vy@JM?ʼ????/???0?c?(???j&???v.?p?K????m??? N??????m??]?*i?K?{X1b?U??>4?}????Qϣ????o?c5?????\fg??0S???W-?????)[?m??*E?R?????S??i?>?εi??(???q<?X??k      ?   /  x?e?[o?0 ??ǯ???)ETL|??kCK@nm??8??z?2B??ɞ?x???;?:?c9???????_ϵ???P??????YD?!̑???!??<???0?l?x#K??$?He?ȩ??e?:?9???2?\?y$B?%w?I?/??-??$~pН)6? D?&ͩ?2,g"???(}Ǭ`67޻?z??R?=?˞A??|?????^???????)_?0????????ܠ9?~K??bI???	*	?????f???)?P7???? ??:Z?_ ?pb? _?????????~??????.x      ?      x?3?L?H?-?I?K??Efs??qqq ?<	?      ?   +   x?34?4204?50?54T00?#m??4NCNC?=... ???      ?   v   x?3?|?`??S????j???M[@ԛ?{^o??f?N###]C]CKK+S3+Cs=K3sKSm\?? YC.#ηS? ?yӴ???L???z??F?fX???Z?e?b???? EB:R      ?   Q   x?3?|?6??????fp?^9???=o????<???	?o??????e???e??yk@B?J^w/y3w˛i[?v?x3u/W? ??2?      ?   S   x?}?A
?0D?us
?ҒI?&?Yz?s?Xp??,|$`0?K?u?E28#6??????j???~)H???جD?C_?K?V???j
"      ?   Z   x?}?1
?0???9?????4=KgO????u??!?????[??+s????Dp?O5WXZ?
|?Q?CA???ѷ??Zr??ڿ4?????%?      ?   $   x?3?|?????o?M?2?|3w?m?$???? Չ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      y   ?   x?]??J?@Eד?p??Lxo?^?	?
m)hl??A2????$b-b?޸????Ü?F???+?I?????????@%v??(???;?7?~?M?#*?tY???%????W????g6L??$?D}:c? ?h?j?[ ?%?ȿ?2??I??/?u?
?????$??48I13[?????û?=?~?x?櫶???űuC?DA?n9a      {      x?????? ? ?      }      x?????? ? ?     