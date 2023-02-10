/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CONEXION;
import Controlador.ProductoDao;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import Modelo.Producto;

/**
 *
 * @author RODRIGO
 */
public class tesSEQ {
    public static void main(String[] args) {
    Conexion cone = new Conexion();

    ProductoDao dao = new ProductoDao();
    Date fechaCompaneroUtil = new Date();
        try {
            String fechaTexto = "09-08-2024";
            SimpleDateFormat formateo = new SimpleDateFormat("dd-MM-yyyy");
            fechaCompaneroUtil = formateo.parse(fechaTexto);
        } catch (Exception e) {
        Producto p = new Producto("kdjd5","8574",1233,22,"holaaaaaaa","xdddddd",54,fechaCompaneroUtil,1,1,1,"20280933-2",1,1);
        dao.insertarProducto(p);
        }
}
}
    

        
       