/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import CONEXION.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import oracle.jdbc.internal.OracleTypes;

/**
 *
 * @author Motions
 */
public class ClienteDao {
    
        Conexion cone;


        public ClienteDao() {
            cone = new Conexion();
    }
            

    public ResultSet obtener_cliente(String rut_cliente) {
            ResultSet rs = null;
            try {
                CallableStatement call = cone.getCone().prepareCall("{call obtener_cliente(?,?)}");
                call.setString(1, rut_cliente);
                call.registerOutParameter(2, OracleTypes.CURSOR);
                call.execute();

                rs = (ResultSet)call.getObject(2);

            } catch (Exception e) {
        }

        return rs;
    }
    
    
 /*       public ResultSet obtener_clientes(){
        ResultSet rs = null;
        try {
            CallableStatement call = cone.getCone().prepareCall("{call obtener_clientes(?)}");
            call.registerOutParameter(1, OracleTypes.CURSOR);
            call.execute();

            rs = (ResultSet)call.getObject(1);

        } catch (Exception e) {
        }

        return rs;
    }
 */   

}
