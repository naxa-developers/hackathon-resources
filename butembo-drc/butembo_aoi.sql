PGDMP             	            {         	   hackathon    12.4    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    108035 	   hackathon    DATABASE     m   CREATE DATABASE hackathon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE hackathon;
                postgres    false            �            1259    360802    butembo_aoi    TABLE     e   CREATE TABLE public.butembo_aoi (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326)
);
    DROP TABLE public.butembo_aoi;
       public         heap    postgres    false            �            1259    360800    butembo_aoi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.butembo_aoi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.butembo_aoi_id_seq;
       public          postgres    false    228            �           0    0    butembo_aoi_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.butembo_aoi_id_seq OWNED BY public.butembo_aoi.id;
          public          postgres    false    227            *           2604    360805    butembo_aoi id    DEFAULT     p   ALTER TABLE ONLY public.butembo_aoi ALTER COLUMN id SET DEFAULT nextval('public.butembo_aoi_id_seq'::regclass);
 =   ALTER TABLE public.butembo_aoi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �          0    360802    butembo_aoi 
   TABLE DATA           /   COPY public.butembo_aoi (id, geom) FROM stdin;
    public          postgres    false    228   �       �           0    0    butembo_aoi_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.butembo_aoi_id_seq', 1, true);
          public          postgres    false    227            ,           2606    360807    butembo_aoi butembo_aoi_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.butembo_aoi
    ADD CONSTRAINT butembo_aoi_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.butembo_aoi DROP CONSTRAINT butembo_aoi_pkey;
       public            postgres    false    228            -           1259    360811    sidx_butembo_aoi_geom    INDEX     L   CREATE INDEX sidx_butembo_aoi_geom ON public.butembo_aoi USING gist (geom);
 )   DROP INDEX public.sidx_butembo_aoi_geom;
       public            postgres    false    228            �   x  x���;�()E㾃�%�!?G��Gcy_�*1�� �3`��o�b��{L~g��ÐY�4a"����AA�&>H/?f&�L:�s��:��r&�G=��_�`;�&���H)猹�x[5=����^�p�.�ˡ�0;E�r���N���ֳ��7��I$ɉ>}������Z�)����C'���׺�eO|�ٌ�4���c�����K��0���s��eб7?t�c����;�:��-5O�)?O��9���Z�����\�]_�����n|��$�0���wKI����h�'x���<d�}��'i�d����]ߧ�����+�N.��!�~
e�F������q�����4͜)�h>}��vP���h�$��y�8�ŃN�hͶ8ל�~�+`�Lz�T�/[�5��cW̒����mp1P{���<=��>1��>b�e��SgBZ�N��=;}�n���^?�Z�ӡ�Y�\u��\��v"���?��E��qUdDQ�ǃ|@�,�N��mޣ�.���Rĺ�^$��Ǘ%2�}���N����9�^�����7
��z�z�K���Sz-���Ko����Yy	bw��S���5�~, �ϔp�%�����ܿ�@6_���}���ߟ������     