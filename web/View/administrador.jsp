<%-- 
    Document   : administrador
    Created on : 3 nov. 2022, 23:53:38
    Author     : JuanPa
--%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargar Administrador</title>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Formulario de inscripción</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">Cargar administrador</h4>
            </div>
            <form action="SvAdministrador" method="POST" class="row input-container">
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="nombre" required />
                        <label>Nombre</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="apellido" required />
                        <label>Apellido</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="documento" required />
                        <label>Documento</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="cargo" required />
                        <label>Cargo</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="usuario" required />
                        <label>Usuario</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="password" name="clave"  required />
                        <label>Clave</label> 
                    </div>
                </div>
                <div class="col-xs-12">
                    <button type="submit" value="agregar" name="accion" class="btn-lrg submit-btn">Cargar administrador</button>
                </div>

            </form>
            <div class="col-xs-12">
                <a href="panelAdministrador.jsp" class="btn-lrg submit-btn">Panel Administrador</a>
            </div>
        </div>
        <footer class="mt-4">
            <p class="mb-0 w-100 text-center col-12">
                &copy; ISFDyT N°166 2022 

                - "Mi gimnasio" by <a rel="nofollow" href="https://portfoliojuanpabloalfonso.web.app/" class="tm-text-link"> Alfonso Juan Pablo </a>
            </p>
        </footer>
    </body>
</html>
