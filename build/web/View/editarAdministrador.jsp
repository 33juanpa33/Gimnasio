<%-- 
    Document   : editarAdministrador
    Created on : 2 nov. 2022, 20:37:36
    Author     : JuanPa
--%>

<%@page import="model.Administrador"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Administrador</title>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            HttpSession sesion = request.getSession();
            Administrador adminActivo = (Administrador) sesion.getAttribute("usuarioLogueado");
            if (adminActivo == null) {
                response.sendRedirect("index.jsp");
            } else {

        %>
        <div class="container">
            <div class="row">
                <h1>Formulario de actualización</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">Modificar administrador</h4>
            </div>
            <form action="SvAdministrador" method="POST" class="row input-container">
                <input type="number" hidden name="idAdministrador" value="${administrador.idAdministrador}" required />
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="nombre" value="${administrador.nombre}" required />
                        <label>Nombre</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="apellido" value="${administrador.apellido}" required />
                        <label>Apellido</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="documento" value="${administrador.documento}" required />
                        <label>Documento</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="cargo" value="${administrador.cargo}" required />
                        <label>Cargo</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="usuario" value="${administrador.usuario}" required />
                        <label>Usuario</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="clave" value="${administrador.clave}" required />
                        <label>Clave</label> 
                    </div>
                </div>
                <div class="col-xs-12">
                    <button type="submit" value="actualizar" name="accion" class="btn btn-primary btn-large">Modificar administrador</button>
                </div>
            </form>
            <div class="row">
                <a href="panelAdministrador.jsp" class="btn btn-primary btn-large">Panel Administrador</a>
            </div>
        </div>
        <footer class="row mt-4">
            <p class="mb-0 w-100 text-center col-12">
                &copy; ISFDyT N°166 2022 

                - "Mi gimnasio" by <a rel="nofollow" href="https://portfoliojuanpabloalfonso.web.app/" class="tm-text-link"> Alfonso Juan Pablo </a>
            </p>
        </footer>
        <% }%>
    </body>
</html>
