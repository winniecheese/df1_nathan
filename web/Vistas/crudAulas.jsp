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
    </head>
    <body>
        <h3>Lista de aulas</h3>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ListaAulas lis = (ListaAulas) session.getAttribute("listaAulas");

                        for (int i = 0; i < lis.size(); i++) {
                            Aula aul = lis.get(i);
                    %>
                    <tr>
                        <td><input type="text" id="codAula" name="codAula" value="<%=aul.getCod_aula()%>"></td>
                        <td><input type="text" id="nombreAula" name="nombreAula" value="<%=aul.getDescripcion()%>"></td>
                        <td><input type="submit" id="eliminar" name="eliminar" value="Eliminar"></td>
                        <td><input type="submit" id="modificar" name="modificar" value="Modificar"></td>
                    <tr>
                        <%
                            }
                        %>
                    <tr>
                        <td><input type="text" id="newCod" name="newCod" value=""></td>
                        <td><input type="text" id="newDesc" name="newDesc" value=""></td>
                        <td><input type="submit" id="aniadir" name="aniadir" value="Añadir"></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <br>
            <input type="submit" id="volver" name="volver" value="Volver">
        </form>
    </body>
</html>
