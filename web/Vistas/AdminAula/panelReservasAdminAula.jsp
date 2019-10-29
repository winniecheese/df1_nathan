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
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="#">Forma de trabajo</a>
                        <ul>
                            <li><a href="panelReservasAdminAula.jsp">Profesor</a></li>
                            <li><a href="menuAdminAula.jsp">Administrador de aula</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <h3>Usuario: 
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println(u.getNombre() + " " + u.getApellidos());
                %>
            </h3>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
            </form>
        </header>
        <main>
            <h3>Panel de reservas</h3>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="date" id="fecha" name="fecha">
                <br>
                <br>
                <select name="seleAula">
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
                <br>
                <br>
                <input type="submit" id="verCuadrante" name="verCuadrante" value="Ver cuadrante">
                <br>
                <br>
                <%
                    out.println("Aula " + request.getParameter("seleAula"));
                %>
                <br>
                <br>
            </form>
            <table>
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
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <%out.println(fran.getCod_franja());%>
                <%out.println(fran.getHora_empieza());%>
                <%out.println(fran.getHora_termina());%>
                <input type="button" class="libre" name="libre" value="Libre">
            </form>
            <%
                }
            %>
            <br>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="button" name="volver" value="Volver" onclick="goBack()">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
