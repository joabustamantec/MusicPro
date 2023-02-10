/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import CONEXION.Conexion;
import Modelo.Pedido;
import Modelo.Producto;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import Modelo.Producto;
import Modelo.Stock;
import oracle.jdbc.internal.OracleTypes;


public class ProductoDao {
    //Necesito una variable de la clase conexión
    Conexion cone;
    
    //constructor:
    
    public ProductoDao() {
        cone = new Conexion();
    }
    
    
    //TODOS LOS MÉTODOS PARA UN MANTENEDOR:    private String nro_serie;

    public boolean insertarProducto(Producto p){//
        boolean respuesta = false;
        
        try {
            CallableStatement call = cone.getCone().prepareCall("{call insertar_producto(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            call.setString(1, p.getNro_serie());
            call.setInt(3, p.getPrecio());
            call.setInt(4, p.getStock());
            call.setString(2, p.getCodigo());
            call.setString(5, p.getNombre());
            call.setString(6, p.getDescripcion());
            call.setString(12, p.getRut_empleado());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String fechaTexto = sdf.format(p.getFecha_ingreso());
            java.sql.Date fechaSql = java.sql.Date.valueOf(fechaTexto);
            call.setDate(8, fechaSql);
            call.setInt(9, p.getId_tipo_prod());
            call.setInt(10, p.getId_modelo());
            call.setInt(11, p.getId_sucursal());
            call.setInt(13, p.getId_categoria());
            call.setInt(14, p.getId_marca());
            call.setInt(7, p.getOferta());
            call.registerOutParameter(15, java.sql.Types.NUMERIC);
            call.execute();
            
            int cantidad = call.getInt(15);
            if (cantidad> 0){
                respuesta = true;
            }
        } catch (Exception e) {
            respuesta = false;
        }
        
        return respuesta;
    }
    public ResultSet obtener_productos(){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_productos(?)}");
            call.registerOutParameter(1, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(1);

        } catch (Exception e) {
        }

        return rs;
    }
        public boolean eliminarProducto(int id_producto){
        boolean resp = false;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call eliminar_producto(?,?)}");
            call.setInt(1,id_producto);
            call.registerOutParameter(2, java.sql.Types.NUMERIC);
            call.execute();

            int cantidad = call.getInt(2);
            if (cantidad == 1) {
                resp = true;
            }
        } catch (Exception e) {
        }
        return resp;
    }
            public ResultSet obtener_producto(int id_producto){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_producto(?,?)}");
            call.setInt(1, id_producto);
            call.registerOutParameter(2, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(2);

        } catch (Exception e) {
        }

        return rs;
    }
            //método para actualizar 1 producto:
    public boolean actualizar_producto(Producto p){
        boolean resp = false;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call actualizar_producto(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            call.setInt(1,p.getId_producto());
            call.setString(2, p.getNro_serie());
            call.setInt(4, p.getPrecio());
            call.setInt(5, p.getStock());
            call.setString(3, p.getCodigo());
            call.setString(6, p.getNombre());
            call.setString(7, p.getDescripcion());
            call.setString(13, p.getRut_empleado());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String fechaTexto = sdf.format(p.getFecha_ingreso());
            java.sql.Date fechaSql = java.sql.Date.valueOf(fechaTexto);
            call.setDate(9, fechaSql);
            call.setInt(10, p.getId_tipo_prod());
            call.setInt(11, p.getId_modelo());
            call.setInt(12, p.getId_sucursal());
            call.setInt(14, p.getId_categoria());
            call.setInt(15, p.getId_marca());
            call.setInt(8, p.getOferta());
            call.registerOutParameter(16, java.sql.Types.NUMERIC);
            call.execute();

            int cantidad = call.getInt(16);
            if (cantidad > 0){
                resp = true;
            }

        } catch (Exception e) {
        }
        return resp;
    }

    
        public boolean actualizar_stock(Stock p){
        boolean resp = false;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call actualizar_stock(?,?,?,?)}");
            call.setInt(1,p.getId_producto());

            call.setInt(2, p.getStock());

            call.setString(3, p.getDescripcion());

            call.registerOutParameter(4, java.sql.Types.NUMERIC);
            call.execute();

            int cantidad = call.getInt(4);
            if (cantidad > 0){
                resp = true;
            }

        } catch (Exception e) {
        }
        return resp;
    }
        
        public boolean actualizar_pedido(Pedido p){
        boolean resp = false;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call actualizar_pedido(?,?,?,?)}");
            call.setInt(1,p.getId_orden_ped());

            call.setString(2, p.getEstado_orden());
            
            call.setString(3, p.getRut_cliente());

            call.registerOutParameter(4, java.sql.Types.NUMERIC);
            call.execute();

            int cantidad = call.getInt(4);
            if (cantidad > 0){
                resp = true;
            }

        } catch (Exception e) {
        }
        return resp;
    }

    public ResultSet obtener_pedidos(){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_pedidos(?)}");
            call.registerOutParameter(1, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(1);

        } catch (Exception e) {
        }

        return rs;
    }

    public ResultSet obtener_pedido(int id_orden_ped){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_pedido(?,?)}");
            call.setInt(1, id_orden_ped);
            call.registerOutParameter(2, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(2);

        } catch (Exception e) {
        }

        return rs;
    }
    

}
