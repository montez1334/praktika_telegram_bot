PGDMP      8    
            |            postgres    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     |   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4786                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16394    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    login character varying(50),
    last_name character varying(50),
    password character varying(40)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16397    employee_id_seq    SEQUENCE     x   CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.employee_id_seq;
       public          postgres    false    216            �           0    0    employee_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.employee_id_seq OWNED BY public.users.id;
          public          postgres    false    217                       2604    16398    users id    DEFAULT     g   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �          0    16394    users 
   TABLE DATA           ?   COPY public.users (id, login, last_name, password) FROM stdin;
    public          postgres    false    216   �       �           0    0    employee_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.employee_id_seq', 1, true);
          public          postgres    false    217            �   #   x�3��M,�L�K��e��E���f\1z\\\ ��9     