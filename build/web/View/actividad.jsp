<%-- 
    Document   : actividad
    Created on : 30 oct. 2022, 15:55:02
    Author     : JuanPa
--%>

<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <title>Cargar Actividad</title>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
    </head>
    <body>
        
        
        <div class="container">
            <div class="row">
                <h1>Crear Nueva Actividad</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">Cargar actividad</h4>
            </div>
            <form action="SvActividad" method="POST" class="row input-container">
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="nombre" required />
                        <label>Nombre</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="precio9Clases" required />
                        <label>Precio por 9 clases</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="number" name="precio14Clases" required />
                        <label>Precio por 14 clases</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="precioClasesLibre" required />
                        <label>Precio por clases libre</label> 
                    </div>
                </div>
                <div class="col-xs-12">
                    <button type="submit" value="agregar" name="accion" class="btn-lrg submit-btn">Cargar actividad</button>
                </div>
                
            </form>
            <div class="col-xs-12">
                    <a href="SvActividad?accion=listar" class="btn-lrg submit-btn">Listar actividades</a>
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