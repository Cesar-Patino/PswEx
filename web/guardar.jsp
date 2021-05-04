%-- 
    Document   : javar
    Created on : 2/05/2021, 01:02:47 PM
    Author     : PC
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="./CSS/estilo.css">
        <link rel="shortcut icon" href="./IMG/icon.jpg" />
        <link rel="stylesheet" href="./CSS/imagenes.css">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
        //aqui ya puedo incorporar codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String url, userName, password, driver;
        
        url = "jdbc:mysql://localhost/registropsw";
        userName = "root";
        password = "Dante@23$";
        
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url, userName, password);
            
            //diferentes vistas para los errores
            //error exclusivo de sql
            try{
                set = con.createStatement();
                //necesito los parametros del formulario
                    String nom, ap, am,dom,fecha,numero;
                int edad;

                nom = request.getParameter("nom");
                ap = request.getParameter("ap");
                am = request.getParameter("am");
                dom = request.getParameter("domicilio");

                edad = Integer.parseInt(request.getParameter("edad"));
                fecha = request.getParameter("fecha");
                numero =request.getParameter("numero");

               
            
                
                  String q = "insert into mregistro "
                        + "(nom_usu, ap_usu, am_usu, edad_usu, fec_usu,dom_usu, numero_usu) "
                        + "values ('"+nom+"', '"+ap+"', '"+am+"', "+edad+", '"+fecha+"', '"+dom+"', '"+numero+"')";
                
                set.executeUpdate(q);
                %>
                <header> 
                    <nav class="navegacion" style="width: 100%;">
                        <ul class="menu"> 
                            <li class="logo"><img src="./IMG/logo.png"></li>
                            <li ><a href="index.html">Principal</a></li>
                            <li ><a href="iniciars.html">Productos</a></li>
                            <li><a href="iniciars.html">Registrarme</a></li>
                        </ul>
                    </nav>
                </header>
                    <center>
                        <h1>Registro Exitoso</h1>
                    </center>
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
            System.out.println("Error al conectar bd");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
            %>
            <h1>Sitio en Construccion</h1>
            <%
        
        }
            
            %>
        
        
        
        
        <a href="index.html" >Regresar a la Pagina Principal</a>
    </body>
</html>
