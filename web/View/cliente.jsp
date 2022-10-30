<%-- 
    Document   : index
    Created on : 8 oct. 2022, 15:25:01
    Author     : Juan Pablo Alfonso
--%>

<%@page import="java.sql.Date"%>
<%@page import="model.Cliente"%>
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
        <title>Cargar Cliente</title>
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
    </head>
    <body>
        
        
        <div class="container">
            <div class="row">
                <h1>Formulario de inscripción</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">Cargar cliente</h4>
            </div>
            <form action="SvCliente" method="POST" class="row input-container">
                <%--
                <div class="col-xs-12">
                                        <div class="styled-input wide">
                                            <input type="text"  required />
                                            <label>Nombre</label> 
                                        </div>
                                    </div>
                --%>
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
                        <input type="date" class="nacimiento" name="nacimiento" required />
                        <label>Fecha de nacimiento</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="documento" required />
                        <label>Documento</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="telefono" required />
                        <label>Teléfono</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="telefonoE"  required />
                        <label>Tel. emergencia</label> 
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
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="date" class="nacimiento" name="pago" required />
                        <label>Ultimo Pago</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="idActividad"  required />
                        <label>Actividad</label> 
                    </div>
                </div>
<%--                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="checkbox" name="pago" required />
                        <label>Mes pago</label> 
                    </div>
                </div>
--%>                
<%--
                <div class="col-xs-12">
                    <div class="styled-input wide">
                        <textarea required></textarea>
                        <label>Message</label>
                    </div>
                </div>
--%>
                <div class="col-xs-12">
                    <button type="submit" value="agregar" name="accion" class="btn-lrg submit-btn">Cargar cliente</button>
                </div>
                <div class="col-xs-12">
                    <a href="SvCliente?accion=listar">Listar clientes</a>
                </div>
            </form>
        </div>

    </body>
</html>