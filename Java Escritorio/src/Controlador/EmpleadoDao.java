/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;
import CONEXION.Conexion;
import Modelo.Empleado;
import Modelo.Producto;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import oracle.jdbc.internal.OracleTypes;

public class EmpleadoDao {
    //Necesito una variable de la clase conexión
    Conexion cone;
    
    //constructor:
    
    public EmpleadoDao() {
        cone = new Conexion();
    }
    
       //TODOS LOS MÉTODOS PARA UN MANTENEDOR:    private String nro_serie;

    public boolean insertarEmpleado(Empleado e){//
        boolean respuesta = false;
        
        try {
            CallableStatement call = cone.getCone().prepareCall("{call insertar_empleado(?,?,?,?,?,?,?,?,?,?,?)}");
            call.setString(1, e.getRut_empleado());
            call.setString(2, e.getNombre());
            call.setString(3, e.getAp_paterno());
            call.setString(4, e.getAp_materno());
            call.setInt(5,e.getTelefono());
            call.setString(6, e.getCorreo());
            call.setString(7, e.getDireccion());

            
            call.setString(8, e.getUsuario());
            call.setString(9, e.getContrasena());
            call.setInt(10, e.getId_perfil());
            
            call.registerOutParameter(11, java.sql.Types.NUMERIC);
            call.execute();
            
            int cantidad = call.getInt(11);
            if (cantidad > 0){
                respuesta = true;
            }
        } catch (Exception p) {
            respuesta = false;
        }
        
        return respuesta;
    }
    
    
       public ResultSet obtener_Empleados(){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_empleados(?)}");
            call.registerOutParameter(1, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(1);

        } catch (Exception p) {
        }

        return rs;
       }
       
                   public ResultSet obtener_Empleado(String rut_empleado){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_empleado(?,?)}");
            call.setString(1, rut_empleado);
            call.registerOutParameter(2, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(2);

        } catch (Exception e) {
        }

        return rs;
    }
                   

    public boolean actualizar_Empleado(Empleado e){
        boolean resp = false;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call actualizar_empleado(?,?,?,?,?,?,?,?,?,?,?)}");
            call.setString(1, e.getRut_empleado());
            call.setString(2, e.getNombre());
            call.setString(3, e.getAp_paterno());
            call.setString(4, e.getAp_materno());
            call.setInt(5, e.getTelefono());
            call.setString(6, e.getCorreo());
            call.setString(7, e.getDireccion());
            call.setString(8, e.getUsuario());
            call.setString(9, e.getContrasena());
            call.setInt(10, e.getId_perfil());
            
            call.registerOutParameter(11, java.sql.Types.NUMERIC);
            call.execute();

            int cantidad = call.getInt(11);
            if (cantidad > 0){
                resp = true;
            }

        } catch (Exception i) {
        }
        return resp;
    }

    
                   
                   
        public boolean eliminarEmpleado(String rut_empleado){
        boolean resp = false;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call eliminar_empleado(?,?)}");
            call.setString(1,rut_empleado);
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
}

       
