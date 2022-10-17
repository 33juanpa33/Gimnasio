<%-- 
    Document   : listaClientes
    Created on : 11 oct. 2022, 22:49:34
    Author     : Juan Pablo Alfonso
--%>

<%@page import="java.util.List"%>
<%@page import="model.Actividad"%>
<%@page import="model.Cliente"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Lista de Clientes</title>
        <link rel="stylesheet" media="all" href="style.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Lista de Clientes</h1>
            </div>
            <div class="row">
                <h4 style="text-align:center">(Edición o baja)</h4>
            </div>
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

                    <%
                        Actividad actFuncional = new Actividad(01, "Funcional", 3000, 3200, 3500);
                        Actividad actCrossfit = new Actividad(02, "Crossfit", 3100, 3300, 3600);
                        Cliente cli = new Cliente(01, new Date(116, 5, 3), "32135464", "348646", new Date(116, 0, 3), "juan", "alfonso", "33356567", "juanpa", "3333");
                        cli.agregarActividad(actFuncional);
                        cli.agregarActividad(actCrossfit);

                    %>

                    <tr>
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
                        <td>
                            <form action="SvModificarCliente" method="POST" class="tm-contact-form">
                                <input type="hidden" name="idCliente" value="<%=idCliente%>">
                                <button type="submit" class="btn btn-primary btn-block btn-large" >Modificar</button>
                            </form>
                        </td>
                        <td>
                            <form action="SvEliminarCliente" method="POST" class="tm-contact-form">
                                <input type="hidden" name="idCliente" value="<%=idCliente%>">
                                <button type="submit" class="btn btn-primary btn-block btn-large" >Eliminar</button>
                            </form>
                        </td>
                    </tr>
                    <%--
                    <%}%>
                    --%>
                </tbody>

            </table>
        </div>
    </body>
</html>