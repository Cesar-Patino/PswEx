<%-- 
    Document   : registro
    Created on : 1/05/2021, 05:17:37 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="./CSS/estilo.css">
    <link rel="stylesheet" href="./CSS/iniciars.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header> 
                <nav class="navegacion" style="width: 100%;">
                    <ul class="menu"> 
                        <li align="center"class="logo"><img src="./IMG/logo.png"></li>
                        <li ><a href="index.html">Principal</a></li>
                        <li><a href="iniciars.html"> Registro</a></li>
                    </ul>
                </nav>
            </header>
    <center>
                        <h2>Inicio de sesión</h2>
                        <br><br>

                        <form name="formulario" method="post" 
                      action="Registro">
                        <table>
                            <tr>
                                <td class="td_sup">Nombre</td>
                                <td class="td_inf"><input type="text" name="nom"></td>
                            </tr>
                            <tr></tr>
                             <tr>
                                <td class="td_sup">fecha de nacimiento</td>
                                <td class="td_inf"><input type="date" name="fni"></td>
                            </tr>
                        </table>
                            <br>
                            
                    <input type="submit" value="Iniciar Sesion" >
                    <input type="reset" value="Borrar Registro" >
                </form>
                    <a class="enlace-cen" href="iniciars.jsp">¿no tienes cuenta? Presiona aquí</a>
            </center>
    <div id="conteiner">
            
        
        <div id="content">
            
        </div> 
        
    </div>
    

    <div id="footer">
            <table class="pie">
                <tr>
                    <h4>Integrantes</h4>
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
