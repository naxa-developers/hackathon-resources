PGDMP         "    	            {         	   hackathon    12.4    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    108035 	   hackathon    DATABASE     m   CREATE DATABASE hackathon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE hackathon;
                postgres    false            �            1259    360862    islington_polygons    TABLE     ?  CREATE TABLE public.islington_polygons (
    tid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    osm_id bigint,
    uid integer,
    "user" character varying,
    version integer,
    changeset integer,
    "timestamp" timestamp without time zone,
    tags jsonb,
    grid integer,
    country integer
);
 &   DROP TABLE public.islington_polygons;
       public         heap    postgres    false            �            1259    360860    islington_polygons_tid_seq    SEQUENCE     �   CREATE SEQUENCE public.islington_polygons_tid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.islington_polygons_tid_seq;
       public          postgres    false    236            �           0    0    islington_polygons_tid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.islington_polygons_tid_seq OWNED BY public.islington_polygons.tid;
          public          postgres    false    235            *           2604    360865    islington_polygons tid    DEFAULT     �   ALTER TABLE ONLY public.islington_polygons ALTER COLUMN tid SET DEFAULT nextval('public.islington_polygons_tid_seq'::regclass);
 E   ALTER TABLE public.islington_polygons ALTER COLUMN tid DROP DEFAULT;
       public          postgres    false    235    236    236            �          0    360862    islington_polygons 
   TABLE DATA           �   COPY public.islington_polygons (tid, geom, osm_id, uid, "user", version, changeset, "timestamp", tags, grid, country) FROM stdin;
    public          postgres    false    236   �       �           0    0    islington_polygons_tid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.islington_polygons_tid_seq', 1, false);
          public          postgres    false    235            ,           2606    360867 *   islington_polygons islington_polygons_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.islington_polygons
    ADD CONSTRAINT islington_polygons_pkey PRIMARY KEY (tid);
 T   ALTER TABLE ONLY public.islington_polygons DROP CONSTRAINT islington_polygons_pkey;
       public            postgres    false    236            -           1259    360871    sidx_islington_polygons_geom    INDEX     Z   CREATE INDEX sidx_islington_polygons_geom ON public.islington_polygons USING gist (geom);
 0   DROP INDEX public.sidx_islington_polygons_geom;
       public            postgres    false    236            �      x������ � �     