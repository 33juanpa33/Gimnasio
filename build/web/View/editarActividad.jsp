<%-- 
    Document   : editarActividad
    Created on : 30 oct. 2022, 16:16:11
    Author     : JuanPa
--%>

<%@page import="model.Administrador"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Actividad</title>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
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
        <div class="container">
            <div class="row">
                <h1>Formulario de actualización</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">Modificar actividad</h4>
            </div>
            <form action="SvActividad" method="POST" class="row input-container">
                <input type="number" hidden name="idActividad" value="${actividad.idActividad}" required />
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="nombre" value="${actividad.nombre}" required />
                        <label>Nombre</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="precio9Clases" value="${actividad.precio9Clases}" required />
                        <label>Precio por 9 clases</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="number" name="precio14Clases" value="${actividad.precio14Clases}" required />
                        <label>Precio por 14 clases</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="precioClasesLibre" value="${actividad.precioClasesLibre}" required />
                        <label>Precio por clases libre</label> 
                    </div>
                </div>
                <div class="col-xs-12">
                    <button type="submit" value="actualizar" name="accion" class="btn btn-primary btn-large">Modificar actividad</button>
                </div>

            </form>
            <div class="col-xs-12">
                <a href="panelAdministrador.jsp" class="btn btn-primary btn-large">Panel Administrador</a>
            </div>
        </div>
        <footer class="mt-4">
            <p class="mb-0 w-100 text-center col-12">
                &copy; ISFDyT N°166 2022 

                - "Mi gimnasio" by <a rel="nofollow" href="https://portfoliojuanpabloalfonso.web.app/" class="tm-text-link"> Alfonso Juan Pablo </a>
            </p>
        </footer>
        <% }%>
    </body>
</html>
