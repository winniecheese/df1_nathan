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
        <link rel="stylesheet" type="text/css" href="../../css/css-crudUsuarios.css">
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
                            <li><a href="../Profesor/panelReservas.jsp">Profesor</a></li>
                            <li><a href="../AdminAula/menuAdminAula.jsp">Administrador de aula</a></li>
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
            <h3>Lista de usuarios</h3>
            <div id="divUsuarios">
                <input type="button" id="volver" name="volver" value="🡸" onclick="goBack()">
                <div id="encabezado">
                    <p id="mailEnc">e-mail</p>
                    <p id="nomEnc">Nombre</p>
                    <p id="apeEnc">Apellidos</p>
                    <p id="perEnc">Permisos</p>
                </div>
                <%
                    ListaUsuarios lis = (ListaUsuarios) session.getAttribute("listaUsuarios");

                    for (int i = 0; i < lis.size(); i++) {
                        Usuario user = lis.get(i);
                %>
                <form id="formulario1" name="formulario" action="../../Controladores/controladorAdminGeneral.jsp" method="POST">
                    <div id="divFormulario">
                        <input type="text" class="formUsuarios" id="email" name="email" value="<%=user.getEmail()%>" readonly="">
                        <input type="text" class="formUsuarios" id="nombre" name="nombre" value="<%=user.getNombre()%>" readonly="">
                        <input type="text" class="formUsuarios" id="apellidos" name="apellidos" value="<%=user.getApellidos()%>" readonly="">
                        <select class="formUsuarios" id="sele" name="sele">
                            <option value="1" <% if (user.getRol() == 1) { %>selected<% } %>>Profesor</option>
                            <option value="2" <% if (user.getRol() == 2) { %>selected<% } %>>Administrador de aula</option>
                            <option value="3" <% if (user.getRol() == 3) { %>selected<% } %>>Administrador general</option>
                        </select>
                    </div>
                    <%
                        if (user.isActivo() == true) {
                    %>
                    <input type="submit" class="boton" id="activo" name="activo" value="Activo">
                    <%
                    } else {
                    %>
                    <input type="submit" class="boton" id="inactivo" name="inactivo" value="Inactivo">
                    <%
                        }
                    %>
                    <input type="submit" class="boton" id="eliminar" name="botonCRUDusers" value="Eliminar">
                    <input type="submit" class="boton" id="modificar" name="botonCRUDusers" value="Modificar">
                </form>
                <%                }
                %>
                <form id="formulario2" name="formulario" action="../../Controladores/controladorAdminGeneral.jsp" method="POST">
                    <input type="submit" class="boton" id="aniadirUser" name="aniadirUser" value="Añadir">
                </form>
            </div>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
