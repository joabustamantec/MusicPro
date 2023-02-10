/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import CONEXION.Conexion;
import Modelo.Empleado;
import java.sql.Connection;
import java.sql.CallableStatement;
        
public class DaoUsuario {
    private Connection cone;

    public DaoUsuario() {
        cone= new Conexion().getCone();
        
    }
    public boolean Validar(Empleado e){
        
        boolean resp = false;
        
        try {
            String llamada="{ call autentificacion(?,?,?)}";
            CallableStatement cstm=cone.prepareCall(llamada);
            cstm.setString(1,e.getUsuario());
            cstm.setString(2, e.getContrasena());
            cstm.registerOutParameter(4, java.sql.Types.NUMERIC);
            cstm.execute();

            int cantidad = cstm.getInt(4);
            if (cantidad > 0){
                resp = true;
            }
                    
        } catch (Exception i) {
        }
        return resp;
        
    }
    
    
}
