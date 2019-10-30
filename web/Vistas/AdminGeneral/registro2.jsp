<%-- 
    Document   : registro2
    Created on : 24-oct-2019, 1:01:40
    Author     : Nathan
--%>

<%--
    Esta página es la segunda página de registro, a la que se accede desde el
    CRUD de usuarios.
--%>

<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="60;url=../../index.jsp">
        <title>Desafío nº1</title>
        <link rel="stylesheet" type="text/css" href="../../css/css-registro2.css">
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
                %>administrador general
            </h3>
            <form id="formularioHeader" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="editarPerfil" name="editarPerfil" value="웃" title="Editar perfil">
                <input type="submit" id="cerrarS" name="cerrarS" value="☠" title="Cerrar sesión">
            </form>
        </header>
        <main>
            <h3>Registro</h3>
            <form id="formulario" name="formulario" action="../../Controladores/controladorAdminGeneral.jsp" method="POST">
                <input type="email" class="registro" id="email" name="email" placeholder="e-mail">
                <input type="text" class="registro" id="nombre" name="nombre" placeholder="Nombre" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{1,50}">
                <input type="text" class="registro" id="apellidos" name="apellidos" placeholder="Apellidos" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{1,50}">
                <input type="password" class="registro" id="password1" name="password1" placeholder="Contraseña">
                <input type="password" class="registro" id="password2" name="password2" placeholder="Repita la contraseña">
                <input type="submit" id="aceptar" name="aceptarRegistro2" value="Crear usuario">
                <input type="button" id="volver" name="volver" value="🡸" onclick="goBack()">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
