<%-- 
    Document   : listaClientes
    Created on : 11 oct. 2022, 22:49:34
    Author     : Juan Pablo Alfonso
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Actividad"%>
<%@page import="model.Cliente"%>
<%@page import="java.sql.Date"%>
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
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
        <title>Lista de Clientes</title>
        <link rel="stylesheet" media="all" href="assets/css/style.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Lista de Clientes</h1>
                <div class="main-button scroll-to-section">
                    <h4 style="text-align:center">(Edición o baja)</h4>
                    <a href="SvCliente?accion=nuevo">Nuevo Cliente</a>
                    <a href="SvCliente?accion=listar">Mostrar Clientes</a>
                </div>
            </div>
            <div class="row tabla">
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>DNI</th>
                            <th>Usuario</th>
                            <th>Clave</th>
                            <th>Nacimiento</th>
                            <th>Telefono</th>
                            <th>Tel. Em.</th>
                            <th>Ultimo Pago</th>
                            <th>Actividades</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%--                    <% HttpSession misession = request.getSession();                    
                                            List <Cliente> listaClientes = (List) misession.getAttribute("listaClientes");
                                            for (Cliente cli : listaClientes) { %>
                        --%>
                        <c:forEach var="cliente" items="${Clientes}">
                            <tr>

                                <td> ${cliente.idCliente} </td>
                                <td> ${cliente.nombre} </td>
                                <td> ${cliente.apellido} </td>
                                <td> ${cliente.documento} </td>
                                <td> ${cliente.usuario} </td>
                                <td> ${cliente.clave} </td>
                                <td> ${cliente.nacimiento} </td>
                                <td> ${cliente.telefono} </td>
                                <td> ${cliente.telefonoE} </td>
                                <td> ${cliente.pago} </td>
                                <td> ${cliente.idActividad} </td>
                                <td>
                                    <a class="btn btn-primary btn-block btn-large" href="SvCliente?accion=editar&idCliente=${cliente.idCliente}">Modificar</a>
                                </td>
                                <td>
                                    <a class="btn btn-primary btn-block btn-large" href="SvCliente?accion=eliminar&idCliente=${cliente.idCliente}" onclick="javascript:return asegurar();">Eliminar</a>
                                </td>


                                <%--
                            <% int idCliente = cli.getIdCliente();%>
                            <td> <%=idCliente%> </td>
                            <% String nombre = cli.getNombre();%>
                            <td> <%=nombre%> </td>
                            <% String apellido = cli.getApellido();%>
                            <td> <%=apellido%> </td>
                            <% String documento = cli.getDocumento();%>
                            <td> <%=documento%> </td>
                            <% String usuario = cli.getUsuario();%>
                            <td> <%=usuario%> </td>
                            <% String clave = cli.getClave();%>
                            <td> <%=clave%> </td>
                            <% Date nacimiento = cli.getNacimiento();%>
                            <td> <%=nacimiento%> </td>
                            <% String telefono = cli.getTelefono();%>
                            <td> <%=telefono%> </td>
                            <% String telefonoE = cli.getTelefonoE();%>
                            <td> <%=telefonoE%> </td>
                            <% Date pago = cli.getPago();%>
                            <td> <%=pago%> </td>
                            <% List<Actividad> actividades = cli.getListaActividades();%>
                            <td>
                                <% for (Actividad act : actividades) { %>
                                <%=act.getNombre() %>
                                <br>
                            <% } %>
                            </td>
                            
                                --%>
                            </tr>
                        </c:forEach>
                        <%--
                        <%}%>
                        --%>
                    </tbody>

                </table>
            </div>

        </div>
        <script>
            function asegurar()
            {
                return confirm("¿Seguro que desea Eliminar?");
            }
        </script>
    </body>
</html>