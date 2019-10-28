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
                    out.println(u.getApellidos() + " " + u.getNombre());
                %>
            </h3>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
            </form>
        </header>
        <main>
            <h3>Lista de aulas</h3>
            <table>
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Empieza</th>
                        <th>Termina</th>
                    </tr>
                </thead>
            </table>
            <%
                ListaFranjas lisFranjas = (ListaFranjas) session.getAttribute("listaFranjas");

                for (int i = 0; i < lisFranjas.size(); i++) {
                    Franja fran = lisFranjas.get(i);
            %>
            <form name="formulario" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                <input type="text" id="codFranja" name="codFranja" value="<%=fran.getCod_franja()%>" readonly="">
                <input type="text" id="horaEmpieza" name="horaEmpieza" value="<%=fran.getHora_empieza()%>">
                <input type="text" id="horaTermina" name="horaTermina" value="<%=fran.getHora_termina()%>">
                <input type="submit" id="eliminar" name="botonCRUDfranjas" value="Eliminar">
                <input type="submit" id="modificar" name="botonCRUDfranjas" value="Modificar">
            </form>
            <%
                }
            %>
            <form name="formulario" action="../../Controladores/controladorAdminAula.jsp" method="POST">
                <input type="text" id="newCod" name="newCod" value="">
                <input type="text" id="newHoraEmp" name="newHoraEmp" value="">
                <input type="text" id="newHoraTer" name="newHoraTer" value="">
                <input type="submit" id="aniadir" name="aniadir" value="Añadir">
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
