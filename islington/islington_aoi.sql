PGDMP     "    !    	            {         	   hackathon    12.4    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    108035 	   hackathon    DATABASE     m   CREATE DATABASE hackathon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE hackathon;
                postgres    false            �            1259    230704    islington_aoi    TABLE     x   CREATE TABLE public.islington_aoi (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326),
    fid integer
);
 !   DROP TABLE public.islington_aoi;
       public         heap    postgres    false            �            1259    230702 
   aoi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aoi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.aoi_id_seq;
       public          postgres    false    209            �           0    0 
   aoi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.aoi_id_seq OWNED BY public.islington_aoi.id;
          public          postgres    false    208            *           2604    230707    islington_aoi id    DEFAULT     j   ALTER TABLE ONLY public.islington_aoi ALTER COLUMN id SET DEFAULT nextval('public.aoi_id_seq'::regclass);
 ?   ALTER TABLE public.islington_aoi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �          0    230704    islington_aoi 
   TABLE DATA           6   COPY public.islington_aoi (id, geom, fid) FROM stdin;
    public          postgres    false    209   d       �           0    0 
   aoi_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.aoi_id_seq', 1, true);
          public          postgres    false    208            ,           2606    230709    islington_aoi aoi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.islington_aoi
    ADD CONSTRAINT aoi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.islington_aoi DROP CONSTRAINT aoi_pkey;
       public            postgres    false    209            -           1259    230713    sidx_aoi_geom    INDEX     F   CREATE INDEX sidx_aoi_geom ON public.islington_aoi USING gist (geom);
 !   DROP INDEX public.sidx_aoi_geom;
       public            postgres    false    209            �   N  x��VA�$)\�?�<]��)����Ȕ���{S��WFY�Z��E�G-�+?��OJԤ��[���eU����ne�:u�sq[U�Z����o���+Y���1�����F�9�%��{�|�mp����y��e�TUZ���k�����c~<o�iE�{^��n���<Wc�uq��]F��/l�ٻ���nG�����5-?��up��Q-��me~A"#�����UN���{���ٞ�5��氳p�����j�*9ߨ,s;�~�67�8�2��:�]��8�l��)㇟`:��RW<�~����U���q��0Y-�}o���Wd���Yi��-�)������E�td~�C���]�����۠����]|s!�f�d��fW�'�/,�aS���P95���ݺH�?	T/{a�w��V��h�Ck ������A\�>~|��y\6�]?}+�T����ߔ�6�g}qt4�5q��fU[��Q����v� �9if���w��� O���w�]�2/5м���E{UGO_<�cѧ^ܸ��Ñ�ݣV%_\՞�}�/ �� �^Y��4���7N�0�	?����q�8����^|����9�}��'_}�JL����aH��8��Ь�5��c/�Wk}�֌�̟���E�����g[���!o�א���M��C6tϯ�t�d��b���t^|�E�驟�]}�O/���=��p.��̿<w���
���/β�B=�����4����#&$���iH�·m�������&���?B�3}���\M��O�19���?��qq�ۨ=�~qٳU=
��B�̋�1\����kٳ�>�'?���G��ָ8� =�u(�;;B�}ҿ��q]������܏P��V�r�e�>�j�~[��ߩ%B�s��\aŰ���ƴ���O�Ѱ���sy/X�9��!O����_촮 ��cH%�o>A��JY?�	��T���X���{?�1��(q[�h�f10� �o~	��Vs?�7�� XK�ڤvj���2�`����_h�"���!5vH���o��y��8�a86f��S³�Y���xر��7��+{��{>�U~�����c�     