<%-- 
    Document   : crudUsuarios
    Created on : 21-oct-2019, 12:41:37
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desafío nº1</title>
    </head>
    <body>
        <body>
        <%
            Usuario u = (Usuario) session.getAttribute("userLogin");
            out.println("Bienvenido al CRUD, " + u.getNombre() + " " + u.getApellidos() + "<br><br>");

            ListaUsuarios lis = (ListaUsuarios) session.getAttribute("lista");

            for (int i = 0; i < lis.size(); i++) {
                Usuario dat = lis.get(i);
        %>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <label for="email">e-mail: </label><input type="text" id="email" name="email" value="<%=dat.getEmail()%>" readonly="">
            <label for="nombre">Nombre: </label><input type="text" id="nombre" name="nombre" value="<%=dat.getNombre()%>">
            <label for="apellidos">Apellidos: </label><input type="text" id="apellidos" name="apellidos" value="<%=dat.getApellidos()%>">
            <input type="submit" id="eliminar" name="botonCRUD" value="Eliminar">
            <input type="submit" id="modificar" name="botonCRUD" value="Modificar">
            <br>
            <br>
        </form>
        <%
            }
        %>
        <form name="formulario2" action="../Controladores/controlador.jsp" method="POST">
            <input type="submit" id="aniadir" name="aniadir" value="Añadir">
            <br>
            <br>
            <input type="submit" name="volver" value="Volver">
        </form>
    </body>
</html>
