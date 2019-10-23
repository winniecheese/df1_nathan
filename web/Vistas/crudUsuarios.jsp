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
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <table>
                <thead>
                    <tr>
                        <th>e-mail</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Usuario u = (Usuario) session.getAttribute("userLogin");
                        out.println("Bienvenido al CRUD, " + u.getNombre() + " " + u.getApellidos() + "<br><br>");

                        ListaUsuarios lis = (ListaUsuarios) session.getAttribute("listaUsuarios");

                        for (int i = 0; i < lis.size(); i++) {
                            Usuario user = lis.get(i);
                    %>
                    <tr>
                        <td><input type="text" id="email" name="email" value="<%=user.getEmail()%>" readonly=""></td>
                        <td><input type="text" id="nombre" name="nombre" value="<%=user.getNombre()%>"></td>
                        <td><input type="text" id="apellidos" name="apellidos" value="<%=user.getApellidos()%>"></td>
                        <td><input type="submit" id="eliminar" name="botonCRUD" value="Eliminar"></td>
                        <td><input type="submit" id="modificar" name="botonCRUD" value="Modificar"></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <br>
            <input type="submit" id="aniadir" name="aniadir" value="Añadir">
            <br>
            <br>
            <input type="submit" id="volver" name="volver" value="Volver">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>
