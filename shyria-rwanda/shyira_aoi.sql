PGDMP              	            {         	   hackathon    12.4    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    108035 	   hackathon    DATABASE     m   CREATE DATABASE hackathon WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE hackathon;
                postgres    false            �            1259    360584 
   shyira_aoi    TABLE     d   CREATE TABLE public.shyira_aoi (
    id integer NOT NULL,
    geom public.geometry(Polygon,4326)
);
    DROP TABLE public.shyira_aoi;
       public         heap    postgres    false            �          0    360584 
   shyira_aoi 
   TABLE DATA           .   COPY public.shyira_aoi (id, geom) FROM stdin;
    public          postgres    false    216   D       +           2606    360588    shyira_aoi shyira_aoi_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shyira_aoi
    ADD CONSTRAINT shyira_aoi_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shyira_aoi DROP CONSTRAINT shyira_aoi_pkey;
       public            postgres    false    216            ,           1259    360592    sidx_shyira_aoi_geom    INDEX     J   CREATE INDEX sidx_shyira_aoi_geom ON public.shyira_aoi USING gist (geom);
 (   DROP INDEX public.sidx_shyira_aoi_geom;
       public            postgres    false    216            �   |  x���A��8E�S�6`��)����Բ��"e����� 臠�=���{�-L씏�؃�\}�}�>iL[ǰ��p�}�R�
7��=�%�`��| ��5>ޘRm*^^`"@��ϗ���r�*;��/��햿|	���� dsn�q��@�����Z�|c��6F��G��r+ZR��1_�>�,qr�����_�t~p�1��ص;��C��V���>��(����>*�84�W��R�_���I]n�"G�/?�M���呙J�gY^��Ц���W�yzH�/�x���"t�qo1��l=��&�ѹe=n�$�M^��ϑJ~�M�Ub�?&����c�8�0��B^5[�w>�k4>{��@G	u�W���P���[6��i��s�c�Ъ�ɽ����ב�]�����'�]qy��hc.��gJ&.o��`��4�<}8�V}�Z���qr;��e������?������{'^|�£����N�Lֵ�?r�֒<
��ժַm����T��1^���Zx�}����.���X����gK�NMS~�#x,��k��B�V�dڼ|�8�ni��q�X�����軤���m�r�]�tx�w��q>��.�f�_�k�g�G�{��>��-�z����������&�     