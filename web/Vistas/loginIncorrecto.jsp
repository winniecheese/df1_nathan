<%-- 
    Document   : loginIncorrecto
    Created on : 10-oct-2019, 9:12:59
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login incorrecto</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css">
    </head>
    <body>
        <p>Login incorrecto.</p>
        <form name="vol" action="../Controladores/controlador.jsp" method="POST">
            <input type="submit" name="volver" value="Volver">
        </form>
    </body>
</html>
