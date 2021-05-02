
package Modelo;

import java.sql.*;
import java.util.ArrayList;
import Utils.Conexion;



public class PrductoBD {
    
    public static ArrayList<Producto>obtProd(){
        
        ArrayList<Producto> lista = new ArrayList<Producto>();
        
        try(
            CallableStatement cl=Conexion.getConexion().prepareCall("{call listarProducto()}");
            ResultSet rs = cl.executeQuery();
            while (rs.next()){
                Producto p = new Producto(rs.getInt(1)),rs.getString(2), rs.getDouble(3),rs.getString(4)); 
                lista.add(p);
            }
        )catch(Exception e){}
            
        return lista;   
    }
        
    public static Producto obtProd(int id_prod){
        Producto p=null;
        try{
            CallableStatement cl = Conexion.getConexion().prepareCall("{CALL sp_ProductoCod(?)}");
            cl.setInt(1, id_prod);
            ResultSet rs=cl.executeQuery();
            while(rs.next()){
                p = new Producto(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4));
            }
    }catch (Exception e){}
        return p;
    }
    
}
