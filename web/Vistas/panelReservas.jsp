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
        <title>Desafío nº1</title>
    </head>
    <body>
        <h3>Panel de reservas</h3>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
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
            <table>
                <thead>
                    <tr>
                        <th>Código de franja</th>
                        <th>Empieza</th>
                        <th>Termina</th>
                        <th>Reservado</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ListaFranjas lisFran = (ListaFranjas) session.getAttribute("listaFranjas");

                        for (int i = 0; i < lis.size(); i++) {
                            Franja fran = lisFran.get(i);
                    %>
                    <tr>
                        <td><%out.println(fran.getCod_franja());%></td>
                        <td><%out.println(fran.getHora_empieza());%></td>
                        <td><%out.println(fran.getHora_termina());%></td>
                        <td><input type="button" class="libre" name="libre" value="Libre"></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <br>
            <input type="submit" id="volver" name="volver" value="Volver">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>