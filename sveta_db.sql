PGDMP     :                	    w            sveta_db    9.2.24    9.2.24 �   R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            T           1262    16384    sveta_db    DATABASE     k   CREATE DATABASE sveta_db WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE sveta_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            U           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            V           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12651    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            W           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16414 
   auth_group    TABLE     _   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         sveta    false    6            �            1259    16412    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       sveta    false    6    176            X           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       sveta    false    175            �            1259    16424    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         sveta    false    6            �            1259    16422    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       sveta    false    6    178            Y           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       sveta    false    177            �            1259    16406    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         sveta    false    6            �            1259    16404    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       sveta    false    174    6            Z           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       sveta    false    173            �            1259    16432 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         sveta    false    6            �            1259    16442    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         sveta    false    6            �            1259    16440    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       sveta    false    6    182            [           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       sveta    false    181            �            1259    16430    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       sveta    false    180    6            \           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       sveta    false    179            �            1259    16450    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         sveta    false    6            �            1259    16448 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       sveta    false    6    184            ]           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       sveta    false    183            �            1259    17044 	   cart_cart    TABLE     �   CREATE TABLE cart_cart (
    id integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    checked_out boolean NOT NULL
);
    DROP TABLE public.cart_cart;
       public         sveta    false    6            �            1259    17042    cart_cart_id_seq    SEQUENCE     r   CREATE SEQUENCE cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public       sveta    false    242    6            ^           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cart_cart_id_seq OWNED BY cart_cart.id;
            public       sveta    false    241            �            1259    17052 	   cart_item    TABLE     b  CREATE TABLE cart_item (
    id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(18,2) NOT NULL,
    object_id integer NOT NULL,
    cart_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT cart_item_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT cart_item_quantity_check CHECK ((quantity >= 0))
);
    DROP TABLE public.cart_item;
       public         sveta    false    6            �            1259    17050    cart_item_id_seq    SEQUENCE     r   CREATE SEQUENCE cart_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_item_id_seq;
       public       sveta    false    244    6            _           0    0    cart_item_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cart_item_id_seq OWNED BY cart_item.id;
            public       sveta    false    243            �            1259    16510    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         sveta    false    6            �            1259    16508    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       sveta    false    186    6            `           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       sveta    false    185            �            1259    16396    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         sveta    false    6            �            1259    16394    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       sveta    false    6    172            a           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       sveta    false    171            �            1259    16388    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         sveta    false    6            �            1259    16386    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       sveta    false    6    170            b           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       sveta    false    169            �            1259    16546    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         sveta    false    6            �            1259    16540    django_summernote_attachment    TABLE     �   CREATE TABLE django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);
 0   DROP TABLE public.django_summernote_attachment;
       public         sveta    false    6            �            1259    16538 #   django_summernote_attachment_id_seq    SEQUENCE     �   CREATE SEQUENCE django_summernote_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.django_summernote_attachment_id_seq;
       public       sveta    false    188    6            c           0    0 #   django_summernote_attachment_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE django_summernote_attachment_id_seq OWNED BY django_summernote_attachment.id;
            public       sveta    false    187            �            1259    16645    ecomapp_cart    TABLE     ]   CREATE TABLE ecomapp_cart (
    id integer NOT NULL,
    cart_total numeric(9,2) NOT NULL
);
     DROP TABLE public.ecomapp_cart;
       public         sveta    false    6            �            1259    16643    ecomapp_cart_id_seq    SEQUENCE     u   CREATE SEQUENCE ecomapp_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ecomapp_cart_id_seq;
       public       sveta    false    6    209            d           0    0    ecomapp_cart_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE ecomapp_cart_id_seq OWNED BY ecomapp_cart.id;
            public       sveta    false    208            �            1259    16653    ecomapp_cart_item    TABLE     |   CREATE TABLE ecomapp_cart_item (
    id integer NOT NULL,
    cart_id integer NOT NULL,
    cartitem_id integer NOT NULL
);
 %   DROP TABLE public.ecomapp_cart_item;
       public         sveta    false    6            �            1259    16651    ecomapp_cart_item_id_seq    SEQUENCE     z   CREATE SEQUENCE ecomapp_cart_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ecomapp_cart_item_id_seq;
       public       sveta    false    6    211            e           0    0    ecomapp_cart_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE ecomapp_cart_item_id_seq OWNED BY ecomapp_cart_item.id;
            public       sveta    false    210            �            1259    16558    ecomapp_cartitem    TABLE     �   CREATE TABLE ecomapp_cartitem (
    id integer NOT NULL,
    qty integer NOT NULL,
    item_total numeric(9,2) NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT ecomapp_cartitem_qty_check CHECK ((qty >= 0))
);
 $   DROP TABLE public.ecomapp_cartitem;
       public         sveta    false    6            �            1259    16556    ecomapp_cartitem_id_seq    SEQUENCE     y   CREATE SEQUENCE ecomapp_cartitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ecomapp_cartitem_id_seq;
       public       sveta    false    191    6            f           0    0    ecomapp_cartitem_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE ecomapp_cartitem_id_seq OWNED BY ecomapp_cartitem.id;
            public       sveta    false    190            �            1259    16567    ecomapp_category    TABLE     �   CREATE TABLE ecomapp_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL
);
 $   DROP TABLE public.ecomapp_category;
       public         sveta    false    6            �            1259    16565    ecomapp_category_id_seq    SEQUENCE     y   CREATE SEQUENCE ecomapp_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ecomapp_category_id_seq;
       public       sveta    false    193    6            g           0    0    ecomapp_category_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE ecomapp_category_id_seq OWNED BY ecomapp_category.id;
            public       sveta    false    192            �            1259    16626    ecomapp_order    TABLE       CREATE TABLE ecomapp_order (
    id integer NOT NULL,
    total numeric(9,2) NOT NULL,
    second_name character varying(200) NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    phone_number character varying(9) NOT NULL,
    email character varying(254) NOT NULL,
    buying_type character varying(40) NOT NULL,
    address character varying(255) NOT NULL,
    status character varying(100) NOT NULL,
    comments text NOT NULL,
    date timestamp with time zone NOT NULL
);
 !   DROP TABLE public.ecomapp_order;
       public         sveta    false    6            �            1259    16624    ecomapp_order_id_seq    SEQUENCE     v   CREATE SEQUENCE ecomapp_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ecomapp_order_id_seq;
       public       sveta    false    205    6            h           0    0    ecomapp_order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE ecomapp_order_id_seq OWNED BY ecomapp_order.id;
            public       sveta    false    204            �            1259    16637    ecomapp_order_products    TABLE     �   CREATE TABLE ecomapp_order_products (
    id integer NOT NULL,
    order_id integer NOT NULL,
    cartitem_id integer NOT NULL
);
 *   DROP TABLE public.ecomapp_order_products;
       public         sveta    false    6            �            1259    16635    ecomapp_order_products_id_seq    SEQUENCE        CREATE SEQUENCE ecomapp_order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ecomapp_order_products_id_seq;
       public       sveta    false    207    6            i           0    0    ecomapp_order_products_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE ecomapp_order_products_id_seq OWNED BY ecomapp_order_products.id;
            public       sveta    false    206            �            1259    16575    ecomapp_page    TABLE     �   CREATE TABLE ecomapp_page (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL
);
     DROP TABLE public.ecomapp_page;
       public         sveta    false    6            �            1259    16573    ecomapp_page_id_seq    SEQUENCE     u   CREATE SEQUENCE ecomapp_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ecomapp_page_id_seq;
       public       sveta    false    195    6            j           0    0    ecomapp_page_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE ecomapp_page_id_seq OWNED BY ecomapp_page.id;
            public       sveta    false    194            �            1259    16586    ecomapp_product    TABLE     �  CREATE TABLE ecomapp_product (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    description text NOT NULL,
    price numeric(9,2) NOT NULL,
    count integer NOT NULL,
    slug character varying(50) NOT NULL,
    available boolean NOT NULL,
    date timestamp with time zone NOT NULL,
    album_cover character varying(100) NOT NULL,
    category_id integer NOT NULL,
    status character varying(20) NOT NULL,
    CONSTRAINT ecomapp_product_count_check CHECK ((count >= 0))
);
 #   DROP TABLE public.ecomapp_product;
       public         sveta    false    6            �            1259    16584    ecomapp_product_id_seq    SEQUENCE     x   CREATE SEQUENCE ecomapp_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ecomapp_product_id_seq;
       public       sveta    false    6    197            k           0    0    ecomapp_product_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE ecomapp_product_id_seq OWNED BY ecomapp_product.id;
            public       sveta    false    196            �            1259    16618    ecomapp_productimage    TABLE     �   CREATE TABLE ecomapp_productimage (
    id integer NOT NULL,
    images character varying(100) NOT NULL,
    product_id integer NOT NULL
);
 (   DROP TABLE public.ecomapp_productimage;
       public         sveta    false    6            �            1259    16616    ecomapp_productimage_id_seq    SEQUENCE     }   CREATE SEQUENCE ecomapp_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ecomapp_productimage_id_seq;
       public       sveta    false    6    203            l           0    0    ecomapp_productimage_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE ecomapp_productimage_id_seq OWNED BY ecomapp_productimage.id;
            public       sveta    false    202            �            1259    16598    ecomapp_reduction    TABLE     @  CREATE TABLE ecomapp_reduction (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    reduction smallint NOT NULL,
    description text NOT NULL,
    image character varying(100),
    date timestamp with time zone NOT NULL,
    CONSTRAINT ecomapp_reduction_reduction_check CHECK ((reduction >= 0))
);
 %   DROP TABLE public.ecomapp_reduction;
       public         sveta    false    6            �            1259    16596    ecomapp_reduction_id_seq    SEQUENCE     z   CREATE SEQUENCE ecomapp_reduction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ecomapp_reduction_id_seq;
       public       sveta    false    199    6            m           0    0    ecomapp_reduction_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE ecomapp_reduction_id_seq OWNED BY ecomapp_reduction.id;
            public       sveta    false    198            �            1259    16610    ecomapp_reduction_product    TABLE     �   CREATE TABLE ecomapp_reduction_product (
    id integer NOT NULL,
    reduction_id integer NOT NULL,
    product_id integer NOT NULL
);
 -   DROP TABLE public.ecomapp_reduction_product;
       public         sveta    false    6            �            1259    16608     ecomapp_reduction_product_id_seq    SEQUENCE     �   CREATE SEQUENCE ecomapp_reduction_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ecomapp_reduction_product_id_seq;
       public       sveta    false    201    6            n           0    0     ecomapp_reduction_product_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE ecomapp_reduction_product_id_seq OWNED BY ecomapp_reduction_product.id;
            public       sveta    false    200            �            1259    16768    filer_clipboard    TABLE     X   CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         sveta    false    6            �            1259    16766    filer_clipboard_id_seq    SEQUENCE     x   CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       sveta    false    6    213            o           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;
            public       sveta    false    212            �            1259    16776    filer_clipboarditem    TABLE        CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         sveta    false    6            �            1259    16774    filer_clipboarditem_id_seq    SEQUENCE     |   CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       sveta    false    6    215            p           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;
            public       sveta    false    214            �            1259    16784 
   filer_file    TABLE       CREATE TABLE filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size integer,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);
    DROP TABLE public.filer_file;
       public         sveta    false    6            �            1259    16782    filer_file_id_seq    SEQUENCE     s   CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       sveta    false    217    6            q           0    0    filer_file_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;
            public       sveta    false    216            �            1259    16795    filer_folder    TABLE     �  CREATE TABLE filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);
     DROP TABLE public.filer_folder;
       public         sveta    false    6            �            1259    16793    filer_folder_id_seq    SEQUENCE     u   CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       sveta    false    219    6            r           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;
            public       sveta    false    218            �            1259    16807    filer_folderpermission    TABLE       CREATE TABLE filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);
 *   DROP TABLE public.filer_folderpermission;
       public         sveta    false    6            �            1259    16805    filer_folderpermission_id_seq    SEQUENCE        CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       sveta    false    6    221            s           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;
            public       sveta    false    220            �            1259    16815    filer_image    TABLE     �  CREATE TABLE filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64)
);
    DROP TABLE public.filer_image;
       public         sveta    false    6            �            1259    16897    svetlyachokshop_category    TABLE     l   CREATE TABLE svetlyachokshop_category (
    id integer NOT NULL,
    slug character varying(50) NOT NULL
);
 ,   DROP TABLE public.svetlyachokshop_category;
       public         sveta    false    6            �            1259    16895    svetlyachokshop_category_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.svetlyachokshop_category_id_seq;
       public       sveta    false    6    224            t           0    0    svetlyachokshop_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE svetlyachokshop_category_id_seq OWNED BY svetlyachokshop_category.id;
            public       sveta    false    223            �            1259    16967 $   svetlyachokshop_category_translation    TABLE     �   CREATE TABLE svetlyachokshop_category_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(50) NOT NULL,
    master_id integer
);
 8   DROP TABLE public.svetlyachokshop_category_translation;
       public         sveta    false    6            �            1259    16965 +   svetlyachokshop_category_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_category_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.svetlyachokshop_category_translation_id_seq;
       public       sveta    false    6    238            u           0    0 +   svetlyachokshop_category_translation_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE svetlyachokshop_category_translation_id_seq OWNED BY svetlyachokshop_category_translation.id;
            public       sveta    false    237            �            1259    17033    svetlyachokshop_order    TABLE     #  CREATE TABLE svetlyachokshop_order (
    id integer NOT NULL,
    total_price numeric(9,2) NOT NULL,
    second_name character varying(200) NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    phone_number character varying(9) NOT NULL,
    email character varying(254) NOT NULL,
    buying_type character varying(40) NOT NULL,
    address character varying(255) NOT NULL,
    status character varying(100) NOT NULL,
    comments text NOT NULL,
    date timestamp with time zone NOT NULL
);
 )   DROP TABLE public.svetlyachokshop_order;
       public         sveta    false    6            �            1259    17031    svetlyachokshop_order_id_seq    SEQUENCE     ~   CREATE SEQUENCE svetlyachokshop_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.svetlyachokshop_order_id_seq;
       public       sveta    false    240    6            v           0    0    svetlyachokshop_order_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE svetlyachokshop_order_id_seq OWNED BY svetlyachokshop_order.id;
            public       sveta    false    239            �            1259    16907    svetlyachokshop_page    TABLE     �   CREATE TABLE svetlyachokshop_page (
    id integer NOT NULL,
    is_publish boolean NOT NULL,
    is_menu boolean NOT NULL,
    slug character varying(50) NOT NULL
);
 (   DROP TABLE public.svetlyachokshop_page;
       public         sveta    false    6            �            1259    16905    svetlyachokshop_page_id_seq    SEQUENCE     }   CREATE SEQUENCE svetlyachokshop_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.svetlyachokshop_page_id_seq;
       public       sveta    false    6    226            w           0    0    svetlyachokshop_page_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE svetlyachokshop_page_id_seq OWNED BY svetlyachokshop_page.id;
            public       sveta    false    225            �            1259    16956     svetlyachokshop_page_translation    TABLE     #  CREATE TABLE svetlyachokshop_page_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    meta_description text,
    meta_keywords character varying(255),
    master_id integer
);
 4   DROP TABLE public.svetlyachokshop_page_translation;
       public         sveta    false    6            �            1259    16954 '   svetlyachokshop_page_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_page_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.svetlyachokshop_page_translation_id_seq;
       public       sveta    false    236    6            x           0    0 '   svetlyachokshop_page_translation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE svetlyachokshop_page_translation_id_seq OWNED BY svetlyachokshop_page_translation.id;
            public       sveta    false    235            �            1259    16915    svetlyachokshop_product    TABLE     �  CREATE TABLE svetlyachokshop_product (
    id integer NOT NULL,
    is_publish boolean NOT NULL,
    price numeric(9,2) NOT NULL,
    count integer NOT NULL,
    slug character varying(50) NOT NULL,
    status character varying(20) NOT NULL,
    date timestamp with time zone NOT NULL,
    album_cover_id integer NOT NULL,
    category_id integer,
    CONSTRAINT svetlyachokshop_product_count_check CHECK ((count >= 0))
);
 +   DROP TABLE public.svetlyachokshop_product;
       public         sveta    false    6            �            1259    16913    svetlyachokshop_product_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.svetlyachokshop_product_id_seq;
       public       sveta    false    6    228            y           0    0    svetlyachokshop_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE svetlyachokshop_product_id_seq OWNED BY svetlyachokshop_product.id;
            public       sveta    false    227            �            1259    16945 #   svetlyachokshop_product_translation    TABLE     %  CREATE TABLE svetlyachokshop_product_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    title character varying(50) NOT NULL,
    description text NOT NULL,
    meta_description text,
    meta_keywords character varying(255),
    master_id integer
);
 7   DROP TABLE public.svetlyachokshop_product_translation;
       public         sveta    false    6            �            1259    16943 *   svetlyachokshop_product_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_product_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.svetlyachokshop_product_translation_id_seq;
       public       sveta    false    6    234            z           0    0 *   svetlyachokshop_product_translation_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE svetlyachokshop_product_translation_id_seq OWNED BY svetlyachokshop_product_translation.id;
            public       sveta    false    233            �            1259    16937    svetlyachokshop_productimage    TABLE     �   CREATE TABLE svetlyachokshop_productimage (
    id integer NOT NULL,
    image_id integer NOT NULL,
    product_id integer NOT NULL
);
 0   DROP TABLE public.svetlyachokshop_productimage;
       public         sveta    false    6            �            1259    16935 #   svetlyachokshop_productimage_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.svetlyachokshop_productimage_id_seq;
       public       sveta    false    232    6            {           0    0 #   svetlyachokshop_productimage_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE svetlyachokshop_productimage_id_seq OWNED BY svetlyachokshop_productimage.id;
            public       sveta    false    231            �            1259    16926    svetlyachokshop_question    TABLE     �   CREATE TABLE svetlyachokshop_question (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    question text NOT NULL,
    date timestamp with time zone NOT NULL
);
 ,   DROP TABLE public.svetlyachokshop_question;
       public         sveta    false    6            �            1259    16924    svetlyachokshop_question_id_seq    SEQUENCE     �   CREATE SEQUENCE svetlyachokshop_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.svetlyachokshop_question_id_seq;
       public       sveta    false    230    6            |           0    0    svetlyachokshop_question_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE svetlyachokshop_question_id_seq OWNED BY svetlyachokshop_question.id;
            public       sveta    false    229            �           2604    16417    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    175    176    176            �           2604    16427    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    177    178    178            �           2604    16409    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    173    174    174            �           2604    16435    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    180    179    180            �           2604    16445    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    181    182    182            �           2604    16453    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    184    183    184            �           2604    17047    id    DEFAULT     ^   ALTER TABLE ONLY cart_cart ALTER COLUMN id SET DEFAULT nextval('cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart_cart ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    241    242    242            �           2604    17055    id    DEFAULT     ^   ALTER TABLE ONLY cart_item ALTER COLUMN id SET DEFAULT nextval('cart_item_id_seq'::regclass);
 ;   ALTER TABLE public.cart_item ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    243    244    244            �           2604    16513    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    185    186    186            �           2604    16399    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    171    172    172            �           2604    16391    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    170    169    170            �           2604    16543    id    DEFAULT     �   ALTER TABLE ONLY django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('django_summernote_attachment_id_seq'::regclass);
 N   ALTER TABLE public.django_summernote_attachment ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    187    188    188            �           2604    16648    id    DEFAULT     d   ALTER TABLE ONLY ecomapp_cart ALTER COLUMN id SET DEFAULT nextval('ecomapp_cart_id_seq'::regclass);
 >   ALTER TABLE public.ecomapp_cart ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    209    208    209            �           2604    16656    id    DEFAULT     n   ALTER TABLE ONLY ecomapp_cart_item ALTER COLUMN id SET DEFAULT nextval('ecomapp_cart_item_id_seq'::regclass);
 C   ALTER TABLE public.ecomapp_cart_item ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    210    211    211            �           2604    16561    id    DEFAULT     l   ALTER TABLE ONLY ecomapp_cartitem ALTER COLUMN id SET DEFAULT nextval('ecomapp_cartitem_id_seq'::regclass);
 B   ALTER TABLE public.ecomapp_cartitem ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    191    190    191            �           2604    16570    id    DEFAULT     l   ALTER TABLE ONLY ecomapp_category ALTER COLUMN id SET DEFAULT nextval('ecomapp_category_id_seq'::regclass);
 B   ALTER TABLE public.ecomapp_category ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    193    192    193            �           2604    16629    id    DEFAULT     f   ALTER TABLE ONLY ecomapp_order ALTER COLUMN id SET DEFAULT nextval('ecomapp_order_id_seq'::regclass);
 ?   ALTER TABLE public.ecomapp_order ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    205    204    205            �           2604    16640    id    DEFAULT     x   ALTER TABLE ONLY ecomapp_order_products ALTER COLUMN id SET DEFAULT nextval('ecomapp_order_products_id_seq'::regclass);
 H   ALTER TABLE public.ecomapp_order_products ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    207    206    207            �           2604    16578    id    DEFAULT     d   ALTER TABLE ONLY ecomapp_page ALTER COLUMN id SET DEFAULT nextval('ecomapp_page_id_seq'::regclass);
 >   ALTER TABLE public.ecomapp_page ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    195    194    195            �           2604    16589    id    DEFAULT     j   ALTER TABLE ONLY ecomapp_product ALTER COLUMN id SET DEFAULT nextval('ecomapp_product_id_seq'::regclass);
 A   ALTER TABLE public.ecomapp_product ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    196    197    197            �           2604    16621    id    DEFAULT     t   ALTER TABLE ONLY ecomapp_productimage ALTER COLUMN id SET DEFAULT nextval('ecomapp_productimage_id_seq'::regclass);
 F   ALTER TABLE public.ecomapp_productimage ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    203    202    203            �           2604    16601    id    DEFAULT     n   ALTER TABLE ONLY ecomapp_reduction ALTER COLUMN id SET DEFAULT nextval('ecomapp_reduction_id_seq'::regclass);
 C   ALTER TABLE public.ecomapp_reduction ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    198    199    199            �           2604    16613    id    DEFAULT     ~   ALTER TABLE ONLY ecomapp_reduction_product ALTER COLUMN id SET DEFAULT nextval('ecomapp_reduction_product_id_seq'::regclass);
 K   ALTER TABLE public.ecomapp_reduction_product ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    200    201    201            �           2604    16771    id    DEFAULT     j   ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    212    213    213            �           2604    16779    id    DEFAULT     r   ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    214    215    215            �           2604    16787    id    DEFAULT     `   ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    217    216    217            �           2604    16798    id    DEFAULT     d   ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    218    219    219            �           2604    16810    id    DEFAULT     x   ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    221    220    221            �           2604    16900    id    DEFAULT     |   ALTER TABLE ONLY svetlyachokshop_category ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_category_id_seq'::regclass);
 J   ALTER TABLE public.svetlyachokshop_category ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    224    223    224            �           2604    16970    id    DEFAULT     �   ALTER TABLE ONLY svetlyachokshop_category_translation ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_category_translation_id_seq'::regclass);
 V   ALTER TABLE public.svetlyachokshop_category_translation ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    237    238    238            �           2604    17036    id    DEFAULT     v   ALTER TABLE ONLY svetlyachokshop_order ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_order_id_seq'::regclass);
 G   ALTER TABLE public.svetlyachokshop_order ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    240    239    240            �           2604    16910    id    DEFAULT     t   ALTER TABLE ONLY svetlyachokshop_page ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_page_id_seq'::regclass);
 F   ALTER TABLE public.svetlyachokshop_page ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    225    226    226            �           2604    16959    id    DEFAULT     �   ALTER TABLE ONLY svetlyachokshop_page_translation ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_page_translation_id_seq'::regclass);
 R   ALTER TABLE public.svetlyachokshop_page_translation ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    235    236    236            �           2604    16918    id    DEFAULT     z   ALTER TABLE ONLY svetlyachokshop_product ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_product_id_seq'::regclass);
 I   ALTER TABLE public.svetlyachokshop_product ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    228    227    228            �           2604    16948    id    DEFAULT     �   ALTER TABLE ONLY svetlyachokshop_product_translation ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_product_translation_id_seq'::regclass);
 U   ALTER TABLE public.svetlyachokshop_product_translation ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    233    234    234            �           2604    16940    id    DEFAULT     �   ALTER TABLE ONLY svetlyachokshop_productimage ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_productimage_id_seq'::regclass);
 N   ALTER TABLE public.svetlyachokshop_productimage ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    232    231    232            �           2604    16929    id    DEFAULT     |   ALTER TABLE ONLY svetlyachokshop_question ALTER COLUMN id SET DEFAULT nextval('svetlyachokshop_question_id_seq'::regclass);
 J   ALTER TABLE public.svetlyachokshop_question ALTER COLUMN id DROP DEFAULT;
       public       sveta    false    229    230    230                      0    16414 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       sveta    false    176   _�      }           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       sveta    false    175                      0    16424    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       sveta    false    178   |�      ~           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       sveta    false    177            	          0    16406    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       sveta    false    174   ��                 0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 117, true);
            public       sveta    false    173                      0    16432 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       sveta    false    180   Y�                0    16442    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       sveta    false    182   ;�      �           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       sveta    false    181            �           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       sveta    false    179                      0    16450    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       sveta    false    184   X�      �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       sveta    false    183            M          0    17044 	   cart_cart 
   TABLE DATA               <   COPY cart_cart (id, creation_date, checked_out) FROM stdin;
    public       sveta    false    242   u�      �           0    0    cart_cart_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cart_cart_id_seq', 1, false);
            public       sveta    false    241            O          0    17052 	   cart_item 
   TABLE DATA               [   COPY cart_item (id, quantity, unit_price, object_id, cart_id, content_type_id) FROM stdin;
    public       sveta    false    244   ��      �           0    0    cart_item_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cart_item_id_seq', 1, false);
            public       sveta    false    243                      0    16510    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       sveta    false    186   ��      �           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 61, true);
            public       sveta    false    185                      0    16396    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       sveta    false    172   �%      �           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 32, true);
            public       sveta    false    171                      0    16388    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       sveta    false    170   '      �           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 51, true);
            public       sveta    false    169                      0    16546    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       sveta    false    189   �*                0    16540    django_summernote_attachment 
   TABLE DATA               I   COPY django_summernote_attachment (id, name, file, uploaded) FROM stdin;
    public       sveta    false    188   ��      �           0    0 #   django_summernote_attachment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('django_summernote_attachment_id_seq', 1, false);
            public       sveta    false    187            ,          0    16645    ecomapp_cart 
   TABLE DATA               /   COPY ecomapp_cart (id, cart_total) FROM stdin;
    public       sveta    false    209   ��      �           0    0    ecomapp_cart_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('ecomapp_cart_id_seq', 783, true);
            public       sveta    false    208            .          0    16653    ecomapp_cart_item 
   TABLE DATA               >   COPY ecomapp_cart_item (id, cart_id, cartitem_id) FROM stdin;
    public       sveta    false    211   `�      �           0    0    ecomapp_cart_item_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('ecomapp_cart_item_id_seq', 50, true);
            public       sveta    false    210                      0    16558    ecomapp_cartitem 
   TABLE DATA               D   COPY ecomapp_cartitem (id, qty, item_total, product_id) FROM stdin;
    public       sveta    false    191   ��      �           0    0    ecomapp_cartitem_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('ecomapp_cartitem_id_seq', 29, true);
            public       sveta    false    190                      0    16567    ecomapp_category 
   TABLE DATA               3   COPY ecomapp_category (id, name, slug) FROM stdin;
    public       sveta    false    193   2�      �           0    0    ecomapp_category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('ecomapp_category_id_seq', 5, true);
            public       sveta    false    192            (          0    16626    ecomapp_order 
   TABLE DATA               �   COPY ecomapp_order (id, total, second_name, first_name, last_name, phone_number, email, buying_type, address, status, comments, date) FROM stdin;
    public       sveta    false    205   ��      �           0    0    ecomapp_order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('ecomapp_order_id_seq', 7, true);
            public       sveta    false    204            *          0    16637    ecomapp_order_products 
   TABLE DATA               D   COPY ecomapp_order_products (id, order_id, cartitem_id) FROM stdin;
    public       sveta    false    207   ��      �           0    0    ecomapp_order_products_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('ecomapp_order_products_id_seq', 8, true);
            public       sveta    false    206                      0    16575    ecomapp_page 
   TABLE DATA               =   COPY ecomapp_page (id, title, description, slug) FROM stdin;
    public       sveta    false    195   ��      �           0    0    ecomapp_page_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('ecomapp_page_id_seq', 4, true);
            public       sveta    false    194                       0    16586    ecomapp_product 
   TABLE DATA               �   COPY ecomapp_product (id, title, description, price, count, slug, available, date, album_cover, category_id, status) FROM stdin;
    public       sveta    false    197   Q�      �           0    0    ecomapp_product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('ecomapp_product_id_seq', 22, true);
            public       sveta    false    196            &          0    16618    ecomapp_productimage 
   TABLE DATA               ?   COPY ecomapp_productimage (id, images, product_id) FROM stdin;
    public       sveta    false    203   ��      �           0    0    ecomapp_productimage_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('ecomapp_productimage_id_seq', 34, true);
            public       sveta    false    202            "          0    16598    ecomapp_reduction 
   TABLE DATA               T   COPY ecomapp_reduction (id, title, reduction, description, image, date) FROM stdin;
    public       sveta    false    199   �      �           0    0    ecomapp_reduction_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('ecomapp_reduction_id_seq', 1, false);
            public       sveta    false    198            $          0    16610    ecomapp_reduction_product 
   TABLE DATA               J   COPY ecomapp_reduction_product (id, reduction_id, product_id) FROM stdin;
    public       sveta    false    201   %�      �           0    0     ecomapp_reduction_product_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('ecomapp_reduction_product_id_seq', 1, false);
            public       sveta    false    200            0          0    16768    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       sveta    false    213   B�      �           0    0    filer_clipboard_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('filer_clipboard_id_seq', 1, false);
            public       sveta    false    212            2          0    16776    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       sveta    false    215   _�      �           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       sveta    false    214            4          0    16784 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       sveta    false    217   |�      �           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 1, false);
            public       sveta    false    216            6          0    16795    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       sveta    false    219   ��      �           0    0    filer_folder_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('filer_folder_id_seq', 1, false);
            public       sveta    false    218            8          0    16807    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       sveta    false    221   ��      �           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       sveta    false    220            9          0    16815    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       sveta    false    222   ��      ;          0    16897    svetlyachokshop_category 
   TABLE DATA               5   COPY svetlyachokshop_category (id, slug) FROM stdin;
    public       sveta    false    224   ��      �           0    0    svetlyachokshop_category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('svetlyachokshop_category_id_seq', 1, false);
            public       sveta    false    223            I          0    16967 $   svetlyachokshop_category_translation 
   TABLE DATA               [   COPY svetlyachokshop_category_translation (id, language_code, name, master_id) FROM stdin;
    public       sveta    false    238   �      �           0    0 +   svetlyachokshop_category_translation_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('svetlyachokshop_category_translation_id_seq', 1, false);
            public       sveta    false    237            K          0    17033    svetlyachokshop_order 
   TABLE DATA               �   COPY svetlyachokshop_order (id, total_price, second_name, first_name, last_name, phone_number, email, buying_type, address, status, comments, date) FROM stdin;
    public       sveta    false    240   *�      �           0    0    svetlyachokshop_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('svetlyachokshop_order_id_seq', 1, false);
            public       sveta    false    239            =          0    16907    svetlyachokshop_page 
   TABLE DATA               F   COPY svetlyachokshop_page (id, is_publish, is_menu, slug) FROM stdin;
    public       sveta    false    226   G�      �           0    0    svetlyachokshop_page_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('svetlyachokshop_page_id_seq', 2, true);
            public       sveta    false    225            G          0    16956     svetlyachokshop_page_translation 
   TABLE DATA               �   COPY svetlyachokshop_page_translation (id, language_code, title, description, meta_description, meta_keywords, master_id) FROM stdin;
    public       sveta    false    236   d�      �           0    0 '   svetlyachokshop_page_translation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('svetlyachokshop_page_translation_id_seq', 1, false);
            public       sveta    false    235            ?          0    16915    svetlyachokshop_product 
   TABLE DATA               y   COPY svetlyachokshop_product (id, is_publish, price, count, slug, status, date, album_cover_id, category_id) FROM stdin;
    public       sveta    false    228   ��      �           0    0    svetlyachokshop_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('svetlyachokshop_product_id_seq', 1, false);
            public       sveta    false    227            E          0    16945 #   svetlyachokshop_product_translation 
   TABLE DATA               �   COPY svetlyachokshop_product_translation (id, language_code, title, description, meta_description, meta_keywords, master_id) FROM stdin;
    public       sveta    false    234   ��      �           0    0 *   svetlyachokshop_product_translation_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('svetlyachokshop_product_translation_id_seq', 1, false);
            public       sveta    false    233            C          0    16937    svetlyachokshop_productimage 
   TABLE DATA               I   COPY svetlyachokshop_productimage (id, image_id, product_id) FROM stdin;
    public       sveta    false    232   ��      �           0    0 #   svetlyachokshop_productimage_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('svetlyachokshop_productimage_id_seq', 1, false);
            public       sveta    false    231            A          0    16926    svetlyachokshop_question 
   TABLE DATA               L   COPY svetlyachokshop_question (id, name, email, question, date) FROM stdin;
    public       sveta    false    230   ��      �           0    0    svetlyachokshop_question_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('svetlyachokshop_question_id_seq', 1, false);
            public       sveta    false    229            �           2606    16536    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         sveta    false    176    176            �           2606    16476 ;   auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         sveta    false    178    178    178            �           2606    16429    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         sveta    false    178    178            �           2606    16419    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         sveta    false    176    176            �           2606    16462 6   auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         sveta    false    174    174    174            �           2606    16411    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         sveta    false    174    174            �           2606    16447    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         sveta    false    182    182            �           2606    16491 /   auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         sveta    false    182    182    182            �           2606    16437    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         sveta    false    180    180            �           2606    16455    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         sveta    false    184    184            �           2606    16505 >   auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         sveta    false    184    184    184            �           2606    16533    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         sveta    false    180    180            n           2606    17049    cart_cart_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_pkey;
       public         sveta    false    242    242            r           2606    17059    cart_item_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_pkey;
       public         sveta    false    244    244            �           2606    16519    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         sveta    false    186    186            �           2606    16403 1   django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         sveta    false    172    172    172            �           2606    16401    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         sveta    false    172    172            �           2606    16393    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         sveta    false    170    170            �           2606    16553    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         sveta    false    189    189            �           2606    16545 !   django_summernote_attachment_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.django_summernote_attachment DROP CONSTRAINT django_summernote_attachment_pkey;
       public         sveta    false    188    188                       2606    16722 3   ecomapp_cart_item_cart_id_cartitem_id_d064929b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ecomapp_cart_item
    ADD CONSTRAINT ecomapp_cart_item_cart_id_cartitem_id_d064929b_uniq UNIQUE (cart_id, cartitem_id);
 o   ALTER TABLE ONLY public.ecomapp_cart_item DROP CONSTRAINT ecomapp_cart_item_cart_id_cartitem_id_d064929b_uniq;
       public         sveta    false    211    211    211            "           2606    16658    ecomapp_cart_item_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY ecomapp_cart_item
    ADD CONSTRAINT ecomapp_cart_item_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.ecomapp_cart_item DROP CONSTRAINT ecomapp_cart_item_pkey;
       public         sveta    false    211    211                       2606    16650    ecomapp_cart_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY ecomapp_cart
    ADD CONSTRAINT ecomapp_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ecomapp_cart DROP CONSTRAINT ecomapp_cart_pkey;
       public         sveta    false    209    209            �           2606    16564    ecomapp_cartitem_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY ecomapp_cartitem
    ADD CONSTRAINT ecomapp_cartitem_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ecomapp_cartitem DROP CONSTRAINT ecomapp_cartitem_pkey;
       public         sveta    false    191    191            �           2606    16572    ecomapp_category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY ecomapp_category
    ADD CONSTRAINT ecomapp_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ecomapp_category DROP CONSTRAINT ecomapp_category_pkey;
       public         sveta    false    193    193                       2606    16634    ecomapp_order_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY ecomapp_order
    ADD CONSTRAINT ecomapp_order_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ecomapp_order DROP CONSTRAINT ecomapp_order_pkey;
       public         sveta    false    205    205                       2606    16702 9   ecomapp_order_products_order_id_cartitem_id_0b12f965_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ecomapp_order_products
    ADD CONSTRAINT ecomapp_order_products_order_id_cartitem_id_0b12f965_uniq UNIQUE (order_id, cartitem_id);
 z   ALTER TABLE ONLY public.ecomapp_order_products DROP CONSTRAINT ecomapp_order_products_order_id_cartitem_id_0b12f965_uniq;
       public         sveta    false    207    207    207                       2606    16642    ecomapp_order_products_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY ecomapp_order_products
    ADD CONSTRAINT ecomapp_order_products_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ecomapp_order_products DROP CONSTRAINT ecomapp_order_products_pkey;
       public         sveta    false    207    207                        2606    16583    ecomapp_page_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY ecomapp_page
    ADD CONSTRAINT ecomapp_page_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ecomapp_page DROP CONSTRAINT ecomapp_page_pkey;
       public         sveta    false    195    195                       2606    16595    ecomapp_product_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY ecomapp_product
    ADD CONSTRAINT ecomapp_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ecomapp_product DROP CONSTRAINT ecomapp_product_pkey;
       public         sveta    false    197    197                       2606    16623    ecomapp_productimage_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY ecomapp_productimage
    ADD CONSTRAINT ecomapp_productimage_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ecomapp_productimage DROP CONSTRAINT ecomapp_productimage_pkey;
       public         sveta    false    203    203            	           2606    16607    ecomapp_reduction_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY ecomapp_reduction
    ADD CONSTRAINT ecomapp_reduction_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.ecomapp_reduction DROP CONSTRAINT ecomapp_reduction_pkey;
       public         sveta    false    199    199                       2606    16615    ecomapp_reduction_product_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY ecomapp_reduction_product
    ADD CONSTRAINT ecomapp_reduction_product_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.ecomapp_reduction_product DROP CONSTRAINT ecomapp_reduction_product_pkey;
       public         sveta    false    201    201                       2606    16682 ?   ecomapp_reduction_product_reduction_id_product_id_033d8a9f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY ecomapp_reduction_product
    ADD CONSTRAINT ecomapp_reduction_product_reduction_id_product_id_033d8a9f_uniq UNIQUE (reduction_id, product_id);
 �   ALTER TABLE ONLY public.ecomapp_reduction_product DROP CONSTRAINT ecomapp_reduction_product_reduction_id_product_id_033d8a9f_uniq;
       public         sveta    false    201    201    201            $           2606    16773    filer_clipboard_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         sveta    false    213    213            )           2606    16781    filer_clipboarditem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         sveta    false    215    215            -           2606    16792    filer_file_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         sveta    false    217    217            4           2606    16814 )   filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         sveta    false    219    219    219            6           2606    16804    filer_folder_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         sveta    false    219    219            <           2606    16812    filer_folderpermission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         sveta    false    221    221            ?           2606    16819    filer_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         sveta    false    222    222            f           2606    17027 >   svetlyachokshop_category_language_code_master_id_ad5b3024_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_category_translation
    ADD CONSTRAINT svetlyachokshop_category_language_code_master_id_ad5b3024_uniq UNIQUE (language_code, master_id);
 �   ALTER TABLE ONLY public.svetlyachokshop_category_translation DROP CONSTRAINT svetlyachokshop_category_language_code_master_id_ad5b3024_uniq;
       public         sveta    false    238    238    238            A           2606    16902    svetlyachokshop_category_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY svetlyachokshop_category
    ADD CONSTRAINT svetlyachokshop_category_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.svetlyachokshop_category DROP CONSTRAINT svetlyachokshop_category_pkey;
       public         sveta    false    224    224            D           2606    16904 !   svetlyachokshop_category_slug_key 
   CONSTRAINT     n   ALTER TABLE ONLY svetlyachokshop_category
    ADD CONSTRAINT svetlyachokshop_category_slug_key UNIQUE (slug);
 d   ALTER TABLE ONLY public.svetlyachokshop_category DROP CONSTRAINT svetlyachokshop_category_slug_key;
       public         sveta    false    224    224            j           2606    16972 )   svetlyachokshop_category_translation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_category_translation
    ADD CONSTRAINT svetlyachokshop_category_translation_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.svetlyachokshop_category_translation DROP CONSTRAINT svetlyachokshop_category_translation_pkey;
       public         sveta    false    238    238            l           2606    17041    svetlyachokshop_order_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY svetlyachokshop_order
    ADD CONSTRAINT svetlyachokshop_order_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.svetlyachokshop_order DROP CONSTRAINT svetlyachokshop_order_pkey;
       public         sveta    false    240    240            F           2606    16912    svetlyachokshop_page_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY svetlyachokshop_page
    ADD CONSTRAINT svetlyachokshop_page_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.svetlyachokshop_page DROP CONSTRAINT svetlyachokshop_page_pkey;
       public         sveta    false    226    226            ^           2606    17017 >   svetlyachokshop_page_tra_language_code_master_id_fa528ba8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_page_translation
    ADD CONSTRAINT svetlyachokshop_page_tra_language_code_master_id_fa528ba8_uniq UNIQUE (language_code, master_id);
 �   ALTER TABLE ONLY public.svetlyachokshop_page_translation DROP CONSTRAINT svetlyachokshop_page_tra_language_code_master_id_fa528ba8_uniq;
       public         sveta    false    236    236    236            c           2606    16964 %   svetlyachokshop_page_translation_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY svetlyachokshop_page_translation
    ADD CONSTRAINT svetlyachokshop_page_translation_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.svetlyachokshop_page_translation DROP CONSTRAINT svetlyachokshop_page_translation_pkey;
       public         sveta    false    236    236            W           2606    17007 >   svetlyachokshop_product__language_code_master_id_e2cb622e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_product_translation
    ADD CONSTRAINT svetlyachokshop_product__language_code_master_id_e2cb622e_uniq UNIQUE (language_code, master_id);
 �   ALTER TABLE ONLY public.svetlyachokshop_product_translation DROP CONSTRAINT svetlyachokshop_product__language_code_master_id_e2cb622e_uniq;
       public         sveta    false    234    234    234            L           2606    16921    svetlyachokshop_product_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_product_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.svetlyachokshop_product DROP CONSTRAINT svetlyachokshop_product_pkey;
       public         sveta    false    228    228            O           2606    16923     svetlyachokshop_product_slug_key 
   CONSTRAINT     l   ALTER TABLE ONLY svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_product_slug_key UNIQUE (slug);
 b   ALTER TABLE ONLY public.svetlyachokshop_product DROP CONSTRAINT svetlyachokshop_product_slug_key;
       public         sveta    false    228    228            \           2606    16953 (   svetlyachokshop_product_translation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_product_translation
    ADD CONSTRAINT svetlyachokshop_product_translation_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.svetlyachokshop_product_translation DROP CONSTRAINT svetlyachokshop_product_translation_pkey;
       public         sveta    false    234    234            T           2606    16942 !   svetlyachokshop_productimage_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY svetlyachokshop_productimage
    ADD CONSTRAINT svetlyachokshop_productimage_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.svetlyachokshop_productimage DROP CONSTRAINT svetlyachokshop_productimage_pkey;
       public         sveta    false    232    232            Q           2606    16934    svetlyachokshop_question_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY svetlyachokshop_question
    ADD CONSTRAINT svetlyachokshop_question_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.svetlyachokshop_question DROP CONSTRAINT svetlyachokshop_question_pkey;
       public         sveta    false    230    230            �           1259    16537    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         sveta    false    176            �           1259    16477 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         sveta    false    178            �           1259    16478 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         sveta    false    178            �           1259    16463 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         sveta    false    174            �           1259    16493 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         sveta    false    182            �           1259    16492 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         sveta    false    182            �           1259    16507 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         sveta    false    184            �           1259    16506 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         sveta    false    184            �           1259    16534     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         sveta    false    180            o           1259    17070    cart_item_cart_id_157ecf5f    INDEX     L   CREATE INDEX cart_item_cart_id_157ecf5f ON cart_item USING btree (cart_id);
 .   DROP INDEX public.cart_item_cart_id_157ecf5f;
       public         sveta    false    244            p           1259    17071 "   cart_item_content_type_id_5737916f    INDEX     \   CREATE INDEX cart_item_content_type_id_5737916f ON cart_item USING btree (content_type_id);
 6   DROP INDEX public.cart_item_content_type_id_5737916f;
       public         sveta    false    244            �           1259    16530 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         sveta    false    186            �           1259    16531 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         sveta    false    186            �           1259    16555 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         sveta    false    189            �           1259    16554 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         sveta    false    189                       1259    16723 "   ecomapp_cart_item_cart_id_3893df62    INDEX     \   CREATE INDEX ecomapp_cart_item_cart_id_3893df62 ON ecomapp_cart_item USING btree (cart_id);
 6   DROP INDEX public.ecomapp_cart_item_cart_id_3893df62;
       public         sveta    false    211                        1259    16724 &   ecomapp_cart_item_cartitem_id_72c571d4    INDEX     d   CREATE INDEX ecomapp_cart_item_cartitem_id_72c571d4 ON ecomapp_cart_item USING btree (cartitem_id);
 :   DROP INDEX public.ecomapp_cart_item_cartitem_id_72c571d4;
       public         sveta    false    211            �           1259    16705 $   ecomapp_cartitem_product_id_8a5d2737    INDEX     `   CREATE INDEX ecomapp_cartitem_product_id_8a5d2737 ON ecomapp_cartitem USING btree (product_id);
 8   DROP INDEX public.ecomapp_cartitem_product_id_8a5d2737;
       public         sveta    false    191            �           1259    16659    ecomapp_category_slug_fb497ed3    INDEX     T   CREATE INDEX ecomapp_category_slug_fb497ed3 ON ecomapp_category USING btree (slug);
 2   DROP INDEX public.ecomapp_category_slug_fb497ed3;
       public         sveta    false    193            �           1259    16660 #   ecomapp_category_slug_fb497ed3_like    INDEX     m   CREATE INDEX ecomapp_category_slug_fb497ed3_like ON ecomapp_category USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.ecomapp_category_slug_fb497ed3_like;
       public         sveta    false    193                       1259    16704 +   ecomapp_order_products_cartitem_id_59d38aed    INDEX     n   CREATE INDEX ecomapp_order_products_cartitem_id_59d38aed ON ecomapp_order_products USING btree (cartitem_id);
 ?   DROP INDEX public.ecomapp_order_products_cartitem_id_59d38aed;
       public         sveta    false    207                       1259    16703 (   ecomapp_order_products_order_id_a23258a4    INDEX     h   CREATE INDEX ecomapp_order_products_order_id_a23258a4 ON ecomapp_order_products USING btree (order_id);
 <   DROP INDEX public.ecomapp_order_products_order_id_a23258a4;
       public         sveta    false    207                       1259    16661    ecomapp_page_slug_139b69e5    INDEX     L   CREATE INDEX ecomapp_page_slug_139b69e5 ON ecomapp_page USING btree (slug);
 .   DROP INDEX public.ecomapp_page_slug_139b69e5;
       public         sveta    false    195                       1259    16662    ecomapp_page_slug_139b69e5_like    INDEX     e   CREATE INDEX ecomapp_page_slug_139b69e5_like ON ecomapp_page USING btree (slug varchar_pattern_ops);
 3   DROP INDEX public.ecomapp_page_slug_139b69e5_like;
       public         sveta    false    195                       1259    16670 $   ecomapp_product_category_id_14696d36    INDEX     `   CREATE INDEX ecomapp_product_category_id_14696d36 ON ecomapp_product USING btree (category_id);
 8   DROP INDEX public.ecomapp_product_category_id_14696d36;
       public         sveta    false    197                       1259    16668    ecomapp_product_slug_53963d3f    INDEX     R   CREATE INDEX ecomapp_product_slug_53963d3f ON ecomapp_product USING btree (slug);
 1   DROP INDEX public.ecomapp_product_slug_53963d3f;
       public         sveta    false    197                       1259    16669 "   ecomapp_product_slug_53963d3f_like    INDEX     k   CREATE INDEX ecomapp_product_slug_53963d3f_like ON ecomapp_product USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.ecomapp_product_slug_53963d3f_like;
       public         sveta    false    197                       1259    16690 (   ecomapp_productimage_product_id_53dbe922    INDEX     h   CREATE INDEX ecomapp_productimage_product_id_53dbe922 ON ecomapp_productimage USING btree (product_id);
 <   DROP INDEX public.ecomapp_productimage_product_id_53dbe922;
       public         sveta    false    203                       1259    16684 -   ecomapp_reduction_product_product_id_87cd8208    INDEX     r   CREATE INDEX ecomapp_reduction_product_product_id_87cd8208 ON ecomapp_reduction_product USING btree (product_id);
 A   DROP INDEX public.ecomapp_reduction_product_product_id_87cd8208;
       public         sveta    false    201                       1259    16683 /   ecomapp_reduction_product_reduction_id_70990d12    INDEX     v   CREATE INDEX ecomapp_reduction_product_reduction_id_70990d12 ON ecomapp_reduction_product USING btree (reduction_id);
 C   DROP INDEX public.ecomapp_reduction_product_reduction_id_70990d12;
       public         sveta    false    201            %           1259    16884     filer_clipboard_user_id_b52ff0bc    INDEX     X   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         sveta    false    213            &           1259    16825 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     j   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         sveta    false    215            '           1259    16878 $   filer_clipboarditem_file_id_06196f80    INDEX     `   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         sveta    false    215            *           1259    16860    filer_file_folder_id_af803bbb    INDEX     R   CREATE INDEX filer_file_folder_id_af803bbb ON filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         sveta    false    217            +           1259    16866    filer_file_owner_id_b9e32671    INDEX     P   CREATE INDEX filer_file_owner_id_b9e32671 ON filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         sveta    false    217            .           1259    16872 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     h   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         sveta    false    217            /           1259    16839    filer_folder_level_b631d28a    INDEX     N   CREATE INDEX filer_folder_level_b631d28a ON filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         sveta    false    219            0           1259    16836    filer_folder_lft_2c2b69f1    INDEX     J   CREATE INDEX filer_folder_lft_2c2b69f1 ON filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         sveta    false    219            1           1259    16840    filer_folder_owner_id_be530fb4    INDEX     T   CREATE INDEX filer_folder_owner_id_be530fb4 ON filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         sveta    false    219            2           1259    16841    filer_folder_parent_id_308aecda    INDEX     V   CREATE INDEX filer_folder_parent_id_308aecda ON filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         sveta    false    219            7           1259    16837    filer_folder_rght_34946267    INDEX     L   CREATE INDEX filer_folder_rght_34946267 ON filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         sveta    false    219            8           1259    16838    filer_folder_tree_id_b016223c    INDEX     R   CREATE INDEX filer_folder_tree_id_b016223c ON filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         sveta    false    219            9           1259    16857 )   filer_folderpermission_folder_id_5d02f1da    INDEX     j   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         sveta    false    221            :           1259    16858 (   filer_folderpermission_group_id_8901bafa    INDEX     h   CREATE INDEX filer_folderpermission_group_id_8901bafa ON filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         sveta    false    221            =           1259    16859 '   filer_folderpermission_user_id_7673d4b6    INDEX     f   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         sveta    false    221            d           1259    17029 4   svetlyachokshop_category_language_code_4aa6255a_like    INDEX     �   CREATE INDEX svetlyachokshop_category_language_code_4aa6255a_like ON svetlyachokshop_category_translation USING btree (language_code varchar_pattern_ops);
 H   DROP INDEX public.svetlyachokshop_category_language_code_4aa6255a_like;
       public         sveta    false    238            B           1259    16973 +   svetlyachokshop_category_slug_080bf41a_like    INDEX     }   CREATE INDEX svetlyachokshop_category_slug_080bf41a_like ON svetlyachokshop_category USING btree (slug varchar_pattern_ops);
 ?   DROP INDEX public.svetlyachokshop_category_slug_080bf41a_like;
       public         sveta    false    224            g           1259    17028 ;   svetlyachokshop_category_translation_language_code_4aa6255a    INDEX     �   CREATE INDEX svetlyachokshop_category_translation_language_code_4aa6255a ON svetlyachokshop_category_translation USING btree (language_code);
 O   DROP INDEX public.svetlyachokshop_category_translation_language_code_4aa6255a;
       public         sveta    false    238            h           1259    17030 7   svetlyachokshop_category_translation_master_id_747b1747    INDEX     �   CREATE INDEX svetlyachokshop_category_translation_master_id_747b1747 ON svetlyachokshop_category_translation USING btree (master_id);
 K   DROP INDEX public.svetlyachokshop_category_translation_master_id_747b1747;
       public         sveta    false    238            G           1259    16974 "   svetlyachokshop_page_slug_18953634    INDEX     \   CREATE INDEX svetlyachokshop_page_slug_18953634 ON svetlyachokshop_page USING btree (slug);
 6   DROP INDEX public.svetlyachokshop_page_slug_18953634;
       public         sveta    false    226            H           1259    16975 '   svetlyachokshop_page_slug_18953634_like    INDEX     u   CREATE INDEX svetlyachokshop_page_slug_18953634_like ON svetlyachokshop_page USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.svetlyachokshop_page_slug_18953634_like;
       public         sveta    false    226            _           1259    17018 7   svetlyachokshop_page_translation_language_code_56e28098    INDEX     �   CREATE INDEX svetlyachokshop_page_translation_language_code_56e28098 ON svetlyachokshop_page_translation USING btree (language_code);
 K   DROP INDEX public.svetlyachokshop_page_translation_language_code_56e28098;
       public         sveta    false    236            `           1259    17019 <   svetlyachokshop_page_translation_language_code_56e28098_like    INDEX     �   CREATE INDEX svetlyachokshop_page_translation_language_code_56e28098_like ON svetlyachokshop_page_translation USING btree (language_code varchar_pattern_ops);
 P   DROP INDEX public.svetlyachokshop_page_translation_language_code_56e28098_like;
       public         sveta    false    236            a           1259    17020 3   svetlyachokshop_page_translation_master_id_c469d24c    INDEX     ~   CREATE INDEX svetlyachokshop_page_translation_master_id_c469d24c ON svetlyachokshop_page_translation USING btree (master_id);
 G   DROP INDEX public.svetlyachokshop_page_translation_master_id_c469d24c;
       public         sveta    false    236            I           1259    16987 /   svetlyachokshop_product_album_cover_id_fba8b6e1    INDEX     v   CREATE INDEX svetlyachokshop_product_album_cover_id_fba8b6e1 ON svetlyachokshop_product USING btree (album_cover_id);
 C   DROP INDEX public.svetlyachokshop_product_album_cover_id_fba8b6e1;
       public         sveta    false    228            J           1259    16988 ,   svetlyachokshop_product_category_id_009016d8    INDEX     p   CREATE INDEX svetlyachokshop_product_category_id_009016d8 ON svetlyachokshop_product USING btree (category_id);
 @   DROP INDEX public.svetlyachokshop_product_category_id_009016d8;
       public         sveta    false    228            M           1259    16986 *   svetlyachokshop_product_slug_1f559d55_like    INDEX     {   CREATE INDEX svetlyachokshop_product_slug_1f559d55_like ON svetlyachokshop_product USING btree (slug varchar_pattern_ops);
 >   DROP INDEX public.svetlyachokshop_product_slug_1f559d55_like;
       public         sveta    false    228            X           1259    17008 :   svetlyachokshop_product_translation_language_code_0d9b7a58    INDEX     �   CREATE INDEX svetlyachokshop_product_translation_language_code_0d9b7a58 ON svetlyachokshop_product_translation USING btree (language_code);
 N   DROP INDEX public.svetlyachokshop_product_translation_language_code_0d9b7a58;
       public         sveta    false    234            Y           1259    17009 ?   svetlyachokshop_product_translation_language_code_0d9b7a58_like    INDEX     �   CREATE INDEX svetlyachokshop_product_translation_language_code_0d9b7a58_like ON svetlyachokshop_product_translation USING btree (language_code varchar_pattern_ops);
 S   DROP INDEX public.svetlyachokshop_product_translation_language_code_0d9b7a58_like;
       public         sveta    false    234            Z           1259    17010 6   svetlyachokshop_product_translation_master_id_7747d603    INDEX     �   CREATE INDEX svetlyachokshop_product_translation_master_id_7747d603 ON svetlyachokshop_product_translation USING btree (master_id);
 J   DROP INDEX public.svetlyachokshop_product_translation_master_id_7747d603;
       public         sveta    false    234            R           1259    16999 .   svetlyachokshop_productimage_image_id_61059c47    INDEX     t   CREATE INDEX svetlyachokshop_productimage_image_id_61059c47 ON svetlyachokshop_productimage USING btree (image_id);
 B   DROP INDEX public.svetlyachokshop_productimage_image_id_61059c47;
       public         sveta    false    232            U           1259    17000 0   svetlyachokshop_productimage_product_id_fa142723    INDEX     x   CREATE INDEX svetlyachokshop_productimage_product_id_fa142723 ON svetlyachokshop_productimage USING btree (product_id);
 D   DROP INDEX public.svetlyachokshop_productimage_product_id_fa142723;
       public         sveta    false    232            u           2606    16470 8   auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       sveta    false    174    178    3025            t           2606    16465 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       sveta    false    3030    178    176            s           2606    16456 5   auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       sveta    false    172    3020    174            w           2606    16485 3   auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       sveta    false    176    182    3030            v           2606    16480 1   auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       sveta    false    3038    182    180            y           2606    16499 8   auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       sveta    false    174    184    3025            x           2606    16494 ;   auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       sveta    false    180    3038    184            �           2606    17060 *   cart_item_cart_id_157ecf5f_fk_cart_cart_id    FK CONSTRAINT     �   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id;
       public       sveta    false    244    3182    242            �           2606    17065 <   cart_item_content_type_id_5737916f_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id;
       public       sveta    false    3020    172    244            z           2606    16520 6   django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       sveta    false    186    172    3020            {           2606    16525 1   django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       sveta    false    186    180    3038            �           2606    16711 5   ecomapp_cart_item_cart_id_3893df62_fk_ecomapp_cart_id    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_cart_item
    ADD CONSTRAINT ecomapp_cart_item_cart_id_3893df62_fk_ecomapp_cart_id FOREIGN KEY (cart_id) REFERENCES ecomapp_cart(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.ecomapp_cart_item DROP CONSTRAINT ecomapp_cart_item_cart_id_3893df62_fk_ecomapp_cart_id;
       public       sveta    false    209    3100    211            �           2606    16716 =   ecomapp_cart_item_cartitem_id_72c571d4_fk_ecomapp_cartitem_id    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_cart_item
    ADD CONSTRAINT ecomapp_cart_item_cartitem_id_72c571d4_fk_ecomapp_cartitem_id FOREIGN KEY (cartitem_id) REFERENCES ecomapp_cartitem(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ecomapp_cart_item DROP CONSTRAINT ecomapp_cart_item_cartitem_id_72c571d4_fk_ecomapp_cartitem_id;
       public       sveta    false    191    211    3065            |           2606    16706 :   ecomapp_cartitem_product_id_8a5d2737_fk_ecomapp_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_cartitem
    ADD CONSTRAINT ecomapp_cartitem_product_id_8a5d2737_fk_ecomapp_product_id FOREIGN KEY (product_id) REFERENCES ecomapp_product(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.ecomapp_cartitem DROP CONSTRAINT ecomapp_cartitem_product_id_8a5d2737_fk_ecomapp_product_id;
       public       sveta    false    3077    191    197            �           2606    16696 6   ecomapp_order_produc_cartitem_id_59d38aed_fk_ecomapp_c    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_order_products
    ADD CONSTRAINT ecomapp_order_produc_cartitem_id_59d38aed_fk_ecomapp_c FOREIGN KEY (cartitem_id) REFERENCES ecomapp_cartitem(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.ecomapp_order_products DROP CONSTRAINT ecomapp_order_produc_cartitem_id_59d38aed_fk_ecomapp_c;
       public       sveta    false    191    207    3065            �           2606    16691 <   ecomapp_order_products_order_id_a23258a4_fk_ecomapp_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_order_products
    ADD CONSTRAINT ecomapp_order_products_order_id_a23258a4_fk_ecomapp_order_id FOREIGN KEY (order_id) REFERENCES ecomapp_order(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ecomapp_order_products DROP CONSTRAINT ecomapp_order_products_order_id_a23258a4_fk_ecomapp_order_id;
       public       sveta    false    205    3092    207            }           2606    16663 ;   ecomapp_product_category_id_14696d36_fk_ecomapp_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_product
    ADD CONSTRAINT ecomapp_product_category_id_14696d36_fk_ecomapp_category_id FOREIGN KEY (category_id) REFERENCES ecomapp_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.ecomapp_product DROP CONSTRAINT ecomapp_product_category_id_14696d36_fk_ecomapp_category_id;
       public       sveta    false    197    193    3068            �           2606    16685 >   ecomapp_productimage_product_id_53dbe922_fk_ecomapp_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_productimage
    ADD CONSTRAINT ecomapp_productimage_product_id_53dbe922_fk_ecomapp_product_id FOREIGN KEY (product_id) REFERENCES ecomapp_product(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ecomapp_productimage DROP CONSTRAINT ecomapp_productimage_product_id_53dbe922_fk_ecomapp_product_id;
       public       sveta    false    3077    203    197                       2606    16676 5   ecomapp_reduction_pr_product_id_87cd8208_fk_ecomapp_p    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_reduction_product
    ADD CONSTRAINT ecomapp_reduction_pr_product_id_87cd8208_fk_ecomapp_p FOREIGN KEY (product_id) REFERENCES ecomapp_product(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ecomapp_reduction_product DROP CONSTRAINT ecomapp_reduction_pr_product_id_87cd8208_fk_ecomapp_p;
       public       sveta    false    201    197    3077            ~           2606    16671 7   ecomapp_reduction_pr_reduction_id_70990d12_fk_ecomapp_r    FK CONSTRAINT     �   ALTER TABLE ONLY ecomapp_reduction_product
    ADD CONSTRAINT ecomapp_reduction_pr_reduction_id_70990d12_fk_ecomapp_r FOREIGN KEY (reduction_id) REFERENCES ecomapp_reduction(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ecomapp_reduction_product DROP CONSTRAINT ecomapp_reduction_pr_reduction_id_70990d12_fk_ecomapp_r;
       public       sveta    false    201    199    3081            �           2606    16885 0   filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       sveta    false    180    213    3038            �           2606    16820 ?   filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       sveta    false    213    215    3108            �           2606    16879 5   filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       sveta    false    217    215    3117            �           2606    16861 0   filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       sveta    false    217    219    3126            �           2606    16867 ,   filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       sveta    false    3038    217    180            �           2606    16873 5   filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       sveta    false    172    217    3020            �           2606    16826 .   filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       sveta    false    180    219    3038            �           2606    16831 2   filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       sveta    false    219    219    3126            �           2606    16842 <   filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       sveta    false    219    221    3126            �           2606    16847 9   filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       sveta    false    176    221    3030            �           2606    16852 7   filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       sveta    false    180    221    3038            �           2606    16890 1   filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       sveta    false    3117    222    217            �           2606    17021 4   svetlyachokshop_cate_master_id_747b1747_fk_svetlyach    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_category_translation
    ADD CONSTRAINT svetlyachokshop_cate_master_id_747b1747_fk_svetlyach FOREIGN KEY (master_id) REFERENCES svetlyachokshop_category(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.svetlyachokshop_category_translation DROP CONSTRAINT svetlyachokshop_cate_master_id_747b1747_fk_svetlyach;
       public       sveta    false    224    3137    238            �           2606    17011 4   svetlyachokshop_page_master_id_c469d24c_fk_svetlyach    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_page_translation
    ADD CONSTRAINT svetlyachokshop_page_master_id_c469d24c_fk_svetlyach FOREIGN KEY (master_id) REFERENCES svetlyachokshop_page(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.svetlyachokshop_page_translation DROP CONSTRAINT svetlyachokshop_page_master_id_c469d24c_fk_svetlyach;
       public       sveta    false    3142    226    236            �           2606    16976 9   svetlyachokshop_prod_album_cover_id_fba8b6e1_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_prod_album_cover_id_fba8b6e1_fk_filer_ima FOREIGN KEY (album_cover_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.svetlyachokshop_product DROP CONSTRAINT svetlyachokshop_prod_album_cover_id_fba8b6e1_fk_filer_ima;
       public       sveta    false    3135    222    228            �           2606    16981 6   svetlyachokshop_prod_category_id_009016d8_fk_svetlyach    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_product
    ADD CONSTRAINT svetlyachokshop_prod_category_id_009016d8_fk_svetlyach FOREIGN KEY (category_id) REFERENCES svetlyachokshop_category(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.svetlyachokshop_product DROP CONSTRAINT svetlyachokshop_prod_category_id_009016d8_fk_svetlyach;
       public       sveta    false    3137    228    224            �           2606    16989 3   svetlyachokshop_prod_image_id_61059c47_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_productimage
    ADD CONSTRAINT svetlyachokshop_prod_image_id_61059c47_fk_filer_ima FOREIGN KEY (image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.svetlyachokshop_productimage DROP CONSTRAINT svetlyachokshop_prod_image_id_61059c47_fk_filer_ima;
       public       sveta    false    3135    222    232            �           2606    17001 4   svetlyachokshop_prod_master_id_7747d603_fk_svetlyach    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_product_translation
    ADD CONSTRAINT svetlyachokshop_prod_master_id_7747d603_fk_svetlyach FOREIGN KEY (master_id) REFERENCES svetlyachokshop_product(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.svetlyachokshop_product_translation DROP CONSTRAINT svetlyachokshop_prod_master_id_7747d603_fk_svetlyach;
       public       sveta    false    228    234    3148            �           2606    16994 5   svetlyachokshop_prod_product_id_fa142723_fk_svetlyach    FK CONSTRAINT     �   ALTER TABLE ONLY svetlyachokshop_productimage
    ADD CONSTRAINT svetlyachokshop_prod_product_id_fa142723_fk_svetlyach FOREIGN KEY (product_id) REFERENCES svetlyachokshop_product(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.svetlyachokshop_productimage DROP CONSTRAINT svetlyachokshop_prod_product_id_fa142723_fk_svetlyach;
       public       sveta    false    232    3148    228                  x������ � �            x������ � �      	   �  x���K��6���)|�@E��r� ��x�펬N0��LY%��&�y y����"��*Ip�,��_��ԧ�y����k�C�F���w��=j����|l�LxhO� A�D`�����k���Q�C��w�kw9+�т.�8�:Ɩ\�`Q c+�(H��quTy�/�*u�o	�Q"�5� bHJ �
�N���k۫�	�j���q_�|�
z7n�W��2�y9���7�ʝ\�W4T\�FA������8o����\�BT}m�W-�`|�F�wbPg��m'�E��u�����M��w����������*�i6C{��f~�KĽ�,	gK���,��qr���e7>��L�w�7����]|R�7oslu*�q�(��	�ܮ�vu�D����]9k�ez;~���ۂw�������~Щ��
�-<����@3�X/5����'��_�wss������L��-f\����K��1+.a������[�A�GQ �h���;d�G���%���"���Y~�H�K�M?캡�W`Н�0?�L�Spѕ�htc@��.X-*H�8�'Ka�6ӤsX�	&E�Fʘ������=��٫�������<>O?(������ȳ���Q��{�Y�z��wq��5�89��f����~�ъ΅�$��9-�#iT���G�N('�=�S��ť�
�(���`���
�6\b�o�/q�Z%^�RJuW�(6�Ɗ�f_Tn�EK��h ��.|��Uwj�i6�֥pW�F���
*�sW�w2�.�����V~�rO��"$h@Jx���)fb�$����;t}�l؝��Н���y��wq�7uY�)��%�u�Z⹽ǻU'��1>�U*���>�V!;^fb�np(�G��"U�[� �G&�#�:��I\$� �/�,04�tU�f��IW�j1�tU/f�a�H�	���(�'��Q�p;�#���о#R�=����nv+O�L�:!P�l����Dm�U��˛��d�L]�SnV�S���O^��a�*y�����:J֐�I��"[C"���a�5��א0#�i��!!S�8�ц[��	�ڗ����[H�϶+P>+��.�Xs�v�k�
�S����@���[�@X��[�������@�viM���I ��H�	 l!��O#�R��h���IcW         �   x�3�,H�NI3�/�H425S145 3#��<�b�\���\���
�$���в<��Ĥ*�<���J����[N#CK]K]C3Cs++3=C3Kc3m��Ĕ��<�/l�8�bӅ�6\�{a煉�[.l���Y\�Z�S��������������ꐞ�������4�j������������|�=... YG�            x������ � �            x������ � �      M      x������ � �      O      x������ � �            x�ͼ��,I���~�D��!�m����=|�&>��s��"%DHЦ�	z�"A�T��|��o$��̼ͬ�YY�ŭƿ��o��;��y���( $ �
B�c�{{�����͇���?~�~��o��?�Ç���ϋ�/���4K�~�տ����������P�{�x�aE��B����7��}�����A~�����B(�~~�Iʨ+>}�WY���ۿ�:����?��6���#�;�Q�Yl�7�a?jG��	�aFb��q����w8�B$��0��`��Gv���o��	�(���>}�����?���>��dy��rY���_�uھK�~���9gS�wK�-�����P-�_C}�PVy����c�.i��@���E��%�"s�J���d���(�:�A&+�.��p��'�rD������n�]X��'����� �3��	�t�����	��c�-\��Ԝ� i9�=[@�QM��W�Q-I�g��
�QW���1`UҴG�A>��u9�0���)����U�ۢ5T��n�b5�u	��ƃ�y6�UW%���k�{y4n/��׍g�-�s���xs�d�Q����	�|��:?]gG�0A��:f�����(���S2"���|�����������)�C �B�O]�)!qW��cI+[%'��NQ�vL7*Rȸ�k��7XΘ]���F�\M=]��|�Qǡ���j��jM �\�"N����%�u��D.�=h��&~���ɯƛ`��\��kS�]Oo%fAl쟙 :g ?�|���P
�	�O���]�%ͅL�^��^�2"��aEL汄��=tJ����W-*�\�����Kj�A.|u��Z��v�?t�ۯ��pg_8����cg��sA���i�8 #X����B��f���Hj���oq�鞡���$M�����$r��6�G�#��w0�v�>��l������o��O11��AI���y5�K���N2k��>|��x�
���{~G�$��H�?����:�6m0����ɣ�� ������0�=J��I��П`��ێ����~ͦ����_�'���!��D|��������|���>����|�o��7������fs2U�R����a����?�N���@��0��,�a�B��|���Q��B�Q�	!�'�"� (��0�9(��i(����@��,}�s�,>��G�}���5�3A?��O3��������S@��	B�b�_~���}��o~��t�J������vp� �B�[����_v{�OQN�"P����q&ђ�t�`�����&����?��/���=�r���7�MZ�IK���)A�	�;��'3+L���0yzG���y��)�,�왁0�D	��(~�R��95Γ���Le�.���J�!��ý&�����]�9�T�E�"�=���OE��Ɔ��F�h���~��g���m李ۂ�<��Md�A}��'��'Qĺ�_3K� ��~+ �I�0�]���j#�3ؗ��%�������Kk�@I�ՃΊ�n�3���E#���@$�wz��rc�� _�4{��XZ��?|2��/Z�%Or���$2�dm/�	6��Mz�o���Zs�	~�N{�`����q'oO��	��:{���!8���6N���W_}�w�����yf����\�ZMp��'*���#stv����Ե�ܦ��Z�`ŠIXl��/\y,̮��d�]K�2ё�|N���L�)ShfW���t�d�۵��D�����:�K���t�zyGt�\�t5�|�Z�>�Կ�Шh<p^��*|안�޺�&�2�*���Bb��T�ǫ�H��,s�ɏ)e��QJ;	wu��n��pc�1��k����:ͩN����R����Q�ETy6F��ʯh�]�+�Ii�m��Ui���<H�6�0����Pooe˗\D�G�Q���λ4I�~1D �dh/�d��]��^J$dN��﨏��������O�j�1>]���(IT�^'p�__2r��n��}V�u�b���0�.�y�U[ ���E4P�j��Q,Ʌn���)�w�W���+y���Y��fkaL}f�#�m�_¦<Z^7�Da����sQ�v�a�w��[E��0�O|��Fz��C���o9�7�\_���7B���C�N�ܕA�d�(Ș��̊�����ZP��^��4���~���{?���I�!���*@�_hO ���;�P(�#��w(�g(gYs�@�}WM��3��U_�{?�`�������;0}[>���o�ͷW~{z����/��������������kB��{B�鬹H��r�??��	����0���`�{�~��~<'�8,�sP�m����R�O-�W�����ۿ��/���������O�t�>����(�M��?�����"ofGA�S(B�s�Ϳ�������Wg�߮��U�09�#?�0��rЅ����#?�ǫѮ�j���qY��Q��'ǧrr��䳁�����Ae��4����@�եS��]�e�cT�+�wQ��2W��b�^sn��A��-���W��*z��0`'s�<Tb�X9��H�7 d�L�ȐRS�����:d�'�,]^JY�N��ox]�Xc�\���lb���,�����P��ػhCc�{��̚��- H%4VW�SY�����$��lI��+4^�[8��&Y����*�������Q��9H8���;k�������s&����sƄĵ�<6����n7�4�8���@�6\�p<D%�~\u?����W!��۳��[�B-o��4>��
I#5�����t����S�6Y�"���8`^[˃���d%�
���3CU�%�r��A�R/R��|���8��hB�����V�����Q\�����V�F"�S�vݐ�g��E^��+��т�<7��b���S��L	�`d��M�$�6�x0�K��=p��!=p 2�>�8j�¿��Y�#���Y�'�=�Fi��ϔ�7�Q�#���J�vL!��q�&���N�{���b;��EV�Zy?��x]ȅ#\_�u�H\%d]��2�Q��[��:���&��P��L9'������'Ph`�"|����V}_���y� S����F�7�� aX�� Z�� �3��={毹�'�G����.��2��)�.*��R�=�2���|DX]s#Մh�M
K ��{I%�G=k�'í�tȎ
!n�q�d�$�#*j$]����`�Py:{If%9N#��5���\��v�g�-�/9��A�e4$���>�'6�?=<�.:I"���eyI���݄��񒻃/�e�!��^�~*����q�'����B��]�g��,5������H� �y�s��X�Yl���q%���`��w*���XL���H+�M\��Xd��+Ǣm�v0���|k���Q�z�RHˢ�R:�bKn���CW�XMUE�U��I��F� �xr�rm� � �'b����7"FN"&�Qot?>���_�E_2�$+�10t�K��݅�$�l���;N���Β�p*��A>����S��W�N��o	���Q��/� /�Í!�7~2�S�(,��eG܎��x(`�j�bj1૎�\^V����+�e�k�zZnq�φ�Ŏ�J#�6�в&.�l�u���i��H�4ɡ�@0
�(xo��Zn,;��`Յ�T�zh�o,���R{�vP��a7|�a��K��n�C
R��<
P����=�h��dSQ}�����UJ��T�Z���s���~� ݛ*S{S�/Ȉ4y�^8��*�8��!�%Cu����BW��p�'�t���d@@�Y#Z����&]�s��3ŭ�%
�Q.@�i�^��	<�|���h�ú#�,Tt�3*���i���eb#`?��6p��k
�6���|�����p�2E����2�ܟ%S+pת>��S�%ڟ���#S    �=�J]nMV�zxI��W�òL��H<�ۘBL��6)��r�<ZUyrY{̶rپ�z1�WtG����8G������`�G&���ah�=�G2Bm7���R��X.bh2q(ZKrH�,��s`�����V��1��$�����4v�O���K�ȼrԷG4�gE��`�E���H� c�:Xz�
_���f٠Y&s�%Pr��t&պ���T�g����]�xϿ�F�����p�{����4b�V��g�;מ�e	Z`���N;E�*��
��K9�Vc�����'iz8�I������a��n�=�5�{�i*ՙ���|4<*x�yg�xV��i�ґ�3���5�r�yL�W+�EO�Br�4}�A�\h��wBO>Y�~ڟg�/�Ț=�(�mRhk �	By_IO'"�ƴ�J����;���/�.!V���0MG���(w*&we;(��69U�3��ZD�^�-5�]~W�XE�&$��Ǟ�(�����"�1d��*{cyާ-/�b�-S�΋b��O.O2����V��Zb�.�hy��.��[�$����Ȇ6z�H��*�;nB,eد���1	ܺ�0���n<�7O�����b�6�+Mml*y ���}�<
/~U;O(Ϻ'O� U)�Az��u֧2#�\y�'zO��r��m��Up�õ�:ܷir.�_{�ג}��}$��䧿	,=d�R�;��s8�K
α��z��+��A������4<�W���n�}���~����n�9�X"�>K�*��m�i�xC��������{HY��;h��h�8zj�ڔ�_�R/��;17��U��K�<��Ý���^C��뀕K��07�#	D�|1*΍^�ا�_��|=��y��f�C����\����4Z���@ D]��ڂ�F�Bl����%�(7�*�Ed�p��BY��^�v�v��#�n�J�����C#͗���*�Llޢ0���-2��N�drZ	�A�k
���C�N;�@8��8�Xt���Amԅ
�d~b�t~�/�J��V�.�m�^]�]΢(��H��Ey�#��g�_i
�"�G�[�8��grMt��|�I4����T�=��]ʤW8#y�Ӳ�M6���A'ԝ�K�;z�	&7X_�.�h��<���� �mE�&�WweSd���V��j�X��5�#��".��.����~4�����WY��E�H�~�ԧ]JA��75sHb�� ��(*T,@u�y-Howd�5=,檈Fk�NC
xYX2��SF�C׹�)&ğ���(�'�}i	��PCO;ދ*A�cRk��dTi�7�y}]S^3��,���n�ny!�.܃@K6|��
�x6nVG�%�<��
n�[�	MU4~RY���C�&�&5Wה�QgŬT��#~�?Ͳ�LzW֔8���P���a�0�k-��1BW���cAd��S���s��v�<�^�
��Y�BJ^�	�5����o�v��<���%���c�c���i1������VX��I�Ӻ�U��p��c�]������/-2x��"?�@�=��=�%���%��oP��6�����L� ?>��~������yŔT	��R�f��+�c�8���С���B��&&
�`�I����� �Zzx9�T��u1��Z�KE2!1�#���^�� ��qb�j����ED���QI�D�U�dY�X����.��X�_�Q�����9���{}�D}���}�{����'L=^�ptt��U�{r�n�Xj��K݄9ȻJ�|K�G5��Hܭ�ݏpDe��),.�}�KB�g�K�
�=\�w���h`Q ��f��� 멙���{A �ZS5_��N$�C�K3 д1�`c�誒�X���iaz�*��Eq߽�@�^�A���x���F�۞jQ��){�ݩyb�1F��F�(�Vw����[�w�)ŋ�/娫��*��b�U�� v������h_�9�1wǡǣڤ�C��P�q�VD�>�I�J��«	�k�;�@�(�67{��6��5�.��/�Z)�0��p:�@���
w}S_�̭�T�"E*�{��d��n+b2�e�b�֣}n�W&��q�-9�����6ڱ�%���`�fJ���g�c_Z�q�8ax�Qo���r��t�������7�mVu}&�W
A�k̚F��t��އ  ��I��m�u��[Ģ��'Q��1.<��Bn�������H��n.V�N����#D1�� ߻���C�]���=��=2h=�=�_u0[<�vB�/L0�W��[�U�{��=��B�*����S�ȘoJT�$FА)n
����(����mÈ������YG���d����w
h:J1�X���:d��:lN�"��}5��^���6�ؓ t�J1�}�'].�� ����ۦ/���7��+��3����֠L���R�Tk��;S^���B`	^�kݖ�21��e6U4�hԐ�wJ.���R�+OQ�K��������[SWd��S�JM�����E�z��#?�V
���(r	3 $��N�;��
:4���h/uQ�BE1��CnŔ0��{���e�Éi��q�������~y41���S� ��/Π�
�0�e3�>L{��K0�:��������>Рm��*YD��MH:��CQ�++.��t���O$�R�lP�Ɵ>}&
L���P�ʓ�w�4�Oݝ�y���N����>4\e8�u-M[��>L:�du��:��98��h�1S��i�DϽ ��d
�ܻ��lv4o�::W���.ק��qzVi��uicu��ۚ��]����W��q��+�NMI�U�>����=�����*� &9c���xb϶�.��F̌�mP��z�؉�S?2�(�S�R�����5���hs��y\e���g�'�G &F|�!q��q�2���W��O9��=��=�Ni?�+O�&^���������M��:!5.w�L�,
.��S�"sf�k�<��R|O��@��w��ԯm��'� A���r���
G�_�<�]k����m��q����Osӝt!,��^�yZ5�Hp�[�mOJI�U�f�W|$�1�I��2�!��De��얼����YncZ+�+����>����d�`�D�'�t��Tj�`I��ʏ*���X��Ԏ;�.t"Ey~��HY8`-��<�~�AبV�'G�sb��B��}҆���E�!<]"������XBܭ�H��K�2K"N[���S���k�U����Gg[9E���bϸ��k8t:=��М.��Q���L_�$�kY���xa+�2f;",���&�[�#V����~�Y`��{�|�(��z���Azc�1~�����=�G,6=]�Y�%Y�墶�ۖ;�#�ͮ�ޱ���&/����=@/����	�r������A
P���5o֢~�JЯ񌼡��/���xT���s{���a���zS�L�d�I�J_{ *B�̮eW�KM:�q{揎^f6��1�Xcv�v
�	�/j�"X�P�J�K@]5J.{sQ��T�� <E_�S����ݽ�8���W"��l{mM���,Ch�M('j[�,$�EE�^��y�
�Ң.�X&���-�g�X�g�Sގr��(
"�_%���-a����H��\ğ\ߎ���A�	�8��*�w�>���S3 ���F=�����;��=1������������)��}��YW�Ān�nڣm\lu�^&q�7ե���i�^D��%�0��/%�U����1�O��.�؄�X,( =۸7ʾ���RbPU�a��� �Jv�lo�nd�
�֒��<9n�HC��]
�Ş���bis��k-�y���&T(q�LV���i%7Ftg�@��낌��Փt�r��p��jc�z4I"�8��E�?� �]U�zE��gE�U͕6m���L'W�nD޾N,4��KK��a������N�r�Z8N2������K3��a��(2��"��B ����1����|�F��|m}������>΀�]�������P���h70.��[��Y7`�M`�O��\)b�{Gq���&�%WE��#����`���:9 !	  &j�æ��nҫ.y�d��]=î�L.�?g�24. 8�4�B\_O�ۂ�/0��+���=�f�ڵ�=r^Ϝ�w��$�<�,s�MNH^�gk�����\?u�O��)���!���3���W2�Q��ϔ�j��q�&�ݶHy�y�Q��`��_�����0�*&�N��l��$�P��e«zY�Kg-�nL*Y9�\m�Vk<����N��Yh�B�P� ��M'_}����w���g��1��~����P1�G�Qo��?��:������7�}��|�ϸ�/o���=�yjL�=v-��X����v5���v��t�P[�_H�+� 3*��	����rͤ��<�A�fn޵�-1�ް�&��4�ֶ�W��	E-�`��O(6�o�B����Rp�)�o6��;Z9�w��,�f;b��le�G���Щu1�Id��H�=���٭�f�!s�7F�Ծ�B_$r�%�W<a6�h����+�a3�t �Ob!�*oK��~ѩ��0U��2����]�,�51*Rl�agH�p��MΞ_�K�`�n4��E�Wp^Q�O1��U�.Z��۔�yӯYV�����N��+������'�����"R��@$�j�s�K�BVpt�=[�*j�� ����#\������h��ٗ��N}�VFI�L�jT@�����
���������FNF�M��H�p����~)�hr �[7"
���J�J����A��Ne�Ё2Z��������Uږ���I5��N�d���uη�9r΄���r<�~��Z����xBԕVho��N�Ոg:Oo7dn�����I%� �.VM��,���]k��B"�xku,+è� ��({T�!nƸ�VK����t�%��W�xhIo1"��:�$Gb�S��/�]6�ӌ-�B;mX@Ds��]R2ǯs�LՀB��i�X�F�79��2�|���\k/E�G��5텷T�z`=r:L��x���nD��Eg�İ��F��L�T7 נ �ä����#�/�^�+o{������F��&Ҝ?Fi�ց�������g�o!C�ք��JK���Z���Z|�z<���],k�1�e�� b~����iA���6ufBC��ٖ��lt��>�x�w�r\UdB�^�*��I����V�]���>S�;�i�GcQ9��p<מR/;�(��C���Ey��iD8zK��!���\��^&,ᄗM����#�q��6�#b�;�\�*��$��wC�"2�^v��ĭ�Q���}�����e�1��;2�ۯX��@�?៩/��)�?w��Kƀ�(�j�9@ʾ�'W�j0v\9Wnۻ�Is8��wa�R���e)�#(�< /����L/F9�5�Y�aY[2����cd۩ �y0��>bB��KQ:��"��xm�7e<����q�\^;�Qz}Šg�o�-rs���SFu���K^��(Hب,��i/[�.��\�,D_x*�<�Kfk3�*�'��ϖ���Č�E�%NUC)\kָ�5X/z�a�w[��8/k+��<*��e۳��������+I�y�ȞMM;���������J�\��k���3o�~��q�]��̱��8�T��p�Ӛ�ƽ�G���?H���1�`'^�F���#J)�P�#�kw�@��my]���M��s��Dܷ鑬$K���#YR@�ܵ��R�b@��E ��FD��,�t=�6�^5��W#كBQuD#t���J���S�x2��y�mrP���^R�A����&�GDe�g5gZ�ɪ�BD�/��?� �4��K��<?��1���OҴ�tF_T<#x����ș�~��_7�^���@�$��Je���P��hCIB�����t1)����k��ƣ� �A�j�ŪEԺ�!2�[������&�88��|�J�q���<ݾ�;v�S�z]�B}�|NCF����+2�V�WV,��B5�����d'F3R)h�����I����zܛ�X��4Wfr��v�#�(��"L������Ulr􂦭8͌��Vuu4���8}Ʊ(��cLPȯR�<�/I2yU��`�PQ��V{���x*��\������z��g`7JM
g����A��֑��P� ���m�T2˒
����M�5��9��p�����X��ɵMy�>��du�*%�E֡��g$��:N�tc�[o>�HP<*�v#�|q��ҋ��]�����Ѳ��_�����-:~@s��n�m�m��`ᗼ �v&8Zw���'H���;����ɥ7!�6�JhQ�u1 ��n����S
}�����o���_����#�           x�uQ�n�0|�?f���_&Mx4���L�����/Q�l��T�u֫�;�����EgS���LyPf0$�P����cr�� �*�<�n8)jؙTc�:��;LGp���ۡ�Ý�41�C��}�M�W
Q��,6`y��q�T�i|�oip��g!eDLsq�2�G�a{���mxg[��#��ꅞN��q?�����ոT�Z�N�]]d0�R���:z�t�U�����H�q�/��Ӯ�=P�#�������Y]��7�+��_S�|�ӦM������ �/9��          �  x���ێ�8E��_q�G ���o��d&&qZ��O�I'48/�VX�*�U�űmbhb�]C_0���MK_���1������= �����/�/oRi�GB�T����`D�pW�gj���.��gpT�u�t�kX��5p��q�c�6�w���xi�#9���L��ԓ[���������!�$,�d�^���W1t��������w��rUh�����D.�(e)1K=}�ڗ�KD�t�vQ��*�Gj���w��2I [4�^��}�/�͆*�\)xR�EE���e�؛|w�i"�T��:�zn��W��Ƕ��ᇮk;W����s7V�IN,r&���u��4�\��GoIK��-l:w�p}O�FzZcP���Jw�گ��<��B;i����oέ뇺&G�^o���c�0y���.����←12�آs˯�#Q�JΊplk��/�{�d�i&8�S|t�4�룏÷ef��/�&(�F�S�y�B��gw@�> 8�a01��?C�n�����f��I�v���Q�h���Dm�X�N�r,�����)Ag15�d��2��GNf4�^"%�d�^4����G;��F�V���f��3-7hڊ4��.4��y�L��`���I�A9݌���	ƭ�ʘ�4_h�V4�m�Q����x��2���@�|�\�h��}*��܇ȣ���,)�|yd4��m�Q8m�P+.��tkQ��(�FE�]gE1��)6f�2��O���;ZqA4�N��n;aWZ=ҊV OKe�����::
�x���+T+�Ύ �@���� �ّw1f�p�5/��i��L�.ł�w،F�L_�l���r��n�%�@�C&�N8�QL���F���o�rOac)�BZ�4�R��Y(�Ȭ��@���c�|(  �I����v#lH���)���SL	*��,�@NǾwHO���s����\Z�            x�ܽ�r#��%�F?���ִs(�^�.H\�}�0�AB�]��<�ӷ{��	��Ϳ��%�Q*�
��s܏{D+�����C����g���k�����szY����G鰏������;��_���}����Z'_��fg�}j���N��-rϯ�1{�VE�׎j�Ob�O*���.~0��L]c��G��z����0-��5Y��\܌-|փ�������Y����;��o��_����O1���[,��W�l�d9�ً�����/��������ǯ��/�K:��g�(��.��L���]�2���rh���*�ɫ�V��2:|�����Wi{��~%
�|M�럿"�}�&����K���R��}}���Y��b���Y'k>���x�UZ�[�d1�3G�/�}zZq���$�y����׾������=hBh���J�8���c��n�s!���#K����>��ɊĂ�tJ8í(���
�I/���ur`o��s<\2���X�;r�9����/�����7��A���ƃ B��
i��YFZ�l��`F@i���㧻��W���t����q����}����~���;��/��9��6pk{"z�_[���~H�C�F�4\��ט�n���̙>58Ɇ�w+o�w���
��X�$�O��xp����/��ٹs~��ܨSZpF���_�q����p�s\J�U�L�"��i��e�e[7���c�����bϥ�=��{���eu����s��
��`���X�~�����K��F��p.׸!	�b�U�k�[4�0�>Xk)�\�`6'�Ù���RZ���7+��K�Q�S�H/�_�u���k�D��2U��R=]�Vu^�Q�nn^����/58����3�9���~���q������%���˯�*?2� n��=|�_�?�����q�u\G��Hf���g��q��E7���;0Of��J���>�n��sf�*���;��Q�٫�ʗL|�o����u�4�k:ŵdŲ,��5'e��Г�-�5sS:)��sf�p3�pm����Y'ا�O8���3�:p���r�d����Z�{k1~P�@�.Lu���	���bj�&-Zw�6�:�I���\H{��?��n��d����es�j�S�J
�[~<���q3/�K�6��\�7��Aa]������+�J�%����U]?�T�Z�5�pם��L��aǽ�8�uІ�/\ �|=�]>��V��nJ8_j߬+�n7��|R��<	Yk.�F��/�Ѥ�$s66~��^OwΖ���6�J�F�n�9���_�����"��m�/����]����A�3�q�7l�����N�Q&�"��Z�mY5�.�؋��Z/{;����r�����w���n�r���>'�,7}���f-�ϵV�k)�^�qg��۲m�@��z�d�����n��9�rieO�B��^���*�^!4����g
����/���rc���� ��r�+���nj�2��.���4���f�f�t��P(�6s ,��/'�� dCX>[�rzK.8��tNopV�lI8������$؃N8��R��ضd-�hLJ�����q<�;����7;{�6Z@H��.0�J/��>��=��S���6��]
���} 6F��8F�z^�h�6ϼ�eЭ~eR!�;� _`�O>�GX��7��j�GA	� h�������>��;X�?���Ԯk��J�I���K�'�ڭ7�����
}�3�pg!�``��g��]ʧB4����̀-�?���b��b�7v���C��dT��1��ը֤���uԭ�Tƭ`Ԝ�"5�f���.�7'{g��._�-� &���9��#.��\n]/�A��>H��\���z�aH�?f���7ơ�hh�2	��p�9� f0S@���A�%�1l�hl@6p4�$4/oC��\��֥3�i�͔Yع}����M�?Ƣ�56{�E���'B^2���|)��p��.\
��0��>�Ka�>��vs\�a� �j�<e�&êԦ.�� ���D�
W΢�	�\	08g,"!(��p�gpA(s6���f�pnE���EHI�ə�bwЃ�'Q���ħI�CWFY���&�
<Ԕ]Rk��ܧpD�V>r+�� R¿�e�e�Q�_ŭǳ��R�:��5� ���f��EV�t �6��\�tL�:o`-���0Dy`F��; d��7�"�DL�#�h h��m$`7k�0�P�`�%ע�2���Ķ.��>���%s�i����
��	<�Db �@H.H�D)@{@�6��X���w�E�W���Y��A胡Q���7z�0�iUw[N}�_�^����ķ��� ����h�Y�;�3 �PΆ�k	{�@���=� o|{���	��^��87��HK���ȖڍSp@n�[�gc��"���)0:�*��o��������+���`g9ؙs��?�;W��e1S����(�j�̙&���Ҍ���Y�����g��� �(�9+���W�ʂ���^����ă�.oQ����� ��~�@)`�¦���ռ�Y�]�%ɓ*��X% �w$��\���;���$D���A�Tp��+���]�� omZެ��M�K�SuF5�\s����b��Q�o��B�����l��+�E [�~fdq��ܫ����N�av.���܉����AP� �I�BZ��I���G�f$w�z*7��Y�0$�O�y9���9[���|>R{�h���҂�����u���L�	@�:єߙڥe�4|��,�\Fl�&�,i�Y��m&�� ���~k�p����*�s�uF��$��gbݮe�Y��C 	Th��§�t��-$ZK�![�l�v]DBDp���vTXD�(b{�{3��� ۛ��w�H��v_��kTk��)$5LuF\+��M���~gS�3�������
?��|����IȆឡ�v �ÝvVd������{a&"	T�Pqj�/$/��Ӏ/Dc]�&z�ž���Wf�^(ڮ�����l��%s�|-X�
��^ޑ�g���~c/�(2]�����s9e�H�@��$F7���Q�i�I�]�Y6���W�`b��H�����G���;P�}�}l�s]��$��H=(d��V����Z΋o ���9�L��L�?�X�|O��/�%	0K�u�҂Xj��;��}����)y�tX�گ(�(��x����&�yETFF�K_t�O!6�L���3�ŀYfo%0�91�e�/"i�)���r��߷{gk��6�&�Z�B��9�YL���X��v��=�kr��[X���`{���: J��c�f�7�$����*��L�ܯw����ˇ:�"Y�rd7<kU�wz��>�`-o�u lu�%&��?�����ml4`��xz"����ެ��EW�KJ�վ����y�0�	Sm�7������<�z`;3Ĭ�B,�P�#�g�u~?�$�����o���d,&p���u)3�)cK�5�����m�FŶ5e���č�\��7 ���Et�?�|_��aȂPy��٘C�?�����o���2@Ǻƅ��Z���]E]ʚG�/70V����H��XK�		��`��`_a�eVd]!\5\�i��"�wq�	'1��	M�Wx"��b�^��sS�}O��F˫E0S읁+� <���r�P�$Le�=:��Oҟ��@H/_�-�z���)XAɃ���WԮ���]T-S$�h����#�h&v�%$	 cX ��'ܚW��"�� ��-��|e�2no�3�"�b��A��)�ӱ4��GM�a�z~Po4w��&K^ǡ*/��:�z`��s��������_�(�
��|�-m�~P���D'׼��ϓ��"HQ�p�i=�����W~���=�Er�`	)C�ψ��s���J��3�<�#�|qk:�z�/	'��U�Lͳ�1�8�� ��A�5�4l\��%I,̿��	�8Go��uDg�3    ��I�w��s��g��_�4��p-�P�--u��#�̇���p��lF'R8#�N�����rx88�������k�yo��q�{�w�"�j�&�!���r����C(Z��9���u �֬D�) ��>X�x~��A�	l�t(�ı@4�l��
=��޺����Z��1���Q�m$�0�IH�D��:����:뵘�Z,��O���`���a������E$�y��Y��K`�-
���+M)� b!LM�n�U-�b�嚿����������z�6�	O���� X�x�����+������!Z��#����=ˤ�RCWC�!���eGsV�n2�r]s��6�FU������$j�����dl���n�A�?�׏�����Z�?��Cm�gԼրBV����?��\��<a�'�����0J����5��`V &�z5���1V�!����=/_�m��!� t�?�s厙W�ZM�ݩq��_m� o|_�|w�����_$�1����%�;���`j@(�	���C �n篥 ����;fC��n��)N�+�r��iI�Hla�;0��ϲ�1�� >��^p��"��������^�^�~�wz��U��䁙��Ժz�2���Q��q0�%޼��nMD���'�΋"�� ��g+������{ǒ̢�> @{��>������1��0�
m�(�.�>7��д���%�Xg��0��@U|�U"�`<�P����+�Y�ZB�}~]n�q�|�찜�=��ϊx����a77P�0)�To�e��6��� ����SR�g��=!�X���X�)a��_""�w����F�eN@7j_��_:1&������*�P�l՚8�����/�n,�X�2�G����N��@�*m��Q$�>�m��i���I��n��hK��$'3�8��y(�k�&��	1w��z��̸��L�;'$ˀ�Bp�����	��>��%�����P�w��B�+׸i��Z1�Q��5ƭ�zޤ~V�2������ȋr��O�@�ȥ�Df��,c!9��=�����������r��O�T3�8Y�� |-3���+w� J �za��)�w���Y`�X�R���t'�?��/k��J>�`��6l@=��N�6&]���u�y���W�9�[��7 10p?�v�;�o+U�>��9�큣w���i10�B\�,���d������m�����4-����1��\�1
���.pŁW!���J�g8"���r�Jm_���D9�E��� 2�\W3^�d�5 |嘑)���v�v���vc���kl�W,S��{�R��] &X}�P��$�v�·}��\�F4�~&���l",o�bk�8���j��Tz�#og�K������	G�1Ҿ���K���%2�������C���PBu�Z 	w�=����S�&�I�&!��X����h� �r�Z�G%
���^�l�uυ
o
��!���D�B���W(⒦S�e$�0ck�x!Y��h�	Ps�+A\��a_.���^9�tѩ}~��覱*z��,`!_֢�RȋكAL�Pv,i��>:ш��Ӵ�!)�f�� -��~@���S � 5�#*����b^��=�忏��W�l�*�̠<���"s�X�F͋ LdU���7a!�F ��{�?+_]ϋ��&��v�汊��G�X���N(�{�n{]!�.b��GX@u�C�`Q� �}9B�0~��`����u� ����̗pLDo�3@��0wXk@0����f�+�(�s)���m�\!���Ṽ���m
h;\}�@��k(]�.�����0��`EC.bޙ"�;Y���:��������T�ق\Ւ�>�*nCi.�C����$Ӯ��Ҡ�;=Zj^nAg��9��>�w��?�+BV�l���x������
a�10%@�wx�{1P}AT�GH�3u����b��)�$��<^�����!w��6`�J�`��5X��O@?���s����~��
�����g�����Z�9Ђ �h4�¯��4��%,�ݸ�wX�� �X�x��o�� �����vf�(�Duޯ��Ŵw��5f���� ��(�L���%��F���,�t��ڤ 7P��,�]3��\0��]�[�+_�?�
n��ٝ�ʿ��Z�&?��ڀn*;^ڴk��m��٥��E����V�`bFN�}�F�X���P�
�FJ\|�q�z�Fn���7k�}�xFT��ׄ�l� HDa��I��iD�-�6	��S���]:��_8�u����(X�r�3XC�{�3k{+�$篾�P����3�.f4M^а�H1w���_��3zoD�"���'���#��#�̰�� ����@qf���?^�� ����gǪ�ۤd!�I��M�E$�9����/<3�x6�c�����Q6��>c��	>�N/`������ 3&`�(�Z�����@�Xr�0�{M��"xZuTO
���7�Bku�M��jIt�1�Ki��t��fK����a!��ah�����~�_���Ӱ6��.L�7x=H}+*]�a��h��r�bi����=.XK��iP.����߁�x��Z����x��c���2�wmU_���]�6,b�
����n��y[��s��Ø	���.gg�N k@,!>mH�0���4�C)��[j�2�����3"x�/1���k ��A�1I���y��2�f��P����N�+���9��b�{>��x���,���&Se���n
�l���*s-|R�8Lg�,��[z�3=�YgK���3�_��X�)QI������DH�8��;(������@o��\W���K�w���M+�@'U��B�!k��\P�����Dq?Ă��Ϭ)jU�ֻ`�h3�`M�Vq������V����q�}��4���3'�ox�;Mk�u=���쀊��v����"-���`�	J���C Ee�3Le`��v]���.��of���Z�Xa��Q�S�	2�F5c���n�Y�-�K��������VX�2QCqC:�V��KKZ���+bD!/������z�@�f,s7�E,Y�Ŵ�ߜ�A��a��:���1zA����RZ�2*3��L̳Z�'+��B�l���`��*$v>\�C҂&�X� (벁�E��(�����8B�(rU��,��	x�+�6��AL�%=-���Q�pkE�E�Z�B���7u�Uu�ali�D&Q�Ua�V��!��Yo��p%��\,�aT�_�ec�n�bg���.s�ˑ���b[��B[���]����f,c�f��p�-����:��*�]a��9��ࣰ�/U��	��%I�+X�=}�w�|A8��������
)CM�F=3�i#�1�8& 2�6�F1�-��zp_�(�6*v���֨3�lV�scnc������Z���Kݸ*��!�C��&�:wL�N u����6Ԏ��?{�ӻ@�8 adW�V��GԔc����̪� kw��[T�.��Ô����Y4�Chd[UκDe�eQ�n��o�N�^��l���|8�'	�*��N�`ʈ<���*�D����S�;�yo$�J�S�d�`.ib�0��#��%]P�l�	<��U)O���
G�X�����o��k�B9fT bi&����d�әW���.}��6�vDT` ��GE@�_*�Tb�	;����d�\O���i�[p��5��KAd��<Sc�*@3�����fs�����$D��S�,^Ba-@�KUNw&�=-(+G��"��R�����`A���;Gľ�
��@89y���\;w�q�F���У���jJ���A3��v(�BBy��gn/JW
�iA@.��B�{-%�vq��G�T�������4Y�ʨӂ5�#K�r��r���,���SE��N��{a�逻a���=`B�4���2	j���)�
KA���    6�tq]K�s�u4����<�|��a)�����Ͱsn��u�h�b�3����9��.9l��"��=���L����yI��J����To�m�h)�=�5UI lV��J7d�Oe`�x���;x.Uu��� ^o� �����������*'��?��K���U?�AOQ�f�zk��L�a��:=RD��>b�2�E�'6�^�K�Jn�F�9���{ꋯZ������K�t'���|�1�����xa��0s���qR�r~�U��}o��t�>���9s���m���ys�3QK��+* ��;=��U���g������e�/�5�40��:��r~5���o|�Y�����6���u�� 2lBͰ��I�u.*G�`�`|��w���Rp���orRUu�^�c7��ZpO�~�h=q?j���~��c��
�Q���#�
���{४�� B�H����zY�����u��oʺ�@�g�KxA��^��'�Ğj4�\_����T��I	GI枱oaC)3 ���9������Bv������!����?H\׵Y5�kM�t��8��P�퐴���$w�#G�>/�^b���<'����ڞ�8��Ú�z��CY��K��]��Hr��M�?�u�M_Թ�s�iQ�lr(	%�g0�3О�+=>T/�J'��>p����;��|�~t�̥d�B7���k��\�==0־2 ��BF�:$}��~v�����G [+tg(Uu���u�XeU-��K�T�ɽ4+���4����5uQ�ٴ�d��D�e�^�4���Z.	���?x�^%�~�G�� )S�f%�wCbp'��]�R��>H��5ԥB�p�i�I>��f����P�vl� 
��T�ò�Ī��d��K8�-���d�TͭMM1\��SR�`�^�D���֨�Θ�ߦv�r/�:VkX=��K:@��({X��4[��C�v~7�* �`9w"���S�?S�� �h|�����!�Ƕ4���'w[��)�����A`TZ�&��� ���sF�B���+������}K�\S�&��4�����Z�rR�~��,�V3t�H�>��j۱�߁ S<�>��յQ��#���=���ρ��w�"m~���*�*t������F����3d^�i�̴�8Md��� {�={N�|��2kD��#���b�3�uS,)�Imr��P��7�5(y�5SE��m��+M��d\J�HWg���U��^7���x+uv���ϐ+�F�h�X�`����۳����� q��X�`���F�;6S�ñ�tYM�|w9���R"�A�%������=��3D�����Qe��Uro��}-�5�_��Y�O�6L tgc�H��"K6}4;�9%��ß�=�(�P��}�(xy���Z`J�o�w �{�'/����_�Dʉi^;O����q�t���ݴ���Vb�dQ�ug��g��zs�����������6^��N-�RB-@!p��.�e���5�A)�i< �׈r�f˻x$����Qw�)S�����+���%�����#�~g������`��;�`�q��ٴ���+��4���w�oD�0�>I�T�B�A�M���>��GI5�sB^+���f�/=V����jv��Qm|A�Vl���Hh��K�u�+]6�iS�UP�'im�iY�٢���0$c�}V].Y�٧�ݴ��e����S���@�D>�,�Z�&����~`F-McS/�:k��Od�M-K`g���- #c�+��>�p>�ہ{�zÏu�@'�;�h�}�e��%��?��Y��|��.l�66 �/U�.�2n��Yg�hI�͆�O�#����tJ���\O|����w��߶e��?�`�K�c����1��!�dTEy�e�z�`.jآ��R� ���`G��eq�Ќ�D΀Uq�Wyg-��-U�� J!�Q��c�CjCކ��,�(Һ��j�M��.���x�sp1O3J�����I<<'6 ��p���L��ZDQ-�B�h�17�d:LKOPs��nm��0�y�u�뒥���p��#��Y��`I��,�J��\/ܯ�xxS���H��<�*
[Ъ�\d���Z�5c���`�T��<)�W9k�J��B��0k<@���:��h����
��C�r���v�����N$��)���XMO�x�7�ɢ�����"��[G�N%ʗ���A(��U(R�k<#|�0�.q�:�;�~_,`���x�Sp��4g0������(!Y[h�tŰO�0=�$�M5&]Ϲ�h}�Pc�=G��h��ޒ;"���;�Kg� zҫ(��R-��lg]OH�Ml�W<Ѝr*v�)[M'z�-lv�����k�G���U�EBwt��ע���h
j\��z:6}�kC����8	ꊧ�Wym��S�8�@��	�Ҩb�d.��$t갗E	(�'ܛ{�Ap,��@\�!ŵ�Sk����e��|3��	;=lxP'�t���}�%{+೩j<`rh���T���(�l���;"�okq�����V��M�wb�C*�$������V�p�"l��v� ��t/ܙ�Z��q��;�[�	��x~Ohx�������i���{�1�5H�Acr��7���U�����&7L<cY/�Ȱ�f)V��>lTwJ0 a���Wzg-��T7��e"������P��3��9��jnOk��� Iq�39�] Fv�`�K�M�8�� ���Wq�}���ע��0T_��&#��-����7ݲF��mɴ*�t�����s�s9�-���emXZ:bs-�}�0�(Ը#�n�Σ5ȵ8o��|o��&��E&K��!�|9���P��|��Ff���g�n!6a���d>|>
_�#F�W�35ռ�=���.@�D�TU�'}ɪ5�+�3�UpnC,�c6��w��� ���PV� ���<�;v�{���S:���:D0,pc^���]n�V�#/�4�Rk}1sP��MֵYG߀_YP�g�(�y%�2j��>���pu��E���w��DDǤ/� ���I�U1�aN'���h�uԫ�en��V��V���Wl�)��FqP�}q[�PH�w�i���8�`�ЄW:U����X����Y-[wdYbj�9�<�zXK,11�M�J���x�>�� �yΎ�!��;��
I��qk;�{9{�$2q]���)��J�i�bهL���̅�ے�cS�0�0A`�?B��E��'�xzK� �H�%�f���Z��k�YhX0�9�A6,Sۯ嬷i����t���l)\6	�	l�(<Ò16�ca�sz���/l��=��߈b�;k9~+c0 ?8��}.�ieWyFU.i�F����U�-�8�aE+�8��9�p{��\-����U���X���z�m�����K2ݼ���ғqXA40�����FV5�|�S�{�+Wm6����Y.�//�h�/n&I/��Ǚ�a����Р&���"��r�^ksS�4?�&�K-�1eڧo�#��"y'<�"�!q@�
s�lOt~k�t{>�!y_	'V&5l��-��C�W�w�4V�6z�VQP3�\�;�*��`W ?l���dI�25|x<J�|b�|������-�p�:�8�U7����C��!�y̴(b}]L�f�vp��X��W�V�%�Y%�fI��T0G(b�J�a}w*���I�-�\ �_���$~�W���&��N�XuR3�b��т�{���C�J��'	��5�q������7��$�zFL��	���>��֯U�K<�|"ϻ527��$N�E�.;���Q�ͰS�%�s��Rl��4�=�� ��4��q�Z',q��.�"���|R� [�&�:7<�473��`/(5ó���$�+��v($�땽c'2^�<pp��m��^���L�]��o�v���ί{����=i��(���(�K�J�� <1x�'��AT�H���s�1/,��SU�o��e*�`�\��yE��z�Vh�
     |1�a���K���8� X
����l`�A�r/���|�����{q{�cq��N �$��>֥ɸ�b�B��eC�����h�*/gl�r���!�d�Ł��XX�v��\mQ�v�z��K����x��:*$;��EiB�+0�Bm�̋�fF�G���h�r͌��E �!za��s	�"���K��D�*�q�1?g��Э[�o^�#L��tq�IW�ܤ1ڤuKƛ��|�z6�P�� _J��������|p�������Ϗ��.{��;I���8�X��4A�����"�Z6n��� �;�
w���o7��:���8��*���L�A���̨L�(]�����{C v/�1��\�ٔ�}4�:8�t��^K1�v['"�ȯ"���-�6������$A��uQpOp��zg��r��(I�ihב�z2c�5�y��oH#�ݜ�z���z�
������3 A��M��-�#���vt�9�k�������^ǌ7ղ-ҥ���g�n����j-�C�����S�	���3k�p��E��>_
K�{�'�:�Ծ�s~I8Q5��1��Ǚ�X�7ZIE^���N�&��,���w��U���d��ˮIKk'$]H~�Kp�q�����$y���5�#4��W��h�b��^�|���̱>��,wpo�-삳:⬁3��A?�4ù	�a);> ��^��-w+ַfR��H넘��{��g�>f����nf���S5�nW�|���;8�����-� �����
�	�soF�f_˟���꺊�y��Z�i��K�6�������W��Ce��^W�`�8�\U��)1��.��3 �<B�������aھ��~.E<&��m1�j�V�^�m�xz/�-�<vݘaC �?��F �v�{��u>���"�J>\{�;8a~g-���+�#��Í�j馍FA;^�q5��'��UFW�����GQ�=!*�k���s��+�k3]�O�����@���W�U*�k�J��N)����̂�8�`�Q4n9j���p�-*�
{�"e8��ް�.�]�[�|G�:�bO(E�}�ӿ7.|6�h�����}��Y�EZ����m���Jl�W��Q�h�A@8��hP9I�2�Q �e"e�&j!ѓ;dk����k	�\�k��۩�hX����t��y�S��a<M�X}n�遲5	@��x�F`c	B����=�S�#�=���Z��k�Tg$k^LAJ���m���$回�A��x�	 ��}Q�� �\p ��?��]���87�9���<�[�|o� J�$���:�٥�hY�n�MtK�Wn����?>�;���m�!\�Vp�^�r'���X�T{z�9�����%~���:�WV�'�����Q�]�2�rs[<���:���Aq �jpf�����0uC�����,vg��r����
�'��l jZm��ҧ��Q��l��2E+oG/ip��#q!
1ha#��6����@�7������^�����X�7�l�:�6i�q(�:�rF���X�tS�����ǅ���ș PXA�ovN�P?o��	������~k<�w��	M�*,���L+��Ӷ�ܱ%�L�0��N�e����` �hQ;A�����'D�7�����D��{�oe�k5V#p�/�/L�Ҁ��l�-�I�gF��@���>�qʷP�%Ki)_75�/�^�l�8~N�ğwJ��L�)%SG$�}�f��z.a�G��L�bte�SV�ݵ��M��٨��L82%�f�������� Ӄsg���������`�Rf�K�z���r0��͸?Ef^郛��J�\P��g�B�1g��3\-Lg���!������2���h�[FV(�g��[M��o���R���YV�*3�I�E�_%2�x����e����_��?�b��̲v��k�L�ͱO�J����w �ڂҬ��bX*�_���8gg��_���,�abJ��8���0�4��"'q+�F۶V]��2_��C<B_>S]ȶ�죞={ΰ��xRr~i��;���bϫ�P��0�k"Qh]1u^s�&5�2��X�w`E���\%���3���e�PqW���>\��5+va�wTW`�_�"х�?�AF��<�Sb�l�qfmY���~�ŉ�L�B�B�3������m8��f`YK�`=v�X��ˑν�[��)h��{�٤�W���UU�6�\W���4�T��������%�$�3~A!#�@� Ib������( *
�OAh�'��>���O ���9N��S�T�,Hd�r)b�5XP�k�jn�_��N�K�I]��)�Q���{��q�п���{�T߻���	�,���zU����	����z�6UNӝ�D�3�0��~��$C�Vba����O8vJ=�E�S�)���7ً�?��i�R�@��v�'��[��M�c�G��'��k���^N��U1#�N~��gK���\ݏ�" 4�G�}w5���G�;]^�10v�G�ٲz��t���W�,��u��ㅍ���.P��`��|F��pP�#��X:�ͨ�ީ_|�~S�]D> *���x<+��O3���z��m۞5���6Gƞ��r�w��N��u��[8���(�ݑ(��� ��PL}g���>X��������y��^L}4+r�o��މ��r�w9Kw� � b\���j�����Hp>����<.Q�o��;e��l��X���A�} ���]Y?�Ws��v%bᤜ�87(gM%�l��`/�!��T 1�Wo1AE��cg݆R�Zķ�{ԉ�vnӵP�T������_��-ݾ- ֠�s_�sQ����N�x���+�>Ya�x{���p|�q���r7*�k��֫uma�r��ٵ� u7�����)�C}�n�"I�65�]!:�X1c���d�Z�8��l�'J*��	~���6���N`�c����ό0�J-�J����d���T_���2߯�	����~�*UO:Psqnؑ��r�:����^0!�k��Q廸a��q6�9(Cگ�g���0�+�T>�Țδ�8�_�_	g�3���+�=����G��:���v��
��}����:��bW�q��,R}6R�gZ���[΂ �AN�/87�Wj��2�[��8��uƎk�NG�Bf��3V+���Yݙ��}�JN4����E�%^�\��)�)�i�L�0jڨ�}U���f�HJ[�4 kS��j�p���7T?���d҄u;�E��$OSЫ��t�E~�Ϛ>�Y�b]ed����w8'�-�5�8��y��S3m6��!�Fi�;��u6���
�r�H+�k|�2D��N6��y�I�s�#�&JFvj�W�O��3J:,�)۞3���̸���3�p�]	v}x�3G�I~W�#fcHo)�׫�-�])Bܥ`$ؖ~�D���L�y]=ȉi���X]�����;��T�#|�j���Ma���ZnT�eAB��Ԯ�
��D߫%~3LԌ�n�}w�I��1k�� �K,��ΐ�%����a�؇���
xۈo�o��3�J�#C��]G��G!�0hYT�53	�XcZ�&�*L� >�u��+L�⣚�>�_�L�T�z`�@^P�o�"���%�������I�5^Q���u��>-���5�Pbf��C���X@S&6�j���H"`��&��(����� ��h!�,K��k��R����(�PmT�"��#j�����Ǜ98�B3@^Z�u�G���f-J1�3ɥ����3�ڰ��Z���ʎ2W_�M�r眑j�~l�i���K����GvTSS�p���?T���׷���:4��)tr����,�~� ���uIf�ui��k�����G%]q6t�����G��2v��x*T�:'</,ެe��
�1k�x�l�
eV:ZOX��p��-ɊY�^�0�z�OW������)�'Tr̊#4 ;���2�s{�mqko����[�����3�ZS���;�(�HK#?ս
�n�����
o���JU�&��o��81Ԃ	. ^/T$�l��t�M_�    �V�>0����9��~�F2�Y$�>ɍ$^���h�k9���}xKհ�3�ͺ��R='�O	mo ������.�t'���wC���P��+Um���\/�0٦lt�N\,9���_X��QCA�ilزQˀ#�p'*3��8J}����D��Sx	�g��	�(4<�f��i{Jz�'I[�cv�a�������u��$t� �@_U�IAa���>���k���)������H�.Z'֛#[��
��^��}P&;���ݰ_�g�Z�]R��>M~�Ƭ>�2�ܛ,�M�N(
pP����"�D��]��IB��Lăz.���|�B�`/L������U�Q��oU��!�k��k��V�<������Sc�U�6@��r���",Vkp��}����`*U�����Q��^e��6�ԫ������:.�`��gn�G%�
_G:��E���H�t�;��X,F�9���W����S�ܓ���ԫ���	oQ�M:�K����) ��� �b@z|ҫT���9=m���#�+2ܛ;}]�_"Sb�^�؛���*qf�ldu�n���ڰ4��Cx 
���T>s���c:�=�/����KX����k��z+]�^G�n�YS��ݩ��y�I����)	W}R#� a%�T$��">�pD���$OEO*u������GrW,�����q5��d�ڸ��eh�e,3�Uˤ/�P�Kس@��p"6�p������w�3�>g>k�7��p�(3�u9w���o�_״��^'΋an��K�,�������FX��� �㣺���5�f|$�ƴ^��OkU���>�����g7A���P�]S%rN˲ZJ�����S*SbU�����_�i6�G��pB�jv�q��(U��X�=���Z���cG�ʦ�2m�1o<��qdFE�J!3w$u4V10/��Gba/�3�ޕ�3�8	_�������A7��;B�ｸ�r��M�+#�0�a�`	c1��+VQ�]ٮf��&�qK�Uc�qJ�#^g���!�n�
�*�_9�WS62�����ۤ��ӹq
�����5.�1�s�1������V�LG#�]�8y|�5� �� �P���y�ep5�����76�9�����4b��k���o�8��1�"�0Ζ4�#�ceI�=��M����3�9�q<��jB�
�+g;S��mY�y�	�����/:�.�7�5샦��n5s	���,��80��W���^|H���f����2����/p݂L͵�Jڽ�����W���py�va��M�4p�:*�0���Y��_{��Kk�'|Ő[{ɑv��<�IAO���`���3|[˿�S/�l���z���.K6��ɺ��b3HLmj�N�T�._�g��z�4g�a+QS��Z{|d_X��f��7a��~����D�-n\unK�������EԲ��hZ���M�4�T�(��iD9�����,|{	`�p��!d�j�`	{��wD9ߦ^cvP���ɋtc�l�Y�f���δ��:�%D��﷾!Ɯ.��;�s�z���\�>��(��'������U�T=��)#BtC��d�G�X�xcm��cJr9U!ʹ�6���o���;u{���x|;���-U�C�۝<�m;fр�s���LL��pY�,�4�f<�]���2�����PVq�\`�����";�\ ��4g>c�NI3p����mK��1�������7 �q3ږ���J��HdH��|�� ��]N��Vs\�����$H�o�"�wM�{�5���|�nWo�j�Gs͇�f��d�EZ��A�UC6x%7ۦƼD"�/��q ��.�ř���,l5�
s����^f�����o�|��|�R�>+��>|��Ŕ,\Rڅy*��4����~����e���p8�;����;?�T�s�w;���r��3M�:�$��4�$��&3�OE�O�d�F�5��f��8� ��/P0��.�`<(Uo�*���X�@�xo��w�۵��B��WeYZ�C���*�zļ\W�U�t��X5���65���*�cw��8�1]N�㾰�0pD�y�3��ӧR�O���9>M^��Pd�02��z]>:��ȕ>���26N�Q/�/�!.��t��`wQO.f�}	�����e�����t��~-3��fC����{�*o��d��q��+�?���8@��H��YTK�X=Tk�0������w�\�עrs�b��q3-r�l�am�z�q�h��ci�QǗ����W�8�N�Pe�_l�� V����L�=q1�j���.�QA�9˚�t� |��uǱ���ճ��<���v�r:���#b���c��RD������Z ��U�)l&��,��x�?�e�| �i^��K!z�F1�]��sкK$g)=�� ����򇳂�`��!@U��pI���1=��ow�X�k�m �[��
֋)5f6��ېw<��(]Ơ2i�_�b(Y��À�p|6��%���rv��=����Q}Gf���}�� �\ˏ����Z�#Ƕ���2�D�s'��x��*��8Uw�����^H���b�|3��h�H`c�er�3��Y�~�B�yN�����WJ0 r�z�v����@�Q܁�5֓h*��+�0�n�,T0�9��T|�N�����F�3�r�_���|�x#��b$����p�]�=��ٰd�L���&E�9@��ע�kZ�aY�躎򩏇��($g�ݰ�Z�r���vF/�ӝL�Q�]����x+�Ň��Y.u�����ﵽ��tgWFO>������Ԝ�ôA�uy��@�{Q���^����Bq��L~���x*y��������vf;W��tpC?���V��`����XF�͂ҔfĲ��v�Y=h��L �  K?�.,V���?ʓ@��r��Bq뿩~��k��`[;	c&ӈҢ�qv��L�L�ec�(	�|X�`���]��`<hPz��/�ˆ>�/�#R�#��=t��bC�����mB���v,�>��ɲO�9����ym����j 0|���X�/���9�3r_�� ��?��>��[}<�1�V����)���&W}]rߐ�=�H��ƺSa9��~عz�S|�Q'�}�{о r����Ng:�?h}���:�������n#m7�ګ��f�ĩ��j�&��Ym���K܅�E���ĩZX.����j�* �/�S�[�1�S �u(h�_���y�T�玱;4UQ�6�.q>���揥�G�;��\c���q��E�;LC4�/4��+@���ޒ���m�e�G��Ai.��p�^bp�C�����bj��͵Y�-�٨N>�Te�gt�A��R�WM���TLA�ɓv&���+���JݚT�y���]>K�a5��Ȋ�)�5����#�`��B� ��� �hWk�x�j*���+�{�&�w�	�9o�_��-�b_Z���b����)S�s��K�"6lC�N�D"FR����Q����ʑ�����Q��BGT+��-�N5Ɨ�1}m������
�Ǥ>��,�c�MY�f��I��F+!
��F ҃�Jz�����&İК�| b��#}��_#1��J��Ql��4֒�r'�[�Z����u�PF"��ϲ��a�<�G9����w�C}��<�]u����L�)E���?oŠ�!O���|��.l��e�ę�7K�&σ8^��[���PD��Bi��Տ�Z�vG9�9�.Y�g�i�B��r�ޝ w�f�璱���ql�}m]QM��a��lcS?�(���t�.��rz�2.zN
��׷$�`�YN:M����mE.�+��~ꃇ��k��l�RF�0����=�ve.�>	'-#����)\+�O�/?���o��B���s+�ח�h��GJ>�e}[�eܙ�~���p���}/��hQ[	w���Lks�C�gJ*�/�m� ��<��@�ay�+�׵H�Tw,c/��Bf�����13�65���f[Tn^l�>���8�"6ؐ����'}�u��*��C�nm���[<Ӿ[�G[J{HL�2�CmĖ�    �]�|����
����|���0��3>����Hb4�Nnv�����ɯk���S����m�9��]��ү:?�k1�"_c�A�a&�`?^1Ϧ��_��B��7X�W���\�=�,���OH�p��J���ʬ�Ǝ�mH7sפv�-�:�����Pł�<h�4]�tO�����`������8�k��m3����7e�~W��9L��Yb�aa̎�s��� Pk�g3�����9\�oP]��*�Ӊ�#-����3Z�^��NY������r#+u=V�i��`�3*�'k���4�G-�I����_�r�c�~�Y[�����z���1���
��-w�]?�
�ن������ұQ�u��C5�N-5	^Cò�z%Pѻ"�T?�^�����_葓��:�o�d��Ϗ�G�YrgS��T�ɺnͭ����܁;��(K��A��6<h������ֺ����{hs��@�:E���zwA���48�m�R1u�j/TU.,PU�PV/�t�,�C�|�x,�E��NR�~�� �b%��ۥ|�V����P�֦�9��|��(�U4���4.���;U�s�,����>�6b%z?W��)^Q��³�J3� �gl��w������Z�gb�]�Tm7����e�9j�f)�+s7/����s�ĘB߹|ӌ�$G���(�0�����z0W�y���Z�1�`ɒ���lUf+�.YO�љVc�3���c�P���ٯ�v�~��w�D���5�VU��������J��[k�}-�!�7��ؿ�ؚ��W�I�[�󍤚&�2�����y���99v�d(���^�2���6��H�<o�G.2��T��KP�,���&sM'M7��֤�|)+��?[Ty��*y�W�����boW�E�����-t6��ٰ�gʹ�GL�[�P���U���4͝]XOf�E�w��N��X�;��7ԭ��v���ϺH[���rƗ_���ю��CSx�np�����M8��֥��g�b�Eo$7�)�)C4QT6�/��rVZ�7�>��L�$�� %�^�`��k�<�11�n����@�OB3����䛽Jߤ��s>9��K�VU�^]�@��DǾ���.��[�p9��X� �����$�n	�X����'�آDd�d�Aܻi$J�ղr����Şf�A��scNϫf^Q�l�+�nA�S* ���Z���/��GSr�9�M�o�2߂Ԥ�(�9v��+�q/j�H�"�=嘡����_ay cL�?F�z��k�:���t��C0�E:�t����qK+;���W�g��μau�M�n{Q}T�fSI�PR��u�xzmЌA}�m�'����4߇`�QL0vG�&f���%[õW��C�F���TQ:�D	C���O	�3�8��A��'d@�H���σr�4�G�]ZH�XV�}[2�C0`�E9�Uo�uh�F�F-�p�����B_���Z��&�d>�{W�7�D�ǑY�i���Z��I*ҝA��E�03\&�]Q�~��l�i�)B��T $t`<����, �N�ǀ�*5�_�*::.�������n)��L�vf�U���s�_���e�b+�4}��)й��Z.9o��b���|>ͯ?������k���LrR��sаRm!��9*�S�)k�:�����m+I����ж|��t���-S:���H<���-�i��ɟn�U�Z`�i>Z��;ab��v��Z)�e��k^����x�L/�VQ��w���'�f��0A���}��J�Z���C�[Xʾ��(��vp���m.|�-�ͯ��b��������L�AK��W�˟.��S0�>��~�l
��+����܆�}-6&���Q�J܍���2�m3!��dS.�
�������&�Qf	�7 ��8� �$�o'Du4�f��[��a1J;�4���Gv�T�2+C��.׭Z���A0���z�<oZ?6�d
fN1Ux��@ړ+V�G����n�Gh-\j�M
��0�OT`����^줹嵱!e��j�&��2�W����4�'�Y�@�FW@UC�}���I����t+]��e��6�"��ם߳).��wm;�(�k30WW.S��������gw��ﯽ���N�ѭRh'S\���[t7�b}l�Ԇ~��q��h��ŋ�/N$����h�Uп �0�;!�#�d�TB5b�5�g1�v=��8�Zt�k�Ug�� �� kT�;�}�Ħ��Bx�<D� @	$�����B�ܚ��6ă�,U�z2��-_�r�;/��� r�؛Ly��r�V7��"�T���9�-#��m� 2#b.�d�|��' �|h@�١�%����1�Kހ�>�B����զ�v`�9�f���4MW�͘�+�-q�v�4�*k�\��
�Iz��\O����-�(�����;=��@"���]��lXaH��D�2�;���B��Q�E�ni6�3&��h���䗏_9t�O2���P�����@.q�/7�����
��Χ/G?�~��]�xX�a�Y͘,*�湬�z���У�zkr¤�ҏ�΢e�^�f�)4p��t��9�j��kњ����qqa�cg۽9��uң�2^��_����H� �	;��6٢� ��&�e�	����[�y������R��e)�6wv�Pl��I�Q�Uu���̒�ꦹ�V����^���Aڧ��7hM���QEAh�#]5}Y�-����"qt�A�ܤ�Цk�n�p����å��l4\A��i�(�����^&��
?+q�p$D,WZE�
��p)_������$jWI��b��kV+ߍ�yLG��ԵC�����)�ak	.e�H�s(�k�glj~D~�vtZn]&��E��`PY�u��1�U,A���4�e��gE��<��D��67�-`�1B�LPL�O�������`&�i�\�̋c�ό!�\�5oJZt��:��YP^�rm����&g�˖�+D�E��r�R�/`��>�:�.��(C�?.
����:i�Z��ˢt+�\
�Q�W�M`�[��l4�'}:pJ?�X�-/���X��l	#���VRd����u�pZ��`$�ei��L����$�}y�X�Y�^�m]Y�N�dS$V��O��2Z]���)�*w�f�|��o�ӭ�����%9 f:�)����ʗɸ�a�(�ؐ�S�9V��Q4C����x5)Ԝ�%�\��2)������k^�#0���#R����JFv3��d:i��m�l��N�@8�븀��'�g	z��%&'�q�e8m��j���g�+�}]�}��Z&?+HQ���q��:�e2MƊ�bd][N0d-Qt��;��28�|c�r�L!gR�>ʪ������-�Ӈ��k���J'/}1�ITy�\�2�2���7��~B�Fg�k�s��i��i{f�*_!�@��);r_>m�!x�� ��4߇5sݹX�'{��w�f�U!�-����P̄~�̛b�n�at�l@>
�`OY�n}=/�}�@`D���gxC��C�t�k�M0�T!�[�Ĳ��d�ӇӖ/p(���✁�x�0�����'h{C��
ӲK���A�݁ѻ0���WƖÆP9e��2��]xS���V��-FO6��s��#��O�4����^P�T@�q���l���F�v�aZ��2�J;��N����I�i�z{�+�'(����(#��;L��7���3��Bٹ��\��B�{�9Ȫ�����s�4�Q˛k�_��m�늄%=�����m�Y��c	�s`���Q���$�� O����_������g����(3w,�S���K�ʌ�E&%3�eh)e�R?���Ғ6��F��
�Q�KΔ�__~�|�aj���Z��k1�,cʴ�9��5�]��N<W�7XVk����Ǝ�<��n�{s�0����^�:�Izn��<��+�8n�;��B�fJ����X��lY�$=��&os35¾6�`r��U��oA��!���U��P�xp��ٞ?���}'}�%=��W�Q����8������*�[�Q���6�7����    ��@��\ ~(^!6�F�_I���7�R�$�JR;�����y�
��H%���1�+Z��Z7���Y�`6M��4�}.\�q`�2��ȧ!���P�78�#�]S�Y�-U�lu>�'?����(H �h8�i��vk�qb|l|^5�cןcJ@k���<z�w
R��^x��K�M��Oʰ0q:mZ�������(M쐆�v�Q�dq5ofD����V�$�`���lm�ӓ�D�3`F�ʔ��v�J�-��\uM������h-��"��@Q�Ur�Rt��q1zu�6���������/�/MqvZ[z� /z���F�B���S������kkKP�k�2˽P�&J�0˽��@zuTU͸��`��Ќ(�h	�D�	���Qpn����T�g{>9@Z�ni[�Z�`@]MaWݒ[�c���ƪ�T��NS���CW�T�B�|>}��s�1���`��~�"��?P!���+2���.�&w4�0�+4�8��&�>�7�4�"f3��~\�^�����������ҫVX���Z����8[;���	�,��(�����y��>�\�ښ�1�U�Y�C���얫���aL���ĥ�wh�$�LHA4��1��]�E�y%�E��(N��+�{���9vҙ1�k>��,�#�̬�w��ۈdt~u��Sj_5� @�	, ����ۨ�@�Ah�I�ҟn�F����Ҋ�~/�I�c�ڝ�]6XeR���
�k ������+�'�Dܾ�o��u;8/�Q��uB�Φ��+�ɪ�hӤ���2^.T�-�m*�� hC� z� ��}3�'���ߺ���gv>@՜�es`]����7���nQ>n�2�~����)|˶�����3l~���E?tL:׸���R��� ������gx�2_~��#�&3��0}t�m)ڀ͖]/V��&�'oؒ���l3�l�ۉ�o�50?N���5���`�@��^a�r���+��#� {���s���"(�_��nI5*��h~j}��/�C�Sꗟ��d��O����&�D����NoR;!�r�[�a���*R�Eٶ�n��]l;��~���w��|@���V�Ѝ�V�?���4[n�>�T�cJ�����tG�kA�f<Z��w��\��<�e˓A�&n��)�(�-y8�h��e�}:����W* ���y�OF{��������;{�ն��b`h���ّ�܏�_s�.���%ڲ�)[9���T���
�h�A�J7�`��V8%WQ��51�Q���Ѿܝ��9H6�c�B���2�n���PM��Ͳnrss��z2j��z�Y�l�E�c4�v�|�m0�Á�E3��Z��y����L��4��wI8�!G/��.h�&��_����.�m����n��)�ܾ�CigL�T�Ÿ�H�)��E��Z�C0�Y��-�R� X��Ue��9}�f��fo�3�e�v~�*Ā�EA��-|���Ѻ�Á�
$��;}�wf<�UT(�kXt)7Cc[Ls���&0�ڈ�Ң�r~�����Zu1���p�8����	XK�B<���_���F:���7	`��<��`��4
ڡ�M�`��N*�[���o�)�N�=��r�^pm�2=햪_�o�{h�z#_�����}-�I���s�,�N�gh��n*��.-�y��mCf�*�+��a:r� 9�6et[,h]nQh�3L�fʐ���~�	��g��g-�l'�:c�lcf`�����vU_�][�c߆�Y\Ǉ2��]���g
 �0�8I` ��<�7�lg���}�k��P���֎��^l�3ԭ<�����f:~�bC%eRś1�}���|����������	��Y�:�4���<�>��Z����B/ܱ���/���2��Y�`��n�%�Ͱ��<��П3`�)�E��R�B�O'�c^��7�0.���w��?C�&��|�s,�6Fg��h��a���2�P��D&mQcQ=9���0�Ԩ��eQ����^A��h-�n-�h�9����>[�ή܅m�3�9��h䲞G7M|�ڀK��'�k^KTH�iF����^��R6��� �}��P��E�7��á��+��Nhg��<G�_��q�n������d����-���g"�HQ�K��������u���p-����PǄr��h�:����41+kZRWֶ+́w�Î��^��q�7z�����	H��?0��sB��E~�f�����Z ^C�5�|�ً�Oǰ�z9$~l�F��1[7õ�j轇s�{Ӛp�.�|NA/ ����qJ��A�d>ݹ���6h-_�Ei�"�nюpp6M.E9��S�u%�9fɰ�VSE}#�`�t
��\��C�� �~$�:��\pr�5�z��{d�5�4��i4vo�x�h����6���zFh,�j���ih�}�`�j�1������F���oy~��j�%������]����3�[:-;ʭ��s��ɻ<h�rRώ:3�E���� [����WZ@�Ϛ:� �>�y�7ϾV���|^��=���Q��a���Rc$����F�n\V�1��~в���|��U����۪ɊH��~d�B6�u8�7�Z�ϋB���kv��Z��2r�gs���P�[��2�I��:�b��4l-���S��� �b������N?�2�ŗ��4�V��ƤPY�Cc��90�e��|�Mw]�?��z_~2�-�B��UM@���w�f�7J�>zŗ����)��Bga��+��H�vP���P�4�M) ���6fE�?�T��i��I �A��$ϳ�;�F_�ʍ�����.��D�ϖٚyZ<6��웾����¢�����|��U#Lbz���]�� ]�톔Oq��|�q�ʀ]��:sO��m��b��m�
��f#Y�����i���I��d��`�&���^5
��z�rC���
�AG�]��]�m���f5tS�]ϦJ�*�pnFv\��w�����h� hGh�:�9��u>�zW�D������`-��b�Xg=R�i�������u�%,�N�u��&OZ9K�UТ�,�!�I�XWhW<�R<�%��9F�E1�R��}9��Deh~kd�j���ZY�5�vG���%F�N!��.���3�����`(� f����۟l� ��\K쳦�08���N}��ţCAM��F�S^F��K���ќ��]�F��z@��_HE�j��� ��#���@�x��\��P�>;����y� ��jk�)WJ���%�#&��UM�a."rR�r�A��o*7�M;F���s8x<L�Pa^`GW���֛?<�>�a-�Uip��{o��x�ƒ��]cZ�]��Y�X[R<���L�R9����?���X�n�Q
«�	<(��}��Z  �hIX��ĉ)kͱ7� �]7�3w��$�;�,��64��(�7��=WTI�֋V��ih�-�q��~���۰���6r����YUJngY�En`����sf|(xk�x��+�џ���*)����Լ�7���i̣#�!Ek�ח�оP�����Y��^ik5��s�O�P[}��j�ݚ.��H0QaC��:T��+hTé���3��P�ȍkyx������O����Ϟ�`A�&�;U�p�:�����Ȥi����tta���n� ~/Z���(O��Iە���4��R2N��"QARV%��wƔ��S옫�1㾽m�l�8WѸ���h_N��DǷ��)6�*)"'-��YȆD�NB\?;L�ߍ�lS�]=����h�.��HYc7Ey��¬<N'I��ae�q�a��ؤo����s��6�,֮������6�z�%0��?2�1hl�[�J8�+��n�.m?��Jk�?L�M���Wm�e*<��D�?W�Mdx�����J)�w�|{Y��L�9��x�2ze֪���2V� ��E5����{�A
e,O'���j��7 ����kvtv�w��o$A{�+���ѕY��K�fNlfv���w
�vS�7d�Iy�&P?���\P�l"Xwz�D8~!m���n���׽xn�`Z�r�ۭmh�N�T}R��]�Y�    �����*y8A�ݩ���,R��P�]���ji:K�*(og�G��q�;/�etd�a��; �Ǫ���o��	�Lx���� -�3U�'I�{~�U5e�e�0}��+����0��%hmGk��B�C�:��+?J�t]���x��flضa�hq]!�X=h�2�UX�>A���C�2Or,����[�]v����w�>�"�haDz�vzG�՞�Q%-��ͦf��X�f1�u�	W>����%�?�gf�^ �A!	� 0|`p@/�����ߓ󩭈~����lgu�|���l��5�uQ�jˍ�|.�2Oho���S�1/]}�:��A��^Wog��J#�M+����IC��Y��;Ύ�y*l����a�o	�mpQ�QO�c ����)I�}`v��3�7
� ���u�.Kk9|:0`:t�eҁ�=�نcjm�3w"ߞY(�2Q�������(Ban� @묁r1�R�;��S��� ��騱�n�7��5u(;m�e,b���H6>u�2�2̋��]�=�5��I
c
OP���]ib��7�� ��T�< �������"D���a;��4Vڒ�os:�,��u�1�y=�N�<�^~r�{NO���{D�X{לK��Q� JC r?�Ȩ���۵��[�m�w�o�Ґ���5`g2�%ú�f�Oi T4$�`�
�\���A_|���}�����}�+�n_7��Rz���lg���huðm��xQ�׫��j*U+��X��Ц?i��gHYcLh�>�$v��طB�`�i�A�T��f��i�b���ޢ�Y\�ܵ�Y@I|��n��ښ��TC����c�[-��Swe!�������׏��	���Otw\�\щ���'9:
l*���M��s�"!�B�}I:�Tk�>�����2B*z�; [��R���m�>�׻�"���4�.�$'���0I�\���C��[�u*
L������x�qM ��s:�
N�q��(��G�?�zS��}�v&��t5����N�*�u<�g�}el��2
��0�<_ ��WȜ?�\�_z�*�G����v�F(,�͗_���|��Z0�VTl����(__?7�IJ�"*A�����z��^l��ן��Y6Mv��x� ;L�_�G~��`-���Yz�V���<��S?��vxٷ]�8�筋a�F�p҈�|��0����� ��'�"%�3�%B�$��ZOͷa�i��=&���diך#�f������="�̳j�Fp��l�]߾�zw��,��Њ).���
��;���i�̷aW3㸮�Li����aj�ٲ&k��tb;��!�S�hBmmG1��W�k�3�*a�i���3��L��Nmٙ��|w^_��c�v��µ:�Q赼���6�j���Y�>��p��! |��ZD����_9���sF�z>��|w^vkde<r�Q�3-�����ru2
n���F�2���{��	:�ۯl@�!��	�^W_>������5%��ӑn�e����i�3y��'��s��'k'��7���Bi-��x��܇��pZ$����̼</��L���.���x#e�v�n�o��,�j�*�r_���ݖƔ��AӖ�_F�l�}bUm}�o�*���W4Nfd���nE�����	��g�&�Q|���;�G>�go���l�QΥ�V�u=[�����K��X�^K@���D1�o�9?	���~l�f��B�-ɠ����̷qw_���P�4�
/�}�k�&�S6�}�Z����6�~J9�$(U�bzg��;C��	�����Oh�R�A����79��[N�bkF2%�B�G�g�Ͻ��f�e��+Ke�Ƽ8�#������E�/o�h�����@=��J�Y:J'̥?~�/���(g�+�ٿQLf��kQD)7OU8or���5(�hl�01����ܛwz~:���t�e;ڗ�{����A���H��ji;U��<�*"��yr�*����O:��^?e��Uk���;?ի���S�	�<\�>��K�)��#�;�%e�)�g	ܭ0�4��� �z�1�n���_�0��x��v��Z��gE�(R�� �.����ɐ`����� ��*;����(wP�����x>`�|�)��f�s*��\�$EΉ�
p�����}-I.������o%n��NC�H7����2#�s�6�H�T��r̙�a@�6(�PNWh�U��$����7��oⴡT9��}܅���o$,�7P�5��rY���̅m��{�=K������w�H%�)+ R����7l�Q��#���	X�î�v8®d��]���I7�n#
�y,�)U�f�d[Ä�Vh�Rd�����.ݻ%�4іZ��A��	��>(��rv5]�C��,[|�$Z��Uk�:�m^&�V��g��v�3
w��W��.��>>)�YN!9�z^38������6�ڟ�!��R����5�����<�Y9��ܴ��L�,Y3� i��7�t~dq�U5!{�J��SRu��!� ��+ܝ���z��-_Ne���a�\�,a�]_8L؃,�uP�Ao�K��d��xK�?�f��l'���A�&���)�h���x�RvGk��/���~e|B�,0�6�����2��j���0)��N�B�Pj�M=6�t})1v������5u��i\oî�	}���9��Gm��)�̊����t����ܑ�1�V�� ��M[��>�����q�M�@a��hD�3Dz��Eޭu��4��3������U��	�d����pW!�Ã�$����d�3�8����qa�{�w����=4o��/�������c���z����?h�H�N��d��6G%H"�`Qj	�d<���	@�N3thu��7����1�Gk�?/�ސ�k�;���s2姂�rXG����l�d�^o�w��ZZzo�\l�,]��IET�7��&��?�{�����b�iČ�1���Qf�A)�J؍�׾1�b��`��;h}/:s�(@g�U7΁b���~.���,�Ӵ���r�?/ZR>��:}�E�UM�4%��8�ֈ�qL����*����=���' �3mm�ap�[��zJ`��K�u0� �Ql�F�݇yH5���X��KJ+��
G3^�c�g�t��Zґ�e�!*�3J{�9�a�E�t�.뗸��Mn��VyY���&S�&�,݈�%��R�\־� �`��O��d�}[4dd�g���	
 ����e�w�D�L
��0�85���(cɃ"s�22�{ej�yٶ�.�����7���� ���s��>���GC���%��k��}^ƺR�TM<N�������m��I;!(�Qzm<�xb̖���Y4���N#{]{����}��$�/��(��g�n��Y.S_�F�e���j��;�N����LF[N��A�� *cAP�@g~k�����]�eL��Mi/I��S^y�o�k���pKX�̌Ef�
�"�&r�[ݓ�h03^��f(w!�;�*8�?�K��]���K�Eh�>eX�����"����gؕ�w�a&�1�X@{�\ڍ����z�^ޕ֒��F��`��q��otw���!s��34V)'.Sי����0�;o0W�m-�]H��k�T:S�3��(#1�y��j7������>��
�����tL��d�|�a�c���33�eKn�g5Z��X������/:;K���B#�s*W@��.hm���{���(t+�QҰ�M��WN�:V���2	ۥ������R����]2s��1�x{���9�~��s�K����qPm�qm)�{�M&��ӑo�E���4�V_��/yf�1w������ XG?���͵ ��;H^�@3x7��&U��-���`_��ФE�|�m��<�)��װM��Q��N�똮5g8�Zn;�B(�-���.�w�E�.�A��7>(�G�>�
MZd�#�R�OH�����9��(��zn�����)EGiȞAo��t&J@^!�67b�/'	��n��_vww!+n>Rqd�z-�KKP�_;��&�WK�\�1}+    �%�W��	~�OI�嗟�m������&?o���a�����h-7�H�9�&�
���CUI �jP���ʬ�
���K��������M��rZ��y�dSx|`D������Z�����"�֢'��y�������ŠX���gm��|�\�����[q4�������/?ļ�[lP��j���Fj˜����z-TN�h[��C+����$���h��1F�0��Z�\̇��/m��(<i/T#��HaP�����'ח?T�Pn�|�h-��[����ؘRb'�^ϋ̋c�r=%2z�>oY��.�3��@r!G݁QII5	��TW��c6�\��u`�{a���b�&1�#\L�V��Oq�����>�AH�%X�&�]�^�l	d> 0yB+gtw��g@�/��~���e�c����hOVF��Q|o5/��6UDe�,}4�eU$�9�N��,f�A��!$�N ��~ �VAo�Ҵ�,6�fq�=�}���}�?/`�C.�q��m�Љ�˝��4����j��LJDm­ӿ�|���곮�њ{�g��)+������.{�?/��o������A���J������,����a:�u�����|]��C9%���c`+�7<ӊr�jG˃;�O���o��tӌ��av.��9a8LEi�i��.U�F:��Z�	���" �	�ǯ��㧄<چ�rC.CK�L��r�/z-=f��H�Ү��I>�����kS�3�ei7��N�N��B�:vga��ik-ʵ�^Q�B9����х��]�C�%�:Z��Y��hF�Vv�]TES_��SA%���M�	:�Oi%:-̧�@���8�R] �-���>8/�>��)��T��{M��Ӷ�|�SSt6��,Sba�`�Mօ�muOo `���Pl�w)��Zؑ^�E���A���.7��%�$<]���ab8f^���V���*�E�eqB���i���ߐ'<�C9;��-�wFw#&hV����Ah]��-�p�K��dQ8g]L�v��Vq�Vk�X�.��>3 �@q:�|�r����s��=ѢȔj
��Zn�˾C�m4l)w n�,��l�_�ԟd7��-w2;7V{y��=�>�Y �}"'�G~�(�Z����Y�9`��Z�B�?�7+;�#
�2,�;�M�CY;n�[�RVZ Y�ЛC�r��8�W��w
�_�b�zx����˷�s|K���H��@|H��� r\J.yii��0�讇�,��	f��)�BO~[��]H��:��������J_�H�W�5���@Qɽךw�e*����u��ת��w=n���b�;P샜��*�Gދ���L���>�����=��#���ڑf��M8UZ� 5v�&T�M�3�V�~&D:���ϗ-)_5���.�����p���On�X��Ȃ>�a����՝�4v�4�0�9=O(	�l���v��V�Ǹ�����B^�Dߋb}�@a=F߮��y��õP�%�{!�����+��m;�T���ۗe:�����x}��Og��F���/���KH�]ac���8�r3>�"�,����6s����b��T�Kd�0�K��,ʺN�rp����Ƹ�����Ȓ� ��)�i�(���� {��f��Z�2|�k[���3M�O��p�u��\4n,�<[�:�z,P�zdV�dFǐ1�C9���bʳ�(0\�}<�\�������*��0��&t�y�-c�m��T�Ll��
p���4�_��\�i2*a�F	%6�zC�����>�r�?�b@	��];�6����D2�Jf��y�V�|���q��.��,���c���v�BJA!�����I��喚�kQ��#���s���[�ڵ����l�d(����5���!�E�:7�+])<�p"¨	)(J�Q� ��|�|�!�s-֣ �_�b�6O�H�<�-�g+�M�Azq[
����fߴ�b�T����c�N/ ��i���2�YO)�r�-6:!����X]^���.����\&m	��� t���|:kQ6dƐ;�3�x9�!L���?~�K����<�]�nی$�"�6e�&w�=��7�*�#5���Ϻ���A1�V
�DNQ]��A8ʔ7�>�n�Q���Pޫ�$��ڕy!DE[#i�P�}cS|1:�g ��:�Ti�A��<�R��O	�e<0����Y�b�G]l
�^(�SP֙��Ib��ӯ!��e=��m��*�BL�Y�C|�*[�hs�Y�x�eE7�����,��d�Ÿ��h�I�dR�ËW摳��"�j��,k�h��V��e:��r�������3ȯ����~�$�'��>.�}(kx� � �喚�[��<�#�=ԕ�󁛾��#��[�e�j�D�{��Yodq'P����y-A޼|ńNC�.��?8/�QW�Ei�&����������ZMQ����!�ٲ�o�z����LY
�t@�CN�N�6o�8��5�����6�r�!�p�Sl�I
�<+Y�D�*�j���6{�c������P�N] �v�[&eu���j�ӊ���Dş�W������BC��t�����J26�If5��&��\����\g(� ���?�7;���-z	
	D*0I�����Y�-`_�<*��]s��>����U%n�Q��|�V�
��<DL�O #?@�˔��ݭ:��$<��c��"_�E����B�2S퓿DȊ~��<�Y7I��b�Z�z�6�9���9U(%�. m���	 "|�,�LKd��-g k�:󦬎Y�.Cc��m�ǋk�ʭ���V�kr�����G-��,DK ���&f��o9���S����{u9�x\n9X��zR��~�݇ܶ�Xl�L�`JD���sR{�#ߘ�|�Ƈ�܆�ݼx�(��`t^ l�$��Y{�pu�����yA �H����6Q3��hU������d)��+s[ˈ ��Rt6O`���/[��4p��K��,8Wt# �z�oIX�&���ұ��R�vfԱ��T�9W��,�*�����T`RO��U�o���⬩p�����p&֔OtDE�.�>�"�XT Q���L�;�8IU�,�ɴvk��?XI2ۋ�,|#c���Cn�pBg���v�~B�x��+�����6�
�w�B&��g�E�@W$K��m�ɥ�������1+۪�NPi}��A����د8���b�7~��
d0�ݤJ�D��[� ֢tܵn~j|��4+;��6I�8�����ɪ�q͇����"W�vi/^u�GU	&Nd����BJ�O���-i kѓ?��B���V��}��G�h�mr���4��R��k��I���"�:'m��w(��{@��o)��]�\�GS����)����鵭�}L]�/��S����"��
. =�_ԏT�їî�T���u���R���fC�wW��f�e�j�����^��,��E�T�D�C�K�C �:$y?Aa��p��7m��vb���h)��RLmc$"�4I��K�3A_�k"E��9���<��b�>��)�_��
?ۆ�H�t���fQ2�\�����+��2���V��m3�r�H�e�셥���*�ƪ&c�	��㈧�z�Vݚ��n��N5W�����Q)���`���2`Ǯ��tf|���4�V�����[fZ\��d°@�Ӏ�	dʿ�
&�M��:�N5�
c֫�:Xʿ�p1�r\�-��6V��,aC;��-���z���A�hx���f�����I��)�t�{�h�K�T��-_ �@����+{���lM]���Ů�v<�XUc/�gYP�?���70k��� <0�c�_�R,�ߎ���[��a�g�����PN���~%�r*�,s��Yȷ:��Q��c4��;�bp�1P�����Bi���Kt;��-_��j\������N�|K-U7�.���M�Gö�͏���d6����f=�OA��+�oT� ��^_�
oa
�o��Q�[���v�7��^+W�)v��	�H1o^�5�d�ƹ��H��̵H!�}� � �
  �͕TG��z}I�_�	�c|�[���R���m+g�҅���^5.Yw�k�%��"���r�y�g�P#3��l�-�dt0 �Pl}�ʭx�aK���-���kގS�������%o�FMC=;�����5����rܙ�XHXh���YτX\i�^�
�t|�jٳ��T_�B(�����f�E�P�����f�T��Y[U�ZK,�F� >P)R庁�y�)e�I^�7Ϙ�C����g8#(���t�EK����X;)	���5�5�lȊ��,gicZ������)~�5�!����;Ǭ�~��
@��0Ң�|pto��^ر�#w�ߢIrwbbZc�o��_;����d�3Px��BD]ヴ�/u7�*ZHաC��\1}���頒�o�X����7{稜]X��L��~,B�F���:���b��6�G[
a�H��,����E�o�Ђ*����#}K�Z-�$M�*�}�?�mV�2���z�ݲ,,�-~`m�X�����к?��]��yHrH��'�$j��ў}\����PSB��K���Kn�bi�hc"k��Hg32z��a���60�P���|��9��������w`��2{����܇]T#�d�k��4eb�#��j�Hv��3�^U>U�:�/�?����b6`���r|/`NH{Ew	���8!�V�����#���e�,ǤL����C㛁5.C5�_vI���{�X�Km1ʍ��³����3pT���dE�u^���p���A��86�7�e��:ۂ81ר^�>Z������(|���J�r��-�}Z��]��?�� ��s>kJq ����p��4�%3�.tS^�Σ�k
ۤZ�l픟Q&̛�pޥ&�Ӈ��6=�dN�ޯZp8��PP��`�A�;X˿����f�7w��oV��?����9��&^xXtM�Ġ}��'�ӷ�R�_����..Z��<��[�ͦ:3�/k����Z��|TP���s1%v�U��Uh{�䃌�r������_a��vZ�:���pʆ��1A���B�6���A]��y���;6O�#��5�պ�[��Q�e?�¢�nE�EeV��Bu�����D�#�ޠ����{|��	Ɩ/��,ݷ� ż���Z����i�`�1s�J��T���%i�>���hm��kk��^ay�x������������]փ�{+�	�l� ��dl�x��0x��D��,3���d��$^�0m3�aP�9�)��NY�j�,Mu�4�F��k@��U|����2�X��V>
�4۵�Zg�k�V���ݰe]av����V�)N��_��a� R��z�J{qs������?�x>0O�oe8w�w	�9r)c���X�<M�m�2���ol[*��G���~�T��'�
�`��g�K�����Fi0�6�O�����rw^����X�R��u��goۄ��↑O���{*��x�҈���in�"���0x��k.�d��q����������7�;/�u[�&�W��ż4V?wY���)�&1��Q�j�0�8/�;�F�њ����� �D�U�AIv$�����^��S:�����ʨl�����9[�r������,�+� �;�`�u
�Tm���F��3�P�e�/��=�����b.G�̠\J�0���z-)��K�n�=�k�U?v���w��i1����R�}�e�>9�A�S�%����w���(97��T�̖��pj{/pxf����Sl�XD��t�AjRۓ�`C�!^w��R��,���[N���T�m&�>!�a���q��y�7�Q�W�lŵ�K�d@�Q٘@CR��e�QNs� �y�|Eg|������Q�k����Q�H�˧ao.�9���V6��H�aX�J��w�'啔���h!>���T ����/����{ĺ[�	֢� ${�^�>�O�+�F�u��b�8ѿ�V�ç��cE9|�0���8��1�e���d�l����� G���5�;�L C�'j:��l�:�V�S��ܕ��q�x�ɞ7L%`���O�O(���{�����w`����(�G��|^L�ނ?*f8;6)e��6-��ש��v[���5̢�a©(ު�˳<e��Lٮ��F��&�	�јI~t��w�o��F����3m�[�0�0w��+�.LU]me\P`A�q�W�ވ_���]K��5.��yÕ�j�N���Zԧ�&%�j�GFe�Q]K�B�[��o�lr��(�NSab�f٪J��M��IL�Oh�	����tCr������^��<Pc�m0�	?�W�fEg�a.kW"|�2�y Z0#Ƚ֭�Z�ä/�bܯ��� �Ʈj;������x�C���.G�Y�љ��B>�3���RMX�@��o��Zw;K�$���>Rz6]#4���������V�N�,��m�"8~� �e�P�n���">��}:m!}_��#��s�����-!ɝ�GG>���e&	���t��9	B!��0tw�[7��x��5v�1�c��%���p�����ǀk���#+�>���:4)�*�ݥ��YE��Įˈ�Wt�^�n���" 6�)����i��H���>�:D�z���dD���$�I�\�D�*�p	�!贤�r��;���OO��7$���e�<�����Q��Ϳ����jv%²�C��ȥC�][t���p����._ϟ�Ďy(F�߿S�O����J��            x������ � �      ,   X  x�E�[��:��f0�b)��\���q��K�Տ� {����w]��>�Z��O����>��C}���|��_��(K�IZ'jmK�Ǔ�N�:yq����ɋ�''��oNb��<�y�$�I�����$��f����ɻO�}��y���k�W�x�g���p��yW�%��g����}��g������Z�k�K�>����s�������}z����+U��絹dI�������R��R��������$>'�9��I|N�s����O꧿O�O�E>'�}"�'�}"�i�6���,��}���H�^^��K�5��>W�.�.͹����~�?h҇���:InqCny_�Gݹ�x+F�|�Vxw(\�0\9~���"p�	�.
�+%��H\(.�`�g�H�oݒoɷd���x[b[�µg�Yb�Yŵ-Q��������E��`q��?Vf�J&a��XX0��������z���n�c�e�_�'�6�@ ��5{�d�v��P�P���='fә]�oۑ<���lA����(((��h��?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?>��<����g#�������������a/
;N�r⳥[6u�O؀�����M(L�0���5���08���08�g"����^��d H��d H��d�� 4' G $�D2�L$�D2�L$s��J2��d"�H&��d"�H&�sn��d"�H&��d"�s�������P8��9"�s0D2�L$ɼ�)�D2�L$ɴ%�	d�{���L �2�L �2����,��1qL��1qL��9~K�1qL��1qL��1qL��d0L��d0L��d0�����������*�Ub�����;��E�{��*�Ub��V����`[)�Rl��J��b+�V��[)�Rl��J��b+�V��[)�Rl��J��b+�V��[)�Rl��J��b+�V��[)�Rl��JQJQJQJQJQJQJQJQJQJQJQs�e0��\s�e0��\s�e0��\s�e0��\s�e0��\s�e0��\s�e0��\s�e0��\s�e0�g0����\Fs�e4��\��aqX��a��:�5���ܝ��9��w�.yn��^�¢�涟¢�(,
�¢�(,
�¢�(,
�¢�(,
�¢�(,
�¢�(,
�¢�(,
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
�¦�)l
��v<j��f�l��f�l��f�l��f�l��f�l��f�����l�2����K���l�6���L2��`3�6����^����}�      .   l   x���D1ϸ�U������� �Aڞ4_`���oP٩K]s�-�<�)%xDJ�XʪFl�,�PO]�\o��y���Ge�t��:�ň����\'������B�6         F   x�=��� C�3%Ja��?G#U�)z��e�u�H#��8b� ��d�eLq��U�^��c��KzX��         �   x�3�0�b�]�^l��C���.칰���8�J�SK*������i����. {߅�[@j4��:u3�tK��̢�l������.�s����̭���2�0�/��� =μĤ�"�9@ŉ\Fh�@ʁ�NS� 
l ��/lՄ������ �{�      (   �  x�͒�j1����{��H+i�S��V�`o�$^cm��&�!9�S�KI i��f�(�:	$��c�
�H|����9��5tߞ�j�����P��*W�}R��ڃ�?~������h7��2C�8�\0#���=�ItI7���[��킮�1U:��]�����{j֕��M{Խ��jyƹ�񂡴
mr �# �C�j�?{mO-�?�׉��1���N<�:���U5��h}0/�t��_�W��LH��!2klaT�W`�q��C�s[����#�ӎ�Ǜ�q_E�w����Q幆ڏg;ո�S[L�F�~��÷|S�(p�	�AX���:)L*T�à῵i�΅�2�4�+f�'��P�P�!(�f��K?�a���pi0˵������zO�}G�      *      x������ � �         �  x��Z_O�V�Oqk�ڦ�H)���M�����T9�I<;����	H[���ԡ Mݪ�R_��2RA�'��+���s����6P�kE�g__����;�N��w��gb���	�nM$3f��-�󖴴cYz�3���R�	�5ff�4���^��u
g�֖�u�b�����+~�h�`o �VD/�h�̞-�7��+���L{Mc9�X]�|�Z�2��^�K,L/�� ��g�禗�����X�+�U��9g��9�h���<_��t��JNF_ul#Z���-I�4�nf�ܒ6;3���x��R�0�P-�ɘ~��&��م�+��V6Kp���,����2�Kf�&�9��Y&�g��i��b�-t2_����hQ��(�L;�X�kN��+V�z֓1@�zo����z��r�?a1�o�䧼)`��E�,���e�X�(%�,~���=�u�]���^A�)=��u���A�w��v�pM���Fu�ͦ>��b��n�/d�����)@Κ�<���1��A�$c��FY�%�!F�6�07?w� �ǻp_�FqMw�xq��xG��|�8 a8H��G��j�$]�fC��;T=��~0mx�G=d��fԼi�7���7����]B|��z��&g'�3��;F����{?a�f�ت7��L��?�\8��ɺF��쇢盫e;����ߘxěLT�mHT���-�ۼ��瘷���O`<����T�1�`�9?�;j� �N1�%*���gp���y߱0L�t�V�9^�U-�awG0����S��W4(��) ��eUP-\��A�x�@���gp�ž��L^�ѾD�ҷ�L�wu۳ ���z�5��.iEh��9���-5^���T<k�0M'�g������BV�+�m�$��P �"ڎ"ĮZF�3�Ӏ���#��)u�5�/�?�N���a�E�!E-~1� �G��vr�b��:�����Їpm� vA�^����'��Ceh��L1y��|�Fl�)o�Ta+x>x��<9���!�H�)�2�d7�D��������*���� BȂ���A�0�`/�E�r��.`a5��O@b[�#C~7n���$�$d*t���?�Xyb?�J�âJ٥H`)V�*���p����7��0~�I��NH�L39��_��z�]�a�7���<#3�(�]E��?�2��(S�Q���Eɇ$Ց��(�P��5�!dL�k�^���\�ȋ¥��R�eq%�GV�B��E�Q9a.0�5BN��a�L�a���9)="j�F(�����Х�z�����O���c�	��C 	J?*��b�@�Di]k�Jjk�&�@� `ń�P�b}�'' ̪�ǀ���6X�b������}�H��^ �0rSԝ�b��$[��� `Ȱ>�x�U0�0Ű�-���.d�*�Y��EBW��fڰ��i�$I���`.`ӂ�M���Fw�5�wR`&��&yxL�YS+t*} <��nH��-C��0y�E�ɱ�����-�ǗE��N��`��b;:��.��{%���S�#Eorf��I�o�U��������>����nOƼJ?T�'���m�����1��k���;|_1=vr0q�+c̟�6�%�� �QP��u�T"=��UÑ��)"$�7�ޖ�GJ8�"b�n7��ّ��`��cv�v��ӭp���Qo�W�i>��^ܧ+s��FV#�i@��NI(���8��,�Qn��ux|vz�}x����^p���G�z�PLY�}^�������텸����X���O�F|n0�3�ё�.�������G���`�1��/�_����:I\'��	Q:�\֠!T�T��f�t�K�x���7�D��UĊO�4��#��l��&�i<=ݟ+�[l�"�S�Ѓkr�%�5$Vz֧��<pY�j�� *mn��#`_�E��c��E��
h{$��zD�)�A�1�	�?`�ᚦ,���5Dm �j��t�F0\5��CO.�0'1��oq���^��{2��c~��^�_���a%�L�YX�n��[N։��W����g)#`�?�l&�V YYNC�=(�`��[�8.Q<?&�/Cp����r�刽Zюk!���U��u�h�0S胑�3�*�M;��cr%:99�%_�P          H  x���Mk�0��)t����Q
�0�vc�Ai�l$}q�Bz
��J/=m�����vM�|�MrR׎k��ő����_�L	п���������PO�W}�/�l�6���K=�7z���L_إ[s���6#����5�m��'�N#D�)dL	�����g�X��'���v���π���˭��ʁ>�CAs�/�������:�.����JA����;J��L"� ��Jr,�i䴥7��J���n�ߖ35�f�pk�i�I��N����lT;%.����gTD�q�^a�dnw߼"���)W���>���Y��R�I������J%|%fRR��Z`Y�e�\�"���UH/l���w�W渮��7�o'�a(��!�2`Q��r�8�����)d��T�J�ψ">�x�`�"V�V�*���,j�f�§)��n֭A������Z֡b�sFBdYg�^qZ�5�o��w�'滍���r;�ej���)��O�;[*�p0
lLs3r'��o���gn��OU?N�k�E�Kw�H���\��9���ߠ��VR��a!)��F�S�eV��s�
�{�h4��i��      &   O  x���]o�0����҂|\��m���4�,!0	b�&�z�J��oN�y��M��JV��U�E2(�$���VH���/�7d��(�5ȑ�����g��&�x�W+W��rzT��*�7JRx�p[�|�����u;3Ѳj�dIFA_��ۖ�o{*� �ц7��Y&�S��HY�ALk��K>����pg��� �����}(6Nm��{ԛ�{��
˸kY�)��a�����,�quV��=`�{A�BP���������e�<C ۗ��f=��.s$6M��m������f�	��<.	��0��%��1I��&�.1}BҨ	fH��n���m ��d      "      x������ � �      $      x������ � �      0      x������ � �      2      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      9      x������ � �      ;      x������ � �      I      x������ � �      K      x������ � �      =      x������ � �      G      x������ � �      ?      x������ � �      E      x������ � �      C      x������ � �      A      x������ � �     