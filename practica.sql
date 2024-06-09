PGDMP  !    "        	        |            practica    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    practica    DATABASE     }   CREATE DATABASE practica WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE practica;
                postgres    false            �            1259    24578 
   categorias    TABLE     s   CREATE TABLE public.categorias (
    id_categorias integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    24577    categorias_id_categorias_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_categorias_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.categorias_id_categorias_seq;
       public          postgres    false    216            �           0    0    categorias_id_categorias_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categorias_id_categorias_seq OWNED BY public.categorias.id_categorias;
          public          postgres    false    215            �            1259    24622 	   peliculas    TABLE     �   CREATE TABLE public.peliculas (
    id_peliculas integer NOT NULL,
    titulo character varying(255) NOT NULL,
    "año" integer NOT NULL,
    precio numeric NOT NULL,
    id_categorias integer
);
    DROP TABLE public.peliculas;
       public         heap    postgres    false            �            1259    24621    peliculas_id_peliculas_seq    SEQUENCE     �   CREATE SEQUENCE public.peliculas_id_peliculas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.peliculas_id_peliculas_seq;
       public          postgres    false    218            �           0    0    peliculas_id_peliculas_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.peliculas_id_peliculas_seq OWNED BY public.peliculas.id_peliculas;
          public          postgres    false    217            U           2604    24581    categorias id_categorias    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN id_categorias SET DEFAULT nextval('public.categorias_id_categorias_seq'::regclass);
 G   ALTER TABLE public.categorias ALTER COLUMN id_categorias DROP DEFAULT;
       public          postgres    false    215    216    216            V           2604    24625    peliculas id_peliculas    DEFAULT     �   ALTER TABLE ONLY public.peliculas ALTER COLUMN id_peliculas SET DEFAULT nextval('public.peliculas_id_peliculas_seq'::regclass);
 E   ALTER TABLE public.peliculas ALTER COLUMN id_peliculas DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    24578 
   categorias 
   TABLE DATA           ;   COPY public.categorias (id_categorias, nombre) FROM stdin;
    public          postgres    false    216          �          0    24622 	   peliculas 
   TABLE DATA           X   COPY public.peliculas (id_peliculas, titulo, "año", precio, id_categorias) FROM stdin;
    public          postgres    false    218   d       �           0    0    categorias_id_categorias_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categorias_id_categorias_seq', 4, true);
          public          postgres    false    215            �           0    0    peliculas_id_peliculas_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.peliculas_id_peliculas_seq', 20, true);
          public          postgres    false    217            X           2606    24583    categorias categorias_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categorias);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    216            Z           2606    24629    peliculas peliculas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id_peliculas);
 B   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT peliculas_pkey;
       public            postgres    false    218            [           2606    24630 &   peliculas peliculas_id_categorias_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_id_categorias_fkey FOREIGN KEY (id_categorias) REFERENCES public.categorias(id_categorias);
 P   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT peliculas_id_categorias_fkey;
       public          postgres    false    216    4696    218            �   :   x�3���M�KN�2�t,K�+)-J�2�.-.H�+��2�t���ML�<�9�+F��� �Q�      �   �  x�M�[n�0E��UpLI~���������3'Q�4�TyWE���uFT��k>��1���	V��R���:e�Z�u@�ƀI��Ǥ{���Ŀ-zԃ>#YgA�ncT'�uը��c�]��ivb�!c���(c���Z�5���#�RX*�J�����	2s-��+oW̕�	2��fZe֥�V�AJ��{�߲�QfQ�6��G}�/��x�)���D���̻E+�rh	�c�� ^0�zY����c���� �rS�3F��.e���t�z�jUězr
_�Dz��:8���%�m<�ݵ�ߥ2��3H��1�-��0HH1dw�����a�V}R�9G�OӞf����Rx�M��>��g�rsv)Z������o|a�'И8~��VsF|F#IF��p:��5K^��#��Ж����x�z��L�=��#�����F�`rJB��|��YiW<}Α�l��Bн]\�`�.�]�>"qO���~^UU�N%��     