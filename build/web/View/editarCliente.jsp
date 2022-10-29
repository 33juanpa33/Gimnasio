<%-- 
    Document   : editarCliente
    Created on : 28 oct. 2022, 21:12:12
    Author     : JuanPa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Cliente</title>
        <link rel="stylesheet" media="all" href="style.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Formulario de actualización</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">Modificar cliente</h4>
            </div>
            <form action="SvCliente" method="POST" class="row input-container">
                <input type="number" hidden name="idCliente" value="${cliente.idCliente}" required />
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="nombre" value="${cliente.nombre}" required />
                        <label>Nombre</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="apellido" value="${cliente.apellido}" required />
                        <label>Apellido</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="date" class="nacimiento" name="nacimiento" value="${cliente.nacimiento}" required />
                        <label>Fecha de nacimiento</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="documento" value="${cliente.documento}" required />
                        <label>Documento</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="telefono" value="${cliente.telefono}" required />
                        <label>Teléfono</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="telefonoE" value="${cliente.telefonoE}" required />
                        <label>Tel. emergencia</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" name="usuario" value="${cliente.usuario}" required />
                        <label>Usuario</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" name="clave" value="${cliente.clave}" required />
                        <label>Clave</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="date" class="nacimiento" name="pago" value="${cliente.pago}" required />
                        <label>Ultimo Pago</label> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="idActividad" value="${cliente.idActividad}" required />
                        <label>Actividad</label> 
                    </div>
                </div>
                <div class="col-xs-12">
                    <button type="submit" value="actualizar" name="accion" class="btn-lrg submit-btn">Modificar cliente</button>
                </div>
                <div class="col-xs-12">
                    <a href="SvCliente?accion=listar">Listar clientes</a>
                </div>
            </form>
        </div>
    </body>
</html>
