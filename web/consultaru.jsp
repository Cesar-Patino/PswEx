<%-- 
    Document   : actualizar
    Created on : 2/05/2021, 08:25:49 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
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
                                String nom, appat, apmat, fecha,dom, num;
                int edad, id;
                
                //tenemos que crear la querry
                
                String q = "select * from mregistro";
                
                
                set = con.createStatement();
                rs = set.executeQuery(q);
                
                while(rs.next()){
                //mientras exista un registro hay que obtener los datos de la consulta
                    id = rs.getInt("id_usu");
                    nom = rs.getString("nom_usu");
                    appat = rs.getString("ap_usu");
                    apmat = rs.getString("am_usu");
                    edad = rs.getInt("edad_usu");
                    fecha = rs.getString("fec_usu");
                    dom = rs.getString("dom_usu");
                    num = rs.getString("numero_usu");

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
               
                <%
                    
                    out.println("<tbody>"
                            + "<tr><td>"+id+"</td>"
                            + "<td>"+nom+" "+appat+" "+apmat+" </td>"
                            + "<td>"+edad+"</td>"
                            + "<td>"+fecha+"</td></tr>"
                            + "<td>"+dom+"</td></tr>"
                            + "<td>"+num+"</td></tr>"
                            + "</tbody>");
                }
                
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
        
        
        
       
    </body>
</html>

