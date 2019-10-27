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
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="text" id="codAula" name="codAula" value="<%=aul.getCod_aula()%>">
            <input type="text" id="nombreAula" name="nombreAula" value="<%=aul.getDescripcion()%>">
            <input type="submit" id="eliminar" name="eliminar" value="Eliminar">
            <input type="submit" id="modificar" name="modificar" value="Modificar">
        </form>
        <%
            }
        %>
        <form name="formulario2" action="../Controladores/controlador.jsp" method="POST">
            <input type="text" id="newCod" name="newCod" value="">
            <input type="text" id="newDesc" name="newDesc" value="">
            <input type="submit" id="aniadir" name="aniadir" value="Añadir">
            <br>
            <br>
            <input type="button" name="volver" value="Volver" onclick="goBack()">
        </form>
    </body>
</html>
