PGDMP     6    !    	            {         	   hackathon    12.4    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    108035 	   hackathon    DATABASE     m   CREATE DATABASE hackathon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE hackathon;
                postgres    false            �            1259    360850    islington_lines    TABLE     /  CREATE TABLE public.islington_lines (
    tid integer NOT NULL,
    geom public.geometry(LineString,4326),
    osm_id bigint,
    uid integer,
    "user" character varying,
    version integer,
    changeset integer,
    "timestamp" timestamp without time zone,
    tags jsonb,
    country integer[]
);
 #   DROP TABLE public.islington_lines;
       public         heap    postgres    false            �            1259    360848    islington_lines_tid_seq    SEQUENCE     �   CREATE SEQUENCE public.islington_lines_tid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.islington_lines_tid_seq;
       public          postgres    false    234            �           0    0    islington_lines_tid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.islington_lines_tid_seq OWNED BY public.islington_lines.tid;
          public          postgres    false    233            *           2604    360853    islington_lines tid    DEFAULT     z   ALTER TABLE ONLY public.islington_lines ALTER COLUMN tid SET DEFAULT nextval('public.islington_lines_tid_seq'::regclass);
 B   ALTER TABLE public.islington_lines ALTER COLUMN tid DROP DEFAULT;
       public          postgres    false    234    233    234            �          0    360850    islington_lines 
   TABLE DATA           y   COPY public.islington_lines (tid, geom, osm_id, uid, "user", version, changeset, "timestamp", tags, country) FROM stdin;
    public          postgres    false    234   *       �           0    0    islington_lines_tid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.islington_lines_tid_seq', 1, false);
          public          postgres    false    233            ,           2606    360855 $   islington_lines islington_lines_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.islington_lines
    ADD CONSTRAINT islington_lines_pkey PRIMARY KEY (tid);
 N   ALTER TABLE ONLY public.islington_lines DROP CONSTRAINT islington_lines_pkey;
       public            postgres    false    234            -           1259    360859    sidx_islington_lines_geom    INDEX     T   CREATE INDEX sidx_islington_lines_geom ON public.islington_lines USING gist (geom);
 -   DROP INDEX public.sidx_islington_lines_geom;
       public            postgres    false    234            �      x������ � �     