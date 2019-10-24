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
    </head>
    <body>
        <h3>Lista de aulas</h3>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
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
                <tbody>
                    <%
                        ListaFranjas lisFranjas = (ListaFranjas) session.getAttribute("listaFranjas");

                        for (int i = 0; i < lisFranjas.size(); i++) {
                            Franja fran = lisFranjas.get(i);
                    %>
                    <tr>
                        <td><input type="text" id="codFranja" name="codFranja" value="<%=fran.getCod_franja()%>"></td>
                        <td><input type="text" id="horaEmpieza" name="horaEmpieza" value="<%=fran.getHora_empieza()%>"></td>
                        <td><input type="text" id="horaTermina" name="horaTermina" value="<%=fran.getHora_termina()%>"></td>
                        <td><input type="submit" id="eliminar" name="eliminar" value="Eliminar"></td>
                        <td><input type="submit" id="modificar" name="modificar" value="Modificar"></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td><input type="text" id="newCod" name="newCod" value=""></td>
                        <td><input type="text" id="newHoraEmp" name="newHoraEmp" value=""></td>
                        <td><input type="text" id="newHoraTer" name="newHoraTer" value=""></td>
                        <td><input type="submit" id="aniadir" name="aniadir" value="Añadir"></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <input type="submit" id="volver" name="volver" value="Volver">
        </form>
    </body>
</html>
