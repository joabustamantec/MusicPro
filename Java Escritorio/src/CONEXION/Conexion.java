/**
 *
 * @author RODRIGO
 */

package CONEXION;
import java.sql.DriverManager;
import java.sql.Connection;
public class Conexion {
    private Connection cone;
    private String url="jdbc:oracle:thin:@localhost:1521:orcl";
    public Conexion() {
        try {
            if (cone==null){
                 Class.forName("oracle.jdbc.driver.OracleDriver");
            cone=DriverManager.getConnection(url, "musicpro2" , "musicpro2");
                
            } 
        } catch (Exception e) {
            //informacion de error
            System.out.println("Erorr. Cone:"+e.getMessage());
        }
    }
    public Connection getCone(){
        return cone;
        
    }
    
    
    
}