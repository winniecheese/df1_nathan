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
        <meta http-equiv="refresh" content="60;url=../../index.jsp">
        <title>Desafío nº1</title>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <header>
            <nav id="menuV">
                <ul>
                    <li><a href="#">Forma de trabajo</a>
                        <ul>
                            <li><a href="panelReservasAdminGeneral.jsp">Profesor</a></li>
                            <li><a href="menuAdminAula2.jsp">Administrador de aula</a></li>
                            <li><a href="menuAdminGeneral.jsp">Administrador general</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <h3 id="titulo">
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println(u.getNombre() + " " + u.getApellidos() + ":");
                %>administrador general
            </h3>
            <form id="formularioHeader" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="editarPerfil" name="editarPerfil" value="웃" title="Editar perfil">
                <input type="submit" id="cerrarS" name="cerrarS" value="☠" title="Cerrar sesión">
            </form>
        </header>
        <main>
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
            <form name="formulario" action="../../Controladores/controladorAdminGeneral.jsp" method="POST">
                <input type="text" id="email" name="email" value="<%=user.getEmail()%>" readonly="">
                <input type="text" id="nombre" name="nombre" value="<%=user.getNombre()%>">
                <input type="text" id="apellidos" name="apellidos" value="<%=user.getApellidos()%>">
                <select name="sele">
                    <option value="1" <% if (user.getRol() == 1) { %>selected<% } %>>Profesor</option>
                    <option value="2" <% if (user.getRol() == 2) { %>selected<% } %>>Administrador de aula</option>
                    <option value="3" <% if (user.getRol() == 3) { %>selected<% } %>>Administrador general</option>
                </select>
                <%
                    if (user.isActivo() == true) {
                %>
                <input type="submit" id="activo" name="activo" value="Activo">
                <%
                } else {
                %>
                <input type="submit" id="inactivo" name="inactivo" value="Inactivo">
                <%
                    }
                %>
                <input type="submit" id="eliminar" name="botonCRUDusers" value="Eliminar">
                <input type="submit" id="modificar" name="botonCRUDusers" value="Modificar">
            </form>
            <%                }
            %>
            <br>
            <form name="formulario" action="../../Controladores/controladorAdminGeneral.jsp" method="POST">
                <input type="submit" id="aniadirUser" name="aniadirUser" value="Añadir">
                <br>
                <br>
                <input type="button" name="volver" value="Volver" onclick="goBack()">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
