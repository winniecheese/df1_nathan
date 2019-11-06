<%-- 
    Document   : crudFranjas
    Created on : 24-oct-2019, 1:12:11
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
        <link rel="stylesheet" type="text/css" href="../../css/css-crudFranjas.css">
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
            <h3>Lista de franjas horarias</h3>
            <div id="crudFranjas">
                <input type="button" id="volver" name="volver" value="🡸" onclick="goBack()">
                <div id="crudFranjas2">
                    <div id="encabezado">
                        <p id="codEnc">Código</p>
                        <p id="empEnc">Empieza</p>
                        <p id="terEnc">Termina</p>
                    </div>
                    <%
                        ListaFranjas lisFranjas = (ListaFranjas) session.getAttribute("listaFranjas");

                        for (int i = 0; i < lisFranjas.size(); i++) {
                            Franja fran = lisFranjas.get(i);
                    %>
                    <form id="formulario1" name="formulario1" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                        <input type="text" class="formFranjas" id="codFranja" name="codFranja" value="<%=fran.getCod_franja()%>" readonly="">
                        <input type="text" class="formFranjas" id="horaEmpieza" name="horaEmpieza" value="<%=fran.getHora_empieza()%>">
                        <input type="text" class="formFranjas" id="horaTermina" name="horaTermina" value="<%=fran.getHora_termina()%>">
                        <input type="submit" class="formFranjas" id="eliminar" name="botonCRUDfranjas" value="Eliminar">
                        <input type="submit" class="formFranjas" id="modificar" name="botonCRUDfranjas" value="Modificar">
                    </form>
                    <%
                        }
                    %>
                    <form id="formulario2" name="formulario2" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                        <input type="text" class="formFranjas" id="newCod" name="newCod" value="">
                        <input type="text" class="formFranjas" id="newHoraEmp" name="newHoraEmp" value="">
                        <input type="text" class="formFranjas" id="newHoraTer" name="newHoraTer" value="">
                        <input type="submit" class="formFranjas" id="aniadir" name="aniadirFranja" value="Añadir">
                    </form>
                </div>
            </div>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
