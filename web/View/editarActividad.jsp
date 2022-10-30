<%-- 
    Document   : editarActividad
    Created on : 30 oct. 2022, 16:16:11
    Author     : JuanPa
--%>

<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Actividad</title>
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
    </head>
    <body>
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
                    <button type="submit" value="actualizar" name="accion" class="btn-lrg submit-btn">Modificar actividad</button>
                </div>
                <div class="col-xs-12">
                    <a href="SvActividad?accion=listar">Listar actividades</a>
                </div>
            </form>
        </div>
    </body>
</html>
