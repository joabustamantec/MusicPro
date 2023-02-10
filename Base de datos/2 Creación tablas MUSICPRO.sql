DROP TABLE categoria CASCADE CONSTRAINTS;

DROP TABLE cliente CASCADE CONSTRAINTS;

DROP TABLE comuna CASCADE CONSTRAINTS;

DROP TABLE empleado CASCADE CONSTRAINTS;

DROP TABLE marca CASCADE CONSTRAINTS;

DROP TABLE modelo CASCADE CONSTRAINTS;

DROP TABLE pago CASCADE CONSTRAINTS;

DROP TABLE pedido CASCADE CONSTRAINTS;

DROP TABLE perfil CASCADE CONSTRAINTS;

DROP TABLE producto CASCADE CONSTRAINTS;

DROP TABLE sucursal CASCADE CONSTRAINTS;

DROP TABLE tipo_prod CASCADE CONSTRAINTS;


CREATE TABLE categoria (
    id_categoria  INTEGER NOT NULL,
    categoria     VARCHAR2(50) NOT NULL
);

ALTER TABLE categoria ADD CONSTRAINT categoria_pk PRIMARY KEY ( id_categoria );

CREATE TABLE cliente (
    rut_cliente  VARCHAR2(15) NOT NULL,
    nombre       VARCHAR2(50) NOT NULL,
    apellidos    VARCHAR2(50) NOT NULL,
    telefono     INTEGER NOT NULL,
    correo       VARCHAR2(50) NOT NULL,
    direccion    VARCHAR2(50) NOT NULL,
    usuario      VARCHAR2(50) NOT NULL,
    contrasena   VARCHAR2(15) NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( rut_cliente );

CREATE TABLE comuna (
    id_comuna  INTEGER NOT NULL,
    comuna     VARCHAR2(50) NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_comuna );

CREATE TABLE empleado (
    rut_empleado  VARCHAR2(15) NOT NULL,
    nombre        VARCHAR2(50) NOT NULL,
    ap_paterno    VARCHAR2(50) NOT NULL,
    ap_materno    VARCHAR2(50) NOT NULL,
    telefono      INTEGER NOT NULL,
    correo        VARCHAR2(50) NOT NULL,
    direccion     VARCHAR2(50) NOT NULL,
    usuario       VARCHAR2(50) NOT NULL,
    contrasena    VARCHAR2(50) NOT NULL,
    id_perfil     INTEGER NOT NULL
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( rut_empleado );

CREATE TABLE marca (
    id_marca  INTEGER NOT NULL,
    marca     VARCHAR2(50) NOT NULL
);

ALTER TABLE marca ADD CONSTRAINT marca_pk PRIMARY KEY ( id_marca );

CREATE TABLE modelo (
    id_modelo  INTEGER NOT NULL,
    modelo     VARCHAR2(50) NOT NULL,
    id_marca   INTEGER NOT NULL
);

ALTER TABLE modelo ADD CONSTRAINT modelo_pk PRIMARY KEY ( id_modelo );

CREATE TABLE pago (
    id_pago       INTEGER NOT NULL,
    monto         NUMBER(10, 3) NOT NULL,
    forma_pago    VARCHAR2(50) NOT NULL,
    estado_pago   VARCHAR2(50),
    id_orden_ped  INTEGER NOT NULL
);

ALTER TABLE pago ADD CONSTRAINT pago_pk PRIMARY KEY ( id_pago );

CREATE TABLE pedido (
    id_orden_ped  INTEGER NOT NULL,
    nro_orden     INTEGER NOT NULL,
    estado_orden  VARCHAR2(50) NOT NULL,
    fecha_orden   DATE NOT NULL,
    direccion     VARCHAR2(50),
    despacho      VARCHAR2(50),
    rut_cliente   VARCHAR2(15) NOT NULL,
    id_producto   INTEGER NOT NULL
);

ALTER TABLE pedido ADD CONSTRAINT pedido_pk PRIMARY KEY ( id_orden_ped );

CREATE TABLE perfil (
    id_perfil  INTEGER NOT NULL,
    perfil     VARCHAR2(50) NOT NULL
);

ALTER TABLE perfil ADD CONSTRAINT perfil_pk PRIMARY KEY ( id_perfil );

CREATE TABLE producto (
    id_producto    INTEGER NOT NULL,
    nro_serie      VARCHAR2(50) NOT NULL,
    codigo         VARCHAR2(50) NOT NULL,
    precio         NUMBER(10) NOT NULL,
    stock          INTEGER NOT NULL,
    nombre         VARCHAR2(50) NOT NULL,
    descripcion    VARCHAR2(300),
    oferta         NUMBER,
    fecha_ingreso  DATE,
    id_tipo_prod   INTEGER NOT NULL,
    id_modelo      INTEGER NOT NULL,
    id_sucursal    INTEGER NOT NULL,
    rut_empleado   VARCHAR2(15) NOT NULL,
    id_categoria   INTEGER NOT NULL,
    id_marca       INTEGER NOT NULL
);

ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY ( id_producto );

CREATE TABLE sucursal (
    id_sucursal  INTEGER NOT NULL,
    sucursal     VARCHAR2(50) NOT NULL,
    id_comuna    INTEGER NOT NULL
);

ALTER TABLE sucursal ADD CONSTRAINT sucursal_pk PRIMARY KEY ( id_sucursal );

CREATE TABLE tipo_prod (
    id_tipo_prod   INTEGER NOT NULL,
    tipo_producto  VARCHAR2(50) NOT NULL,
    id_categoria   INTEGER NOT NULL
);

ALTER TABLE tipo_prod ADD CONSTRAINT tipo_prod_pk PRIMARY KEY ( id_tipo_prod );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_perfil_fk FOREIGN KEY ( id_perfil )
        REFERENCES perfil ( id_perfil );

ALTER TABLE modelo
    ADD CONSTRAINT modelo_marca_fk FOREIGN KEY ( id_marca )
        REFERENCES marca ( id_marca );

ALTER TABLE pago
    ADD CONSTRAINT pago_pedido_fk FOREIGN KEY ( id_orden_ped )
        REFERENCES pedido ( id_orden_ped );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_cliente_fk FOREIGN KEY ( rut_cliente )
        REFERENCES cliente ( rut_cliente );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_producto_fk FOREIGN KEY ( id_producto )
        REFERENCES producto ( id_producto );

ALTER TABLE producto
    ADD CONSTRAINT producto_categoria_fk FOREIGN KEY ( id_categoria )
        REFERENCES categoria ( id_categoria );

ALTER TABLE producto
    ADD CONSTRAINT producto_empleado_fk FOREIGN KEY ( rut_empleado )
        REFERENCES empleado ( rut_empleado );

ALTER TABLE producto
    ADD CONSTRAINT producto_marca_fk FOREIGN KEY ( id_marca )
        REFERENCES marca ( id_marca );

ALTER TABLE producto
    ADD CONSTRAINT producto_modelo_fk FOREIGN KEY ( id_modelo )
        REFERENCES modelo ( id_modelo );

ALTER TABLE producto
    ADD CONSTRAINT producto_sucursal_fk FOREIGN KEY ( id_sucursal )
        REFERENCES sucursal ( id_sucursal );

ALTER TABLE producto
    ADD CONSTRAINT producto_tipo_prod_fk FOREIGN KEY ( id_tipo_prod )
        REFERENCES tipo_prod ( id_tipo_prod );

ALTER TABLE sucursal
    ADD CONSTRAINT sucursal_comuna_fk FOREIGN KEY ( id_comuna )
        REFERENCES comuna ( id_comuna );

ALTER TABLE tipo_prod
    ADD CONSTRAINT tipo_prod_categoria_fk FOREIGN KEY ( id_categoria )
        REFERENCES categoria ( id_categoria );

