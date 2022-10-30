<%-- 
    Document   : listaActividades
    Created on : 24 oct. 2022, 21:08:53
    Author     : JuanPa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
            rel="stylesheet">
        <title>Lista de Actividades</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">

    </head>
    <body>
        <section class="section" id="schedule">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading dark-bg">
                            <h2>Nuestras <em>Actividades</em></h2>
                            <img src="assets/images/line-dec.png" alt="">
                        </div>
                        <div class="section-heading dark-bg">
                            <h2>Precios</h2>
                            <a href="SvActividad?accion=listar">Mostrar Actividades</a>
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
                                        <td>Modificar</td>
                                        <td>Eliminar</td>
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
                                                <td>
                                                    <a class="btn btn-primary btn-block btn-large" href="SvActividad?accion=editar&idActividad=${actividad.idActividad}">Modificar</a>
                                                </td>
                                                <td>
                                                    <a class="btn btn-primary btn-block btn-large" href="SvActividad?accion=eliminar&idActividad=${actividad.idActividad}" onclick="javascript:return asegurar();">Eliminar</a>
                                                </td>
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

        <!-- Horarios -->

        <section class="section" id="schedule">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading dark-bg">
                            <h2><em>Horarios</em></h2>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <!--
                    <div class="col-lg-12">
                        <div class="filters">
                            <ul class="schedule-filter">
                                <li class="active" data-tsfilter="monday">Monday</li>
                                <li data-tsfilter="tuesday">Tuesday</li>
                                <li data-tsfilter="wednesday">Wednesday</li>
                                <li data-tsfilter="thursday">Thursday</li>
                                <li data-tsfilter="friday">Friday</li>
                            </ul>
                        </div>
                    </div>
                    
                    -->
                    <div class="col-lg-10 offset-lg-1">
                        <div class="schedule-table filtering">
                            <table>
                                <thead>
                                    <tr>
                                        <th hidden="hidden">Id</th>
                                        <td class="day-time">Descripción</td>
                                        <td class="day-time">Lugar</td>
                                        <td class="day-time">Horarios</td>
                                        <td class="day-time">Cupo</td>
                                        <td>Acción</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="day-time">Fitness Class</td>
                                        <td class="monday ts-item show" data-tsmeta="monday">10:00AM - 11:30AM</td>
                                        <td class="tuesday ts-item" data-tsmeta="tuesday">2:00PM - 3:30PM</td>
                                        <td>William G. Stewart</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
    </body>
</html>
