<%-- 
    Document   : index
    Created on : 1 nov. 2022, 23:37:59
    Author     : JuanPa
--%>

<%@page import="model.Cliente"%>
<%@page import="model.Administrador"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
        <title>Gimnasio</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            Administrador adminActivo = (Administrador) sesion.getAttribute("usuarioLogueado");
            Cliente cliActivo = (Cliente) sesion.getAttribute("clienteLogueado");
            try {
        %>
        <!-- ***** Preloader Start ***** -->
        <div id="js-preloader" class="js-preloader">
            <div class="preloader-inner">
                <span class="dot"></span>
                <div class="dots">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- ***** Preloader End ***** -->
        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav" style="min-width: max-content;">
                            <!-- ***** Logo Start ***** -->
                            <a href="SvActividad?accion=listarEnLogin" class="logo">Training<em> Studio</em></a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->


                            <%
                                if (adminActivo == null && cliActivo == null) {
                            %>

                            <ul class="nav">
                                <li class="main-button"><a href="#" onclick="cargarLogin()">Acceso Administrador</a></li>
                            </ul>
                            <ul class="nav">
                                <li class="main-button"><a href="#" onclick="cargarLoginCliente()">Acceso Cliente</a></li>
                            </ul>
                            <ul class="nav">
                                <li class="main-button"><a href="SvActividad?accion=listarEnLogin" href="#schedule">Ver Actividades</a></li>
                            </ul>

                            <%
                            } else if (adminActivo != null) {
                            %>

                            <form id="contact" action="SvAdministrador" method="POST">
                                <ul class="nav">
                                    <li class="main-button"><button  id="btnCerrarSesion"type="submit" value="logout" name="accion"><%=adminActivo.getNombre() + " - "%> Cerrar Sesión</button></li>
                                </ul>
                            </form>
                            <ul class="nav">
                                <li class="main-button"><a href="panelAdministrador.jsp">Panel Administrador</a></li>
                            </ul>

                            <%
                            } else if (cliActivo != null) {
                            %>

                            <form id="contact" action="SvCliente" method="POST">
                                <ul class="nav">
                                    <li class="main-button"><button  id="btnCerrarSesion"type="submit" value="logout" name="accion"><%=cliActivo.getNombre() + " - "%> Cerrar Sesión</button></li>
                                </ul>
                            </form>
                            <ul class="nav">
                                <li class="main-button"><a href="panelCliente.jsp">Panel Cliente</a></li>
                            </ul>

                            <%
                                }
                            %>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <section id="contenidoDinamico"></section>

        <section class="section" id="schedule">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading dark-bg">
                            <<h1>BIENVENIDO!!!</h1>
                            <img src="assets/images/line-dec.png" alt="">
                            <h2>Estas Son <em>Nuestras Actividades</em></h2>
                        </div>
                        <div class="section-heading dark-bg">
                            <h2>Precios</h2>
                        </div>
                    </div>
                </div>

                <!-- Precios -->

                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="schedule-table filtering">
                            <table>
                                <thead>
                                    <tr>
                                        <th hidden="hidden">Id</th>
                                        <td class="day-time">Nombre</td>
                                        <td class="day-time">Precio 9 clases</td>
                                        <td class="day-time">Precio 14 clases</td>
                                        <td class="day-time">Precio clases libre</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="actividad" items="${Actividades}">
                                        <c:if test="${actividad.disponible}" >
                                            <tr>
                                                <td class="day-time"> ${actividad.nombre} </td>
                                                <td class="day-time"> ${actividad.precio9Clases} </td>
                                                <td class="day-time"> ${actividad.precio14Clases} </td>
                                                <td class="day-time"> ${actividad.precioClasesLibre} </td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
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

        <script src="assets/js/indexDinamico.js"></script>
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

        <%
            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
