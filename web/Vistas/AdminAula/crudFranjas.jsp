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
        <h3>Lista de aulas</h3>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Empieza</th>
                    <th>Termina</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
        </table>
        <%
            ListaFranjas lisFranjas = (ListaFranjas) session.getAttribute("listaFranjas");

            for (int i = 0; i < lisFranjas.size(); i++) {
                Franja fran = lisFranjas.get(i);
        %>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="text" id="codFranja" name="codFranja" value="<%=fran.getCod_franja()%>">
            <input type="text" id="horaEmpieza" name="horaEmpieza" value="<%=fran.getHora_empieza()%>">
            <input type="text" id="horaTermina" name="horaTermina" value="<%=fran.getHora_termina()%>">
            <input type="submit" id="eliminar" name="eliminar" value="Eliminar">
            <input type="submit" id="modificar" name="modificar" value="Modificar">
        </form>
        <%
            }
        %>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="text" id="newCod" name="newCod" value="">
            <input type="text" id="newHoraEmp" name="newHoraEmp" value="">
            <input type="text" id="newHoraTer" name="newHoraTer" value="">
            <input type="submit" id="aniadir" name="aniadir" value="Añadir">
            <br>
            <br>
            <input type="button" name="volver" value="Volver" onclick="goBack()">
        </form>
    </body>
</html>
