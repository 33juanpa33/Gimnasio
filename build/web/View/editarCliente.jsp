<%-- 
    Document   : editarCliente
    Created on : 28 oct. 2022, 21:12:12
    Author     : JuanPa
--%>

<%@page import="model.Administrador"%>
<%@page import="model.Actividad"%>
<%@page import="java.util.List"%>
<%@page import="model.Cliente"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Cliente</title>
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
        <%
            Cliente cli = (Cliente) request.getAttribute("cliente");
            List<Actividad> listaAct = (List) request.getAttribute("Actividades");
        %>
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
                <%-- 
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="number" name="idActividad" value="${cliente.idActividad}" required />
                        <label>Actividad</label> 
                    </div>
                </div>
                --%>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <select name="idActividad" id="membership"  required>
                            <%for (Actividad actividad : listaAct) {%>
                            <option value="<%=actividad.getIdActividad()%>" type="number"
                                    <%if (actividad.getIdActividad() == cli.getIdActividad()) {%> <%="selected"%> <%}%> > <%=actividad.getNombre()%></option>
                            <% }%>
                        </select>
                        <label>Actividad</label>
                    </div>
                </div>



                <div class="col-xs-12">
                    <button type="submit" value="actualizar" name="accion" class="btn-lrg submit-btn">Modificar cliente</button>
                </div>

            </form>
            <div class="row">
                <a href="panelAdministrador.jsp" class="btn-lrg submit-btn">Panel Administrador</a>
            </div>
        </div>
        <footer class="mt-4">
            <p class="mb-0 w-100 text-center col-12">
                &copy; ISFDyT N°166 2022 

                - "Mi gimnasio" by <a rel="nofollow" href="https://portfoliojuanpabloalfonso.web.app/" class="tm-text-link"> Alfonso Juan Pablo </a>
            </p>
        </footer>
                        <% } %>
    </body>
</html>
