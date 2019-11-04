<%-- 
    Document   : crudAulas
    Created on : 24-oct-2019, 1:11:59
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
        <%
            int rol = (Integer) session.getAttribute("rol");
            if (rol == 3) {
        %>
        <header>
            <nav id="menuV">
                <ul>
                    <li><a href="#">Forma de trabajo</a>
                        <ul>
                            <li><a href="panelReservas.jsp">Profesor</a></li>
                            <li><a href="../AdminAula/menuAdminAula.jsp">Administrador de aula</a></li>
                            <li><a href="../AdminGeneral/menuAdminGeneral.jsp">Administrador general</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <h3 id="titulo">
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println(u.getNombre() + " " + u.getApellidos() + ":");
                %>administrador de aula
            </h3>
            <form id="formularioHeader" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="editarPerfil" name="editarPerfil" value="웃" title="Editar perfil">
                <input type="submit" id="cerrarS" name="cerrarS" value="☠" title="Cerrar sesión">
            </form>
        </header>
        <%
            }
            if (rol == 2) {
        %>
        <header>
            <nav id="menuV">
                <ul>
                    <li><a href="#">Forma de trabajo</a>
                        <ul>
                            <li><a href="panelReservas.jsp">Profesor</a></li>
                            <li><a href="../AdminAula/menuAdminAula.jsp">Administrador de aula</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <h3 id="titulo">
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println(u.getNombre() + " " + u.getApellidos() + ":");
                %>administrador de aula
            </h3>
            <form id="formularioHeader" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="editarPerfil" name="editarPerfil" value="웃" title="Editar perfil">
                <input type="submit" id="cerrarS" name="cerrarS" value="☠" title="Cerrar sesión">
            </form>
        </header>
        <%
            }
        %>
        <main>
            <h3>Lista de aulas</h3>
            <table>
                <thead>
                    <tr>
                        <th>Código de aula</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
            </table>
            <%
                ListaAulas lis = (ListaAulas) session.getAttribute("listaAulas");

                for (int i = 0; i < lis.size(); i++) {
                    Aula aul = lis.get(i);
            %>
            <form name="formulario" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                <input type="text" id="codAula" name="codAula" value="<%=aul.getCod_aula()%>">
                <input type="text" id="nombreAula" name="nombreAula" value="<%=aul.getDescripcion()%>">
                <input type="submit" id="eliminar" name="botonCRUDaulas" value="Eliminar">
                <input type="submit" id="modificar" name="botonCRUDaulas" value="Modificar">
            </form>
            <%
                }
            %>
            <form name="formulario2" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                <input type="text" id="newCod" name="newCod" value="">
                <input type="text" id="newDesc" name="newDesc" value="">
                <input type="submit" id="aniadir" name="aniadirAula" value="Añadir">
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
