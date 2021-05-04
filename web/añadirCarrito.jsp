<%-- 
    Document   : añadirCarrito
    Created on : 2/05/2021, 08:54:49 PM
    Author     : jigna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
    Producto p=ProductoBD.obtProd(Integer.parseInt(request.Parameter("id")));
%>
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
        
        <h2 align="center">Añadir a Carrito</h2>
        
        <table border="0" width="500" align="center">
            <form>
                <tr>
                    <th rowspan="5"><img src="IMG/<%=p.getImg()%>" width="140" height="140"></th>
                    <th>ID</th>
                    <th><input type="text" name="txtId" value="<%=p.getId_prod()%>" readonly></th>
                    <th>Nombre</th>
                    <th><input type="text" name="txtNom" value="<%=p.getNom()%>" readonly></th>
                    <th>Precio</th>
                    <th><input type="text" name="txtPrecio" value="<%=p.getPrecio()%>" readonly></th>
                    <th>Cantidad</th>
                    <th><input type="number" value="0" min="0" name="txtCant" value="0"></th>
                </tr>
                <tr>
                    <th colspan="3"><input type="button" value="Añadir" name="btnAñadir"></th>
                </tr>
                <input type="button" value="accion" name="AñadirCarrito">
            </form>
            
        </table>
    </body>
</html>
