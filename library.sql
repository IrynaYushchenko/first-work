PGDMP         (                w           library    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16397    library    DATABASE     �   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE library;
             postgres    false            �            1259    16418    author    TABLE     �   CREATE TABLE public.author (
    author_id integer NOT NULL,
    name character varying,
    born_in integer,
    died_in integer,
    citizenship character varying
);
    DROP TABLE public.author;
       public         postgres    false            �            1259    16398    book    TABLE     	  CREATE TABLE public.book (
    book_id integer NOT NULL,
    author_id character varying,
    title character varying,
    genre character varying,
    pages_number integer,
    publishing_year integer,
    publishing_name character varying,
    enter_date date
);
    DROP TABLE public.book;
       public         postgres    false            �            1259    16404 
   publishing    TABLE     �   CREATE TABLE public.publishing (
    name character varying,
    address character varying,
    contact_person character varying
);
    DROP TABLE public.publishing;
       public         postgres    false                      0    16418    author 
   TABLE DATA                     public       postgres    false    198                    0    16398    book 
   TABLE DATA                     public       postgres    false    196   �                 0    16404 
   publishing 
   TABLE DATA                     public       postgres    false    197   �       �
           2606    16425    author author_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public         postgres    false    198            �
           2606    16411    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public         postgres    false    196               �   x����
�@��Wqv*��G�j1�`�mcԡ�Ǡ��I�@�����?����C�b5��)޴���$�Ri� 1�Q����KRû�]R������	�%�� �,� \۴z�Q��։�GV(Z��o��"Il�K�	z�	�[�J�e��_}qN�VP���=�vd           x����k�0 �{���l��$~v�ak��^�e���8��d���<	�|����n��>G�6ߡn�J�?�=����,}����ki�Q�G�н�:�Ĺ�C�Eϵ�Uq��@Cc�6�/J0b�O/o�-��<���
zʭ� �2 ݎ������ة)�j�d�LLbo��H����gY�	���O	kL&��+�U�Υ��!�A��oA�I�i0Ah
\UY�����>p;jP��x�P��Z]!y�t�BwH�ؓ���.�Y�H��'e9�         �   x��α
�0�Oq[+��8:)8�jVNrI�	�9Iڀ>����.w��?��u�=����Gf/��Ke��Y�����>Nv@>\��y�3�ֻӶ�,mLF�MsHOڡ��VItZ����Ia�dSbCl4�]��VI�B�����p��u̧�yt\����'a͐�D��8�)JD��P6"��������"I^٫��     