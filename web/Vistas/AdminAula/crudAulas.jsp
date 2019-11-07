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
        <link rel="stylesheet" type="text/css" href="../../css/css-crudAulas.css">
        <link rel="stylesheet" type="text/css" href="../../css/css-general.css">
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
                            <li><a href="../Profesor/panelReservas.jsp">Profesor</a></li>
                            <li><a href="menuAdminAula.jsp">Administrador de aula</a></li>
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
                            <li><a href="../Profesor/panelReservas.jsp">Profesor</a></li>
                            <li><a href="menuAdminAula.jsp">Administrador de aula</a></li>
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
            <div id="crudAulas">
                <input type="button" id="volver" name="volver" value="🡸" onclick="goBack()">
                <div id="crudAulas2">
                    <div id="encabezado">
                        <p id="codEnc">Código</p>
                        <p id="descEnc">Descripción</p>
                    </div>
                    <%
                        ListaAulas lis = (ListaAulas) session.getAttribute("listaAulas");

                        for (int i = 0; i < lis.size(); i++) {
                            Aula aul = lis.get(i);
                    %>
                    <form id="formulario1" name="formulario1" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                        <input type="text" class="formAulas" id="codAula" name="codAula" value="<%=aul.getCod_aula()%>">
                        <input type="text" class="formAulas" id="nombreAula" name="nombreAula" value="<%=aul.getDescripcion()%>" title="<%=aul.getDescripcion()%>">
                        <input type="submit" class="formAulas" id="eliminar" name="botonCRUDaulas" value="Eliminar">
                        <input type="submit" class="formAulas" id="modificar" name="botonCRUDaulas" value="Modificar">
                    </form>
                    <%
                        }
                    %>
                    <form id="formulario2" name="formulario2" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                        <input type="text" class="formAulas" id="newCod" name="newCod" value="">
                        <input type="text" class="formAulas" id="newDesc" name="newDesc" value="">
                        <input type="submit" class="formAulas" id="aniadir" name="aniadirAula" value="Añadir">
                    </form>
                </div>
            </div>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
