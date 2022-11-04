<%-- 
    Document   : loginCliente
    Created on : 4 nov. 2022, 01:48:59
    Author     : JuanPa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main-banner" id="top">
            <video autoplay muted loop id="bg-video">
                <source src="assets/images/gym-video.mp4" type="video/mp4" />
            </video>

            <div class="video-overlay header-text">
                <div class="caption">
                    <h2>Bienvenido</h2>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-xs-12">
                                <div class="contact-form">
                                    <form id="contact" action="SvCliente" method="POST">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <fieldset>
                                                    <input name="usuario" type="text" id="name" placeholder="Tu Usuario*" required="">
                                                </fieldset>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <fieldset>
                                                    <input name="clave" type="text" id="email" placeholder="Tu Clave*" required="">
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <button type="submit" value="loguear" name="accion" id="form-submit" class="main-button scroll-to-section">Ingresar Como Cliente</button>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
