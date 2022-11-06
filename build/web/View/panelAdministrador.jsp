<%-- 
    Document   : panelAdministrador
    Created on : 4 nov. 2022, 01:03:44
    Author     : JuanPa
--%>

<%@page import="model.Administrador" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrador</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            HttpSession sesion = request.getSession();
            Administrador adminActivo = (Administrador) sesion.getAttribute("usuarioLogueado");
            // String usu = (String) sesion.getAttribute("nombreUsuarioLogueado");
            if (adminActivo == null) {
                response.sendRedirect("index.jsp");
            } else {
                
        %>
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <a href="index.jsp" class="logo">Panel<em> Administrador</em></a>
                            <form id="contact" action="SvAdministrador" method="POST">
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
                            <h2><em>Bienvenido</em><br><%=adminActivo.getNombre()+ " " + adminActivo.getApellido()%></h2>
                            <img src="assets/images/line-dec.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="row" id="tabs">
                    <div class="col-lg-6">
                        <ul>
                            <li><a href="SvCliente?accion=nuevo"><img src="assets/images/tabs-first-icon.png" alt="">Agregar Cliente</a></li>
                            <li><a href="SvActividad?accion=nuevo"><img src="assets/images/tabs-first-icon.png" alt="">Agregar Actividad</a></li>
                            <li><a href="SvAdministrador?accion=nuevo"><img src="assets/images/tabs-first-icon.png" alt="">Agregar Administrador</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <ul>
                            <li><a href="SvCliente?accion=listar"><img src="assets/images/tabs-first-icon.png" alt="">Listar Clientes</a></li>
                            <li><a href="SvActividad?accion=listar"><img src="assets/images/tabs-first-icon.png" alt="">Listar Actividades</a></li>
                            <div class="main-rounded-button"><a href="SvAdministrador?accion=editar&idAdministrador=<%=adminActivo.getIdAdministrador()%>">Modificar mis datos</a></div>
                        </ul>
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
        
        <%}%>
    </body>
</html>
