<%-- 
    Document   : panelCliente
    Created on : 4 nov. 2022, 01:57:06
    Author     : JuanPa
--%>

<%@page import="model.Cliente"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Cliente</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            HttpSession sesion = request.getSession();
            Cliente cliActivo = (Cliente) sesion.getAttribute("clienteLogueado");
            // String usu = (String) sesion.getAttribute("nombreUsuarioLogueado");
            try {
                if (cliActivo.getNombre() == null) {
                    response.sendRedirect("SvActividad?accion=listarEnLogin");
                } else {

        %>
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <a href="SvActividad?accion=listarEnLogin" class="logo">Panel<em> Cliente</em></a>
                            <form id="contact" action="SvCliente" method="POST">
                                <ul class="nav">
                                    <li class="main-button"><button  id="btnCerrarSesion"type="submit" value="logout" name="accion">Cerrar Sesión</button></li>
                                </ul>
                            </form>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <section class="section" id="schedule">
            <!-- ***** Our Classes Start ***** -->
            <section class="section" id="our-classes">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <div class="section-heading">
                                <h2><em>Bienvenido</em><br><%=cliActivo.getNombre() + " " + cliActivo.getApellido()%></h2>
                                <img src="assets/images/line-dec.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="row" id="tabs">
                        <div class="col-lg-6">
                            <div class="main-rounded-button"><a href="SvCliente?accion=editar&idCliente=<%=cliActivo.getIdCliente()%>">Modificar mis datos</a></div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ***** Our Classes End ***** -->
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

        <%}
            } catch (Exception e) {
                response.sendRedirect("SvActividad?accion=listarEnLogin");
            }
        %>
    </body>
</html>
