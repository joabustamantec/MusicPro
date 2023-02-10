drop sequence seq_id_producto;
drop sequence seq_pedido;
drop sequence seq_pago;
drop sequence seq_tipo_prod;
drop sequence seq_comuna;
drop sequence seq_sucursal;
drop sequence seq_marca;
drop sequence seq_modelo;
drop sequence seq_perfil;
drop sequence seq_categoria;

create sequence seq_id_producto;
create sequence seq_pedido;
create sequence seq_pago;
create sequence seq_tipo_prod;
create sequence seq_comuna;
create sequence seq_sucursal;
create sequence seq_marca;
create sequence seq_modelo;
create sequence seq_perfil;
create sequence seq_categoria;



INSERT INTO categoria VALUES(seq_categoria.NEXTVAL, 'Instrumentos de Cuerdas');
INSERT INTO categoria VALUES(seq_categoria.NEXTVAL, 'Percusion');
INSERT INTO categoria VALUES(seq_categoria.NEXTVAL, 'Amplificadores');
INSERT INTO categoria VALUES(seq_categoria.NEXTVAL, 'Accesorios varios');

INSERT INTO comuna VALUES(seq_comuna.NEXTVAL, 'Providencia');
INSERT INTO comuna VALUES(seq_comuna.NEXTVAL, 'Maipu');
INSERT INTO comuna VALUES(seq_comuna.NEXTVAL, 'Santiago');
INSERT INTO comuna VALUES(seq_comuna.NEXTVAL, 'Vitacura');

INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Ibanez');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'ESP');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Gibson');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Jackson Marshall');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Yamaha');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Tama');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Roland');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Marshall');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Pearl');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'JBL');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Genelec');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Sony');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Fender');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Shure');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Focusrite');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Shure');
INSERT INTO marca VALUES(seq_marca.NEXTVAL, 'Mackie');

INSERT INTO perfil VALUES(seq_perfil.NEXTVAL, 'admin');
INSERT INTO perfil VALUES(seq_perfil.NEXTVAL, 'vendedor');
INSERT INTO perfil VALUES(seq_perfil.NEXTVAL, 'bodeguero');
INSERT INTO perfil VALUES(seq_perfil.NEXTVAL, 'contador');
INSERT INTO perfil VALUES(seq_perfil.NEXTVAL, 'cliente');
INSERT INTO perfil VALUES(seq_perfil.NEXTVAL, 'invitado');

INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Guitarras', 1);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Bajos', 1);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Pianos', 1);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Baterias Acusticas', 2);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Bateria Electronica', 2);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Cabezales', 3);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Cajas', 3);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Audifonos', 4);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Monitores', 4);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Parlantes', 4);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Cables', 4);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Microfonos', 4);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Interfaces', 4);
INSERT INTO tipo_prod VALUES(seq_tipo_prod.NEXTVAL, 'Mixers', 4);

INSERT INTO sucursal VALUES(seq_sucursal.NEXTVAL, 'MUSICPRO 1988 ',1);
INSERT INTO sucursal VALUES(seq_sucursal.NEXTVAL, 'MUSICPRO 2001 ',2);
INSERT INTO sucursal VALUES(seq_sucursal.NEXTVAL, 'MUSICPRO 2003 ',3);
INSERT INTO sucursal VALUES(seq_sucursal.NEXTVAL, 'MUSICPRO 2010 ',4);

INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'AZES',1);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'THRU',2);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'SG HC',3);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'KH-2',4);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Firebird',5);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'JS11',6);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Revstar',7);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Rhythm',8);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'U-110',9);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Charge5',10);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, '8010A',11);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Pulse',12);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Affinity',13);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'SM7B',14);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'Scarlett',15);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'MV7',16);
INSERT INTO modelo VALUES(seq_modelo.NEXTVAL, 'THUMP15',17);

INSERT INTO empleado VALUES('11111111-1', 'MATIAS', 'HERNANDEZ','MONTERROZA',11111111,'MATIASHERNANDEZ@GMAIL.COM','Calle 10 # 5-51 ','matiasher','123',1);
INSERT INTO empleado VALUES('22222222-2', 'ANDRES', 'VILLA','MONROY',22222222,'ANDREZVILLAEQEQEQ@GMAIL.COM','Carrera 21 # 17 -63 ','andresv','123',3);
INSERT INTO empleado VALUES('33333333-3', 'CAMILO', 'RODRIGUEZ','GOMEZ',33333333,'CAMILORODRIGUEZ@GMAIL.COM','Transversal 29 BarrioMaldonado ','camilor','123',4);
INSERT INTO empleado VALUES('44444444-4', 'CARLOS', 'TORRES','OSPINA',44444444,'CARLOSTORRES@GMAIL.COM','Calle 4 norte # 10B-66 ','carlost','123',2);
INSERT INTO empleado VALUES('55555555-5', 'DANIELA', 'LOPEZ','BELTRAN',55555555,'DANIELALOPEZ@GMAIL.COM','Calle 25 # 6-08 ','danielal','123',3);
INSERT INTO empleado VALUES('66666666-6', 'GABRIEL', 'MENDOZA','ALVEAR',66666666,'GABRIELMENDOZA@GMAIL.COM','Calle 28 # 2-27 Barrio Centro','gabrielm','123',4);

INSERT INTO cliente VALUES('77777777-7', 'JUAN', 'CORTES MENDOZA',77777777,'JUANCORTEZ@GMAIL.COM','Calle 30 #2574', 'juancortes','123');

INSERT INTO producto VALUES(seq_id_producto.NEXTVAL,'EC-256','LTD-4943',10000,10,'Guitarra Electrica','Guitarra electrica Ibanez',0,'20/12/2020',1,1,1,'11111111-1',1,1);

INSERT INTO pedido VALUES(seq_pedido.NEXTVAL,1,'Entregado','20/12/2020','Calle 30 #2574',0,'77777777-7',1);

INSERT INTO pago VALUES(seq_pago.NEXTVAL,10000,1,2,1);


