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
        <%
            Usuario u = (Usuario) session.getAttribute("userLogin");
            out.println("Bienvenido al CRUD, " + u.getNombre() + " " + u.getApellidos() + "<br><br>");
        %>
        <table>
            <thead>
                <tr>
                    <th>e-mail</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                </tr>
            </thead>
        </table>
        <%
            ListaUsuarios lis = (ListaUsuarios) session.getAttribute("listaUsuarios");

            for (int i = 0; i < lis.size(); i++) {
                Usuario user = lis.get(i);
        %>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="text" id="email" name="email" value="<%=user.getEmail()%>" readonly="">
            <input type="text" id="nombre" name="nombre" value="<%=user.getNombre()%>">
            <input type="text" id="apellidos" name="apellidos" value="<%=user.getApellidos()%>">
            <input type="submit" id="eliminar" name="botonCRUDusers" value="Eliminar">
            <input type="submit" id="modificar" name="botonCRUDusers" value="Modificar">
        </form>
        <%
            }
        %>
        <br>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="submit" id="aniadirUser" name="aniadirUser" value="Añadir">
            <br>
            <br>
            <input type="submit" id="volverGen" name="volverGen" value="Volver">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>
