PGDMP         $            
    u            db7gah347b7r9s    9.6.4    9.6.0 %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    9211549    db7gah347b7r9s    DATABASE     �   CREATE DATABASE "db7gah347b7r9s" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE "db7gah347b7r9s";
             bccoxbtohkbpnf    false                        2615    10100036    public    SCHEMA        CREATE SCHEMA "public";
    DROP SCHEMA "public";
             bccoxbtohkbpnf    false                        3079    13277    plpgsql 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";
    DROP EXTENSION "plpgsql";
                  false            �           0    0    EXTENSION "plpgsql"    COMMENT     B   COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';
                       false    1            �            1259    10302558    desktops    TABLE     �  CREATE TABLE "desktops" (
    "width" numeric(6,2),
    "height" numeric(6,2),
    "depth" numeric(6,2),
    "weight" character varying(255),
    "processor" character varying(255),
    "ram" character varying(255),
    "cpu_core" smallint,
    "hard_drive_size" character varying(255),
    "brand" character varying(255),
    "price" numeric(6,2),
    "specification_key" integer NOT NULL
);
     DROP TABLE "public"."desktops";
       public         bccoxbtohkbpnf    false    3            �            1259    10569719    desktops_specification_key_seq    SEQUENCE     �   CREATE SEQUENCE "desktops_specification_key_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "public"."desktops_specification_key_seq";
       public       bccoxbtohkbpnf    false    3    186            �           0    0    desktops_specification_key_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "desktops_specification_key_seq" OWNED BY "desktops"."specification_key";
            public       bccoxbtohkbpnf    false    191            �            1259    10302549    items    TABLE     d   CREATE TABLE "items" (
    "model_number" character varying(255),
    "specification_id" integer
);
    DROP TABLE "public"."items";
       public         bccoxbtohkbpnf    false    3            �            1259    10302734    laptops    TABLE     �  CREATE TABLE "laptops" (
    "screen_size" numeric(4,2),
    "weight" character varying(255),
    "processor" character varying(255),
    "ram" character varying(255),
    "cpu_core" smallint,
    "hard_drive_size" character varying(255),
    "battery" character varying(255),
    "brand" character varying(255),
    "operating_system" character varying(255),
    "price" numeric(6,2),
    "specification__key" integer NOT NULL
);
    DROP TABLE "public"."laptops";
       public         bccoxbtohkbpnf    false    3            �            1259    10569775    laptops_specification__key_seq    SEQUENCE     �   CREATE SEQUENCE "laptops_specification__key_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "public"."laptops_specification__key_seq";
       public       bccoxbtohkbpnf    false    188    3            �           0    0    laptops_specification__key_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "laptops_specification__key_seq" OWNED BY "laptops"."specification__key";
            public       bccoxbtohkbpnf    false    192            �            1259    10302727    monitors    TABLE     �   CREATE TABLE "monitors" (
    "screen_size" numeric(4,2),
    "weight" character varying(255),
    "brand" character varying(255),
    "price" numeric(6,2),
    "specification_key" integer NOT NULL
);
     DROP TABLE "public"."monitors";
       public         bccoxbtohkbpnf    false    3            �            1259    10569788    monitors_specification_key_seq    SEQUENCE     �   CREATE SEQUENCE "monitors_specification_key_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "public"."monitors_specification_key_seq";
       public       bccoxbtohkbpnf    false    187    3            �           0    0    monitors_specification_key_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "monitors_specification_key_seq" OWNED BY "monitors"."specification_key";
            public       bccoxbtohkbpnf    false    193            �            1259    10302988    tablets    TABLE     "  CREATE TABLE "tablets" (
    "screen_size" numeric(4,2),
    "width" numeric(6,2),
    "height" numeric(6,2),
    "weight" character varying(255),
    "processor" character varying(255),
    "ram" character varying(255),
    "cpu_core" smallint,
    "hard_drive_size" character varying(255),
    "battery" character varying(255),
    "brand" character varying(255),
    "operating_system" character varying(255),
    "camera" character varying(255),
    "price" numeric(6,2),
    "depth" numeric(6,2),
    "specification_key" integer NOT NULL
);
    DROP TABLE "public"."tablets";
       public         bccoxbtohkbpnf    false    3            �            1259    10569706    tablets_specification_key_seq    SEQUENCE     �   CREATE SEQUENCE "tablets_specification_key_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "public"."tablets_specification_key_seq";
       public       bccoxbtohkbpnf    false    189    3            �           0    0    tablets_specification_key_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "tablets_specification_key_seq" OWNED BY "tablets"."specification_key";
            public       bccoxbtohkbpnf    false    190            c           2604    10569721    desktops specification_key    DEFAULT     �   ALTER TABLE ONLY "desktops" ALTER COLUMN "specification_key" SET DEFAULT "nextval"('"desktops_specification_key_seq"'::"regclass");
 O   ALTER TABLE "public"."desktops" ALTER COLUMN "specification_key" DROP DEFAULT;
       public       bccoxbtohkbpnf    false    191    186            e           2604    10569777    laptops specification__key    DEFAULT     �   ALTER TABLE ONLY "laptops" ALTER COLUMN "specification__key" SET DEFAULT "nextval"('"laptops_specification__key_seq"'::"regclass");
 O   ALTER TABLE "public"."laptops" ALTER COLUMN "specification__key" DROP DEFAULT;
       public       bccoxbtohkbpnf    false    192    188            d           2604    10569790    monitors specification_key    DEFAULT     �   ALTER TABLE ONLY "monitors" ALTER COLUMN "specification_key" SET DEFAULT "nextval"('"monitors_specification_key_seq"'::"regclass");
 O   ALTER TABLE "public"."monitors" ALTER COLUMN "specification_key" DROP DEFAULT;
       public       bccoxbtohkbpnf    false    193    187            f           2604    10569708    tablets specification_key    DEFAULT     �   ALTER TABLE ONLY "tablets" ALTER COLUMN "specification_key" SET DEFAULT "nextval"('"tablets_specification_key_seq"'::"regclass");
 N   ALTER TABLE "public"."tablets" ALTER COLUMN "specification_key" DROP DEFAULT;
       public       bccoxbtohkbpnf    false    190    189            �          0    10302558    desktops 
   TABLE DATA               �   COPY "desktops" ("width", "height", "depth", "weight", "processor", "ram", "cpu_core", "hard_drive_size", "brand", "price", "specification_key") FROM stdin;
    public       bccoxbtohkbpnf    false    186            �           0    0    desktops_specification_key_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"desktops_specification_key_seq"', 1, true);
            public       bccoxbtohkbpnf    false    191            �          0    10302549    items 
   TABLE DATA               >   COPY "items" ("model_number", "specification_id") FROM stdin;
    public       bccoxbtohkbpnf    false    185            �          0    10302734    laptops 
   TABLE DATA               �   COPY "laptops" ("screen_size", "weight", "processor", "ram", "cpu_core", "hard_drive_size", "battery", "brand", "operating_system", "price", "specification__key") FROM stdin;
    public       bccoxbtohkbpnf    false    188            �           0    0    laptops_specification__key_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"laptops_specification__key_seq"', 1, true);
            public       bccoxbtohkbpnf    false    192            �          0    10302727    monitors 
   TABLE DATA               ]   COPY "monitors" ("screen_size", "weight", "brand", "price", "specification_key") FROM stdin;
    public       bccoxbtohkbpnf    false    187            �           0    0    monitors_specification_key_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"monitors_specification_key_seq"', 1, true);
            public       bccoxbtohkbpnf    false    193            �          0    10302988    tablets 
   TABLE DATA               �   COPY "tablets" ("screen_size", "width", "height", "weight", "processor", "ram", "cpu_core", "hard_drive_size", "battery", "brand", "operating_system", "camera", "price", "depth", "specification_key") FROM stdin;
    public       bccoxbtohkbpnf    false    189            �           0    0    tablets_specification_key_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"tablets_specification_key_seq"', 1, true);
            public       bccoxbtohkbpnf    false    190            j           2606    10569723    desktops desktops_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "desktops"
    ADD CONSTRAINT "desktops_pkey" PRIMARY KEY ("specification_key");
 F   ALTER TABLE ONLY "public"."desktops" DROP CONSTRAINT "desktops_pkey";
       public         bccoxbtohkbpnf    false    186    186            h           2606    10302553    items items_model_number_key 
   CONSTRAINT     ^   ALTER TABLE ONLY "items"
    ADD CONSTRAINT "items_model_number_key" UNIQUE ("model_number");
 L   ALTER TABLE ONLY "public"."items" DROP CONSTRAINT "items_model_number_key";
       public         bccoxbtohkbpnf    false    185    185            n           2606    10569779    laptops laptops_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "laptops"
    ADD CONSTRAINT "laptops_pkey" PRIMARY KEY ("specification__key");
 D   ALTER TABLE ONLY "public"."laptops" DROP CONSTRAINT "laptops_pkey";
       public         bccoxbtohkbpnf    false    188    188            l           2606    10569792    monitors monitors_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "monitors"
    ADD CONSTRAINT "monitors_pkey" PRIMARY KEY ("specification_key");
 F   ALTER TABLE ONLY "public"."monitors" DROP CONSTRAINT "monitors_pkey";
       public         bccoxbtohkbpnf    false    187    187            p           2606    10569710    tablets tablets_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "tablets"
    ADD CONSTRAINT "tablets_pkey" PRIMARY KEY ("specification_key");
 D   ALTER TABLE ONLY "public"."tablets" DROP CONSTRAINT "tablets_pkey";
       public         bccoxbtohkbpnf    false    189    189            �   F   x�32�33�42�35�44�Fz&
�霞y%�9
���F
�N�F�� �crj������%�!W� ҁ}      �   2   x�str642�42000䊈�q��� � W��s������=... c�C      �   L   x�34�33�4R�N���+I�Q�4�ܝ8�9B����Bx�Oj^~Y>gxf^J~y���������%�!W� ey�      �   &   x�32�30�4R�N�t,.-�46�Գ��4����� d��      �   _   x�3�35�44�F ���@!�38/�@��(1=?��D�݉Ә��D��(�fp:��g�p���+XMP�ര�Գ��4�3������ ��     