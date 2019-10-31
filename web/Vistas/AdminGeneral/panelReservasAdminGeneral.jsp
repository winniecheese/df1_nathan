<%-- 
    Document   : panelReservas
    Created on : 22-oct-2019, 9:57:04
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
        <link rel="stylesheet" type="text/css" href="../../css/css-panelReservasAdminGeneral.css">
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
                %>profesor
            </h3>
            <form id="formularioHeader" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="editarPerfil" name="editarPerfil" value="웃" title="Editar perfil">
                <input type="submit" id="cerrarS" name="cerrarS" value="☠" title="Cerrar sesión">
            </form>
        </header>
        <main>
            <h3>Panel de reservas</h3>
            <div id="panelReservas">
                <form id="formulario1" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                    <input type="date" id="fecha" name="fecha" value="2019-10-31" min="2019-10-31">
                    <select id="seleAula" name="seleAula">
                        <%
                            ListaAulas lis = (ListaAulas) session.getAttribute("listaAulas");

                            for (int i = 0; i < lis.size(); i++) {
                                Aula a = lis.get(i);
                        %>
                        <option value="<%=a.getCod_aula()%>"><%out.println(a.getCod_aula());%></option>
                        <%
                            }
                        %>
                    </select>
                    <input type="submit" id="verCuadrante" name="verCuadrante" value="Ver cuadrante">
                    <p id="aulaSelected"><%
                        out.println("Aula " + request.getParameter("seleAula"));
                        %></p>
                    <input type="button" id="volver" name="volver" value="🡸" onclick="goBack()">
                </form>
                <table id="tabla">
                    <thead>
                        <tr>
                            <th>Código de franja</th>
                            <th>Empieza</th>
                            <th>Termina</th>
                            <th>Reservado</th>
                        </tr>
                    </thead>
                </table>
                <%
                    ListaFranjas lisFran = (ListaFranjas) session.getAttribute("listaFranjas");

                    for (int i = 0; i < lisFran.size(); i++) {
                        Franja fran = lisFran.get(i);
                %>
                <div id="panelReservas2">
                    <form id="formulario2" name="formulario" action="../../Controladores/controladorProfesor.jsp" method="POST">
                        <input type="text" class="formPanel" id="codFranja" name="codFranja" value="<%=fran.getCod_franja()%>" readonly="">
                        <input type="text" class="formPanel" id="horaEmp" name="horaEmp" value="<%=fran.getHora_empieza()%>" readonly="">
                        <input type="text" class="formPanel" id="horaTer" name="horaTer" value="<%=fran.getHora_termina()%>" readonly="">
                        <input type="submit" class="formPanel" id="libre" name="libre" value="Libre">
                    </form>
                    <%
                        }
                    %>
                </div>
            </div>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
