<%-- 
    Document   : Validaruser
    Created on : 1/05/2021, 12:48:27 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Usuario</title>
    </head>
    <body>
        
        <%
            
            try{
                
                //aqui ya puedo incorporar codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String url, userName, password, driver;
        
        url = "jdbc:mysql://localhost/registropsw";
        userName = "root";
        password = "Dante@23$";
        
        driver = "com.mysql.jdbc.Driver";
            
            //Parametros
    String nom = request.getParameter("nom");    
    int edad = Integer.parseInt(request.getParameter("edad"));
    int pin = Integer.parseInt(request.getParameter("pin"));
    
    //Coneccion
    Class.forName(driver);
    con = DriverManager.getConnection(url, userName, password);
    //Fin coneccion
    
    
   Statement st = con.createStatement();
   
    rs = st.executeQuery("select * from mregistro where nom_usu='" + nom + "' and edad_usu='" + edad + "'");
    if (rs.next()) {
        
        //Redireccion
        //session.setAttribute("userid", userid);
         //response.sendRedirect("index.html");
         %>
         <h1>Correcto :3</h1>
         <%
    } else {
%>
<h1>Administrador eh!! ;3</h1>
<%
    
   
    
        %>
<%
    
    
    }
}catch(SQLException ed){
        %>
        <h1>Error de conección :C</h1>
        <%
            }
%>
        
    </body>
</html>