<%-- 
    Document   : listaClientes
    Created on : 11 oct. 2022, 22:49:34
    Author     : Juan Pablo Alfonso
--%>
<%@page import="model.Administrador"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Actividad"%>
<%@page import="model.Cliente"%>
<%@page import="java.sql.Date"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lte IE 9]>
<html lang="en" class="oldie">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="es">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
            rel="stylesheet">
        <title>Lista de Clientes</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            HttpSession sesion = request.getSession();
            Administrador adminActivo = (Administrador) sesion.getAttribute("usuarioLogueado");
            if (adminActivo == null) {
                response.sendRedirect("SvActividad?accion=listarEnLogin");
            } else {

        %>
        <section class="section" id="schedule">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading dark-bg">
                            <h2>Nuestros <em>Clientes</em></h2>
                            <img src="assets/images/line-dec.png" alt="">
                        </div>
                        <div class="section-heading dark-bg">
                            <a href="panelAdministrador.jsp" class="btn btn-primary btn-large">Panel Administrador</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-11 offset-lg-1">
                        <div class="schedule-table filtering" id = "tablescroll">
                            <table>
                                <thead>
                                    <tr>
                                        <th hidden="hidden">Id</th>
                                        <td class="day-time">Nombre</td>
                                        <td class="day-time">Apellido</td>
                                        <td class="day-time">DNI</td>
                                        <td class="day-time">Usuario</td>
                                        <td class="day-time">Clave</td>
                                        <td class="day-time">Nacimiento</td>
                                        <td class="day-time">Telefono</td>
                                        <td class="day-time">Tel. Emerg.</td>
                                        <td class="day-time">Ultimo Pago</td>
                                        <td class="day-time">Actividad</td>
                                        <td>Modificar</td>
                                        <td>Eliminar</td>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        List<Cliente> listaCli = (List) request.getAttribute("Clientes");
                                        List<Actividad> listaAct = (List) request.getAttribute("Actividades");
                                        for (Cliente cli : listaCli) {
                                    %>
                                    <tr>
                                        <td class="day-time"> <%=cli.getNombre()%> </td>
                                        <td class="day-time"> <%=cli.getApellido()%> </td>
                                        <td class="day-time"> <%=cli.getDocumento()%> </td>
                                        <td class="day-time"> <%=cli.getUsuario()%> </td>
                                        <td class="day-time"> <%=cli.getClave()%> </td>
                                        <td class="day-time"> <%=cli.getNacimiento()%> </td>
                                        <td class="day-time"> <%=cli.getTelefono()%> </td>
                                        <td class="day-time"> <%=cli.getTelefonoE()%> </td>
                                        <td class="day-time"> <%=cli.getPago()%> </td>
                                        <td class="day-time">
                                            <%
                                                for (Actividad act : listaAct) {
                                                    if (cli.getIdActividad() == act.getIdActividad()) {
                                            %>
                                            <%=act.getNombre()%>
                                            <%
                                                    };
                                                };
                                            %>
                                        </td>
                                        <td>
                                            <a class="btn btn-outline-warning btn-large" href="SvCliente?accion=editar&idCliente=<%=cli.getIdCliente()%>">Modificar</a>
                                        </td>
                                        <td>
                                            <a class="btn btn-outline-danger btn-large" href="SvCliente?accion=eliminar&idCliente=<%=cli.getIdCliente()%>" onclick="javascript:return asegurar();">Eliminar</a>
                                        </td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="mt-4">
            <p class="mb-0 w-100 text-center col-12">
                &copy; ISFDyT N°166 2022 

                - "Mi gimnasio" by <a rel="nofollow" href="https://portfoliojuanpabloalfonso.web.app/" class="tm-text-link"> Alfonso Juan Pablo </a>
            </p>
        </footer>
        <script>
            function asegurar()
            {
                return confirm("¿Seguro que desea Eliminar?");
            }
        </script>

        <!-- jQuery -->
        <script src="assets/js/jquery-2.1.0.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Plugins -->
        <script src="assets/js/scrollreveal.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/imgfix.min.js"></script>
        <script src="assets/js/mixitup.js"></script>
        <script src="assets/js/accordions.js"></script>

        <!-- Global Init -->
        <script src="assets/js/custom.js"></script>
        <% }%>
    </body>
</html>