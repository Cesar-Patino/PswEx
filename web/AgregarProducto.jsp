<%-- 
    Document   : AgregarProducto
    Created on : 3/05/2021, 03:00:27 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
    </head>
    <body>
        <% 
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String url, userName, password, driver;
        
        url = "jdbc:mysql://localhost/helados";
        userName = "root";
        password = "Ce$ar20+";
        
        driver = "com.mysql.jdbc.Driver";
            
            try{
                Class.forName(driver);
                con = DriverManager.getConnection(url, userName, password);
                
                try{
                     
                    set = con.createStatement();
                    String nomp , tamp, q;
                    int  grap , precp, prep ;
                    nomp =  request.getParameter("nom") ;
                    prep = Integer.parseInt(request.getParameter("pre"));
                    tamp =  request.getParameter("tam") ;
                    precp=Integer.parseInt(request.getParameter("tipo"));
                    set = con.createStatement();

                    q = "insert into productos (nom_p, pre_p, tam_p, tipo_p) "
                            + "values ('"+nomp+"', '"+prep+"','"+tamp+"','"+precp+"')";
                    set.executeUpdate(q);
                    
                   
                    
                    %>
        <h1>Registro Exitoso</h1>            
                    <%
                        set.close();
                
                }catch(SQLException ed){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(ed.getMessage());
                    %>
        <h1>Registro No Exitoso, error en la lectura de la tabla</h1>            
                    <%
                
                }
                con.close();
            
            }catch(Exception e){
                System.out.println("Error al conectar la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            %>
        <h1>Sitio en Construcción</h1>            
                    <%
            }
            %>
        
        
            <a href="index.html" >Regresar al menú principal</a>
        
    </body>
</html>
