--PROCEDIMIENTOS SQL DE M�TODOS JAVA.

----------- insertar produducto
/


create or replace PROCEDURE insertar_producto(p_nro_serie VARCHAR2,
                                             p_codigo VARCHAR2,
                                             P_precio number,
                                             p_stock number,
                                             p_nombre varchar2,
                                             p_descripcion varchar2,
                                             p_oferta number,
                                             p_fecha_ingreso date,
                                             p_id_tipo_prod number,
                                             p_id_modelo number,
                                             p_id_sucursal number,
                                             p_rut_empleado varchar2,
                                             p_id_categoria number,
                                             p_id_marca number,
                                             p_cantidad OUT NUMBER)
AS

BEGIN
    INSERT INTO producto VALUES(SEQ_ID_PRODUCTO.nextval,
                                p_nro_serie,
                                p_codigo,
                                P_precio,
                                p_stock,
                                p_nombre,
                                p_descripcion,
                                p_oferta,
                                p_fecha_ingreso,
                                p_id_tipo_prod,
                                p_id_modelo,
                                p_id_sucursal,
                                p_rut_empleado,
                                p_id_categoria,
                                p_id_marca
                                );
    p_cantidad := SQL%ROWCOUNT;
    EXCEPTION
    WHEN OTHERS THEN
        p_cantidad := 0;
END insertar_producto;


/

---- eliminar prod
create or replace PROCEDURE eliminar_producto(p_id_producto IN NUMBER,
                                              p_cantidad OUT NUMBER)
AS

BEGIN
    DELETE FROM producto
    WHERE id_producto = p_id_producto;

    p_cantidad := SQL%ROWCOUNT;
END eliminar_producto;

/

------------ obtener prod
create or replace PROCEDURE obtener_producto(p_id_producto IN NUMBER,
                                             p_cursor OUT SYS_REFCURSOR)
AS

BEGIN
    OPEN p_cursor FOR SELECT * FROM producto WHERE id_producto = p_id_producto;
END obtener_producto;


/

---------- obtener todos los prod
create or replace PROCEDURE obtener_productos(p_cursor OUT SYS_REFCURSOR)
AS
    v_sql VARCHAR2(100) := 'SELECT * FROM producto';
BEGIN
    OPEN p_cursor FOR v_sql;
END obtener_productos;



/



-------------------
--Actualizar producto
/


create or replace PROCEDURE  actualizar_producto(p_id_producto IN NUMBER,
                                            p_nro_serie IN VARCHAR2,
                                             p_codigo IN VARCHAR2,
                                             p_precio IN NUMBER,
                                             p_stock IN NUMBER,
                                             p_nombre IN VARCHAR2,
                                             p_descripcion IN VARCHAR2,
                                             p_oferta IN NUMBER,
                                             p_fecha_ingreso IN DATE,
                                             p_id_tipo_prod IN NUMBER,
                                             p_id_modelo IN NUMBER,
                                             p_id_sucursal IN NUMBER,
                                             p_rut_empleado IN VARCHAR2,
                                             p_id_categoria IN NUMBER,
                                             p_id_marca IN NUMBER,
                                             p_cantidad OUT NUMBER)
AS

BEGIN
    UPDATE producto
    SET 
        nro_serie= p_nro_serie,
        codigo = p_codigo,
        precio = p_precio,
        stock = p_stock,
        nombre = p_nombre,
        descripcion = p_descripcion,
        oferta = p_oferta,
        fecha_ingreso = p_fecha_ingreso,
        id_tipo_prod = p_id_tipo_prod,
        id_modelo = p_id_modelo,
        id_sucursal = p_id_sucursal,
        rut_empleado = p_rut_empleado,
        id_categoria = p_id_categoria,
        id_marca = p_id_marca
    WHERE id_producto = p_id_producto;

    p_cantidad := SQL%ROWCOUNT;
END actualizar_producto;


/

--INSERTAR Empleado
create or replace PROCEDURE   insertar_empleado (e_rut_empleado in VARCHAR2,
                                             e_nombre in VARCHAR2,
                                             e_ap_paterno in VARCHAR2,
                                             e_ap_materno in VARCHAR2,
                                             e_telefono in NUMBER,
                                             e_correo in VARCHAR2,
                                             e_direccion in VARCHAR2,
                                             e_usuario IN VARCHAR2,
                                             e_contrasena IN VARCHAR2,
                                             e_id_perfil IN NUMBER,
                                             p_cantidad OUT NUMBER)
AS

BEGIN
    INSERT INTO empleado VALUES(e_rut_empleado,
                                e_nombre,
                                e_ap_paterno,
                                e_ap_materno,
                                e_telefono,
                                e_correo,
                                e_direccion,
                                e_usuario,
                                e_contrasena,
                                e_id_perfil);
                                p_cantidad := SQL%ROWCOUNT;
    EXCEPTION
    WHEN OTHERS THEN
        p_cantidad := 0;
END insertar_empleado;



/



---------------- OBTENER Todos los EMPLEADOS
create or replace PROCEDURE        OBTENER_EMPLEADOS (p_cursor OUT SYS_REFCURSOR)
AS
    v_sql VARCHAR2(100) := 'SELECT * FROM empleado';
BEGIN
    OPEN p_cursor FOR v_sql;
END obtener_empleados;

---------------------------


/



---------------- OBTENER 1 SOLO EMPLEADO
create or replace PROCEDURE     obtener_empleado(e_rut_empleado varchar2,
                                                p_cursor OUT SYS_REFCURSOR)
AS

BEGIN
    OPEN p_cursor FOR SELECT * FROM empleado WHERE rut_empleado = e_rut_empleado;
END obtener_empleado;



/


---------------- Eliminar un empleado
create or replace PROCEDURE eliminar_empleado(e_rut_empleado VARCHAR2,
                                              p_cantidad OUT NUMBER)
AS

BEGIN
    DELETE FROM empleado
    WHERE rut_empleado = e_rut_empleado;

    p_cantidad := SQL%ROWCOUNT;
END eliminar_empleado;



/

create or replace PROCEDURE  actualizar_empleado(e_rut_empleado IN VARCHAR2,
                                             e_nombre IN VARCHAR2,
                                             e_ap_paterno IN VARCHAR2,
                                             e_ap_materno IN VARCHAR2,
                                             e_telefono IN NUMBER,
                                             e_correo IN VARCHAR2,
                                             e_direccion IN VARCHAR2,
                                             e_usuario IN VARCHAR2,
                                             e_contrasena IN VARCHAR2,
                                             e_id_perfil IN NUMBER,
                                             p_cantidad OUT NUMBER)
AS

BEGIN
    UPDATE empleado
    SET 
        rut_empleado = e_rut_empleado,
        nombre=  e_nombre,
        ap_paterno = e_ap_paterno,
        ap_materno = e_ap_materno,
        telefono = e_telefono,
        correo = e_correo,
        direccion = e_direccion,
        usuario = e_usuario,
        contrasena = e_contrasena,
        id_perfil = e_id_perfil

    WHERE rut_empleado = e_rut_empleado;

    p_cantidad := SQL%ROWCOUNT;
END actualizar_empleado;


/


-------------Actuualizar stock (bodeguero)
create or replace PROCEDURE  actualizar_stock(p_id_producto IN NUMBER,
                                             p_stock IN NUMBER,
                                             p_descripcion IN VARCHAR2,
                                             p_cantidad OUT NUMBER)
AS

BEGIN
    UPDATE producto
    SET 
        stock = p_stock,
        descripcion = p_descripcion
    WHERE id_producto = p_id_producto;

    p_cantidad := SQL%ROWCOUNT;
END actualizar_stock;

----------Actualizar pedido (contador)



/


create or replace PROCEDURE  actualizar_pedido(p_id_orden_ped IN NUMBER,
                                             p_estado_orden IN VARCHAR2,
                                             p_rut_cliente IN VARCHAR2,
                                             p_cantidad OUT NUMBER)
AS

BEGIN
    UPDATE pedido
    SET 
        estado_orden = p_estado_orden,
        rut_cliente = p_rut_cliente
        
    WHERE id_orden_ped = p_id_orden_ped;

    p_cantidad := SQL%ROWCOUNT;
END actualizar_pedido;

/



----------Obtener todos los pedidos (contador)

create or replace PROCEDURE obtener_pedidos(p_cursor OUT SYS_REFCURSOR)
AS
    v_sql VARCHAR2(100) := 'SELECT * FROM pedidos';
BEGIN
    OPEN p_cursor FOR v_sql;
END obtener_pedidos;



/




-------Obtener solo 1 pedido (contador)

create or replace PROCEDURE obtener_pedido(p_id_orden_ped IN NUMBER,
                                             p_cursor OUT SYS_REFCURSOR)
AS

BEGIN
    OPEN p_cursor FOR SELECT * FROM pedido WHERE id_orden_ped = p_id_orden_ped;
END obtener_pedido;



/



----------Obtener 1 Cliente (contador)
create or replace PROCEDURE obtener_cliente(p_rut_cliente IN VARCHAR2,
                                             p_cursor OUT SYS_REFCURSOR)
AS

BEGIN
    OPEN p_cursor FOR SELECT * FROM cliente WHERE rut_cliente = p_rut_cliente;
END obtener_cliente;


/




--------OBTENER CLIENTES TODS
create or replace PROCEDURE obtener_clientes(p_cursor OUT SYS_REFCURSOR)
AS
    v_sql VARCHAR2(100) := 'SELECT * FROM cliente';
BEGIN
    OPEN p_cursor FOR v_sql;
END obtener_clientes;


/


------------LOGIN AUTENTIFICACION


create or replace PROCEDURE autentificacion(e_usuario IN VARCHAR2,
                                            e_contrasena IN VARCHAR2,
                                            p_validacion OUT NUMBER)
AS
    v_tipo_usuario NUMBER;
BEGIN
    SELECT rut_empleado
    INTO v_id_perfil
    FROM empleado
    WHERE usuario = e_usuario AND contrasena = e_contrasena;

    p_validacion := v_tipo_usuario;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_validacion := 0;

END autentificacion;

/
---------------

