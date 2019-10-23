<%-- 
    Document   : menuAdminAula
    Created on : 23-oct-2019, 23:50:53
    Author     : Nathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desafío nº1</title>
    </head>
    <body>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="submit" id="gestUsuarios" name="gestUsuarios" value="Gestionar usuarios">
            <br>
            <br>
            <input type="submit" id="verBitacora" name="verBitacora" value="Ver bitácora">
            <br>
            <br>
            <input type="submit" id="volverAula" name="volverAula" value="Volver">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>
