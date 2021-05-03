<%-- 
    Document   : carrito
    Created on : 2/05/2021, 05:24:25 AM
    Author     : jigna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./CSS/estilo.css">
        <link rel="shortcut icon" href="./IMG/icon.jpg" />
        <link rel="stylesheet" href="./CSS/imagenes.css">


    </head>
    <body>
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
    
        
        
        <div class="container" >
            <center><h2>Catalogo</h2>
                <br>
                <h3>Selecciona una promoción</h3>
            </center>
            
            <br><br>
            <table border="0" align="center" width="1000">
                <%
                    ArrayList<Producto> lista = ProductoBD.obtProd();
                    int salto=0;
                    for (Producto p : lista){
                %>
                <th><img src="IMG/<%=p.getImg()%>" width="140" height="140"><p>
                        <%=p.getNom()%><br>
                    <%=p.getPrecio%><p>
                        <a href="">Modificar</a>
                        <a href="añadirCarrito.jsp"id="<%=p.getId_prod%>">Añadir</a>
                </th>
                <%
                    salto++;
                    if(salto==2){
                %>
                <tr>
                <%
                    salto=0;
                    }
                }
                %>
            </table>
        </div>
    </body>
</html>
