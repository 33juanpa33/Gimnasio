<%-- 
    Document   : mensaje
    Created on : 28 oct. 2022, 00:18:19
    Author     : JuanPa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container m-4">
            <div class="${config}" role="alert">
                ${mensaje}!
            </div>
            <a href="SvCliente?accion=listar">Listar los clientes</a>
            <br>
            <a href="SvActividad?accion=listar">Listar las actividades</a>
        </div>
    </body>
</html>
