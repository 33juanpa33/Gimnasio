<%-- 
    Document   : panelAdministrador
    Created on : 4 nov. 2022, 01:03:44
    Author     : JuanPa
--%>

<%@page import="model.Administrador"%>
<% // @page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrador</title>
        <%
            if (request.getSession().getAttribute("usuarioLogueado") == null) { %>
            <%=request.getSession().getAttribute("usuarioLogueado")%>
            <% response.sendRedirect("index.jsp");
            };
            
            Administrador adminActivo = (Administrador) request.getSession().getAttribute("usuarioLogueado");
            
        %>
    </head>
    <body>
        
        <h2>Su Cargo Actual Es: ${administradorLog.nombre}</h2>
    </body>
</html>
