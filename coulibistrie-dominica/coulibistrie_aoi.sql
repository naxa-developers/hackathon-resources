PGDMP             	            {         	   hackathon    12.4    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    108035 	   hackathon    DATABASE     m   CREATE DATABASE hackathon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE hackathon;
                postgres    false            �            1259    360742    coulibistrie_aoi    TABLE     j   CREATE TABLE public.coulibistrie_aoi (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326)
);
 $   DROP TABLE public.coulibistrie_aoi;
       public         heap    postgres    false            �            1259    360740    coulibistrie_aoi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coulibistrie_aoi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.coulibistrie_aoi_id_seq;
       public          postgres    false    220            �           0    0    coulibistrie_aoi_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.coulibistrie_aoi_id_seq OWNED BY public.coulibistrie_aoi.id;
          public          postgres    false    219            *           2604    360745    coulibistrie_aoi id    DEFAULT     z   ALTER TABLE ONLY public.coulibistrie_aoi ALTER COLUMN id SET DEFAULT nextval('public.coulibistrie_aoi_id_seq'::regclass);
 B   ALTER TABLE public.coulibistrie_aoi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    360742    coulibistrie_aoi 
   TABLE DATA           4   COPY public.coulibistrie_aoi (id, geom) FROM stdin;
    public          postgres    false    220   +       �           0    0    coulibistrie_aoi_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.coulibistrie_aoi_id_seq', 1, true);
          public          postgres    false    219            ,           2606    360747 &   coulibistrie_aoi coulibistrie_aoi_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.coulibistrie_aoi
    ADD CONSTRAINT coulibistrie_aoi_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.coulibistrie_aoi DROP CONSTRAINT coulibistrie_aoi_pkey;
       public            postgres    false    220            -           1259    360751    sidx_coulibistrie_aoi_geom    INDEX     V   CREATE INDEX sidx_coulibistrie_aoi_geom ON public.coulibistrie_aoi USING gist (geom);
 .   DROP INDEX public.sidx_coulibistrie_aoi_geom;
       public            postgres    false    220            �     x���Mn!�u�0 0���S���3~]��1O�
�_�0`A)�[��C"����0�X#g�S1̑� �����tpxT>^+"����|�,6֮z��;�L��ulr�~�;k '}�m�W����]������R���qa�;}�ٷS��o�	Um�qF9�|� 
Ǘ!h:����p����_��{Z��o~����t|�"EgӞ�qh���?�̗Yzݏ/�D�K8�V!��+�*����^���>���������H�u	     