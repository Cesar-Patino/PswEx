<%-- 
    Document   : pagar
    Created on : 1/05/2021, 03:18:55 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./CSS/estilo.css">
        <link rel="stylesheet" href="./CSS/pagar.css">
        <title>JSP Page</title>
    </head>
    <body>
<header> 
                <nav class="navegacion" style="width: 100%;">
                    <ul class="menu"> 
                        <li class="logo"><img src="./IMG/logo.png"></li>
                        <li ><a href="index.html">Principal</a></li>
                        <li ><a href="iniciars.html">Productos</a></li>
                    </ul>
                </nav>
            </header>
        
        <h1 align="center">Es momento de pagar</h1>
        
        
        <div class="pagos"> 
            <form>
            <table>
                <tr>
                    <h2>Elige el metodo de pago</h2>
                </tr>
                <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                <tr>
                    <td class="imgp"><input type="image" name="efectivo" src="./IMG/efectivo.jpg" height="100px" width="250px"></td>
                    <td></td><td></td><td></td><td></td>
                    <td class="imgp"><input type="image" name="efectivo" src="./IMG/visa.jpg" height="100px" width="250px"></td>
                </tr>
            </table>
        </form>
        </div>
       
        <div id="conteiner">
            
        
        <div id="content">
            
        </div> 
        
    </div>
        <div id="footer">
            <table class="pie">
                <tr>
                    <h4>Integrantes:</h4>
                </tr>
                <tr></tr>
                <tr>
                    <h4>Chávez Patiño Cesar Uriel</h4>
                </tr>
                <tr></tr>
                <tr>
                <h4>Ramirez Aranda Dante Israel </h4>
                </tr>
                <tr></tr>
                <tr>
                    <h4>Vilchis Cuevas Joaquin Ignacio </h4>
                </tr>
        </table>
        </div>
    </body>
</html>
