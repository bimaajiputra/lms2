PGDMP     9        	            {            lms    15.1 (Debian 15.1-1.pgdg110+1)    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24818    lms    DATABASE     n   CREATE DATABASE lms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE lms;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            	           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    24819    peserta    TABLE     (  CREATE TABLE public.peserta (
    nrp integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(100) NOT NULL,
    last_ip character varying(100),
    created_at date DEFAULT CURRENT_TIMESTAMP,
    updated_at date DEFAULT CURRENT_TIMESTAMP,
    id integer
);
    DROP TABLE public.peserta;
       public         heap    postgres    false    5            �            1259    24825    users    TABLE     d   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    age integer
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            �            1259    24824    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216    5            
           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            �            1259    24835    users_id_seq1    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216    5            �          0    24819    peserta 
   TABLE DATA           _   COPY public.peserta (nrp, username, password, last_ip, created_at, updated_at, id) FROM stdin;
    public          postgres    false    214   t                 0    24825    users 
   TABLE DATA           .   COPY public.users (id, name, age) FROM stdin;
    public          postgres    false    216                     0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    215                       0    0    users_id_seq1    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq1', 10, true);
          public          postgres    false    217            p           2606    24832    users id_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.users
    ADD CONSTRAINT id_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT id_pkey;
       public            postgres    false    216            �   �   x�Eƻ
�0 �9��lj�^�5d|J�C��.i�!��V��;�L��2�ɹ�UǾR�E�A�.�Q [��q� �?ǩ=.����uc���͐Ns6w5�t���̑��om6=�ɼ���-�9�<�aL�G� =���)�?Ϙ(�         J   x�3�t��MTp��T(-)J�46�2�,I-.�46�2��9M͸�Ls0�Ĵ 3M9�L�,�L3NSc�=... +     