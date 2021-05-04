
package Utils;

import java.sql.*;
public class Conexion {
    
    public static Connection getConexion(){
        Connection cn = null;
        try{
            Class.forName("");
            cn = DriverManager.getConnection("", "root", "")
        
        System.out.println("Conexion Satisfactoria");
        }   catch(Exception e){System.out.println("Error de conexion "+ e); }
        return cn;
    }
 
    public static void main(String[] args) {
        Conexion.getConexion();
    }
    
}
