<%@page import="clases.MailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    conexion con = new conexion();
    ResultSet rs = null;
    String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOTEL SIERRA NORTE</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Classic Hotel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="./js/validar.js"></script>
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="index.html"><img src="images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a class="active" href="index.jsp" >PRINCIPAL</a></li>
                                <li><a href="#">HOTEL</a>
                                    <ul>
                                        <li><a href="acercade.jsp">QUIENES SOMOS</a></li>
                                        <li><a href="mision.jsp">MISIÓN Y VISIÓN</a></li>
                                        <li><a href="galeria.jsp" >GALERÍA</a></li>
                                        <li><a href="servicios.jsp" >SERVICIOS</a></li>
                                        <li><a href="ubicacion.jsp" >UBICACIÓN</a></li>
                                        <li><a href="contactos.jsp" >CONTACTOS</a></li>
                                    </ul>
                                </li>
                                <li><a href="reservas.html" >RESERVACIONES</a></li>

                                <li><a href="#" >REGISTRO</a>
                                    <ul>
                                        <li><a href="rnuevop.jsp">CLIENTES</a></li>
                                        <li><a href="./registros/mregistrop.jsp">BUSCAR CLIENTES</a></li>
                                        <li><a href="rnuevoad.jsp">ADMINISTRADOR</a></li>                                                        
                                    </ul> 
                                </li>
                                <li><a href="#" >ACCESO</a>
                                    <ul>
                                        <li><a href="./administracion/loginc.jsp">CLIENTES</a></li>
                                        <li><a href="./administracion/logina.jsp">ADMINISTRADOR</a></li>                                                        
                                    </ul> 
                                </li>
                            </ul>
                        </nav>
                        <!-- script for menu -->
                        <script>
            $("span.menu").click(function () {
                $("ul.nav1").slideToggle(300, function () {
                    // Animation complete.
                });
            });
                        </script>
                        <!-- //script for menu -->

                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="#" class="f1"></a></li>
                            <li><a href="#" class="f2"></a></li>
                            <li><a href="#" class="f3"></a></li>
                            <li><a href="#" class="f4"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--about-->
        <!--start-about-->
        <div class="about">
            <div class="container">
                <div class="about-top heading">
                    <h2 class="tittle-one">ADMINISTRADOR</h2>
                </div>
                <div >


                    <!--inicio de contenido-->
            <section id="main-content">
                <section class="wrapper">
                    <center><h4><i class="fa fa-refresh"></i>Modificando Registro</h4></center>
                    <div class="row mt">

                        <div class="col-lg-12">
                            <div class="form-panel">
                                <br>
                                <center><h5><i class="fa fa-refresh"></i>Cambiar contraseña mediante correo</h5></center>
                                <br>
                                <form  id="clave" name="clave" action="" method="POST">
                                    <button type="submit" class="btn btn-default btn-lg btn-block" name="cambio" id="cambio">Generar Enlace</button>
                                </form>
                                <br>
                                <center><h5><i class="fa fa-refresh"></i>Cambiar contraseña Manualmente</h5></center>
                                <br>
                                <form  id="clave" name="clave" action="" method="POST">
                                    <div class="form-group">
                                        <input type="password" required class="form-control" id="nueva" name="nueva" placeholder="Ingrese su nueva contraseña" onchange="validarp(this.value, clave)">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" required class="form-control" id="rnueva" name="rnueva" placeholder="Repita su nueva contraseña" onchange="validarp(this.value, clave)">
                                    </div>
                                    <button type="submit" class="btn btn-default btn-lg btn-block" name="enviar" id="enviar">Guardar Cambios</button>

                                </form>
                                <%
                                    if (request.getParameter("enviar") != null) {
                                        String n = request.getParameter("nueva");
                                        String rn = request.getParameter("rnueva");
                                        if (n.equals(rn)) {
                                            con.consulta("update personas set clave=md5('" + n + "'), estactivo='true' where dni='" + id + "';");
                                            out.print("<script>alert('Contraseña Actualizada');</script>");
                                            out.println("<script language='javascript'>window.location='../administracion/listar.jsp'</script>;");
                                        } else {
                                            out.print("<script>alert('Claves nuevas no coinciden');</script>");
                                        }

                                    }
                                %>
                                <%
                                    if (request.getParameter("cambio") != null) {
                                        con.consulta("update personas set  estactivo='false' where dni='" + id + "';");
                                        MailSender ms = new MailSender();
                                        ms.mensaje("http://localhost:8080/clinica/procesos/cambiocon.jsp?id=" + id + "");
                                        rs = con.consulta("select * from personas where dni='" + id + "'");
                                        String envio = "";
                                        while (rs.next()) {
                                            envio = rs.getString("correo");
                                        }
                                        ms.para(envio);
                                        ms.SendMail();
                                        out.print("<script>alert('Enlace enviado exitosamente');</script>");
                                        out.println("<script language='javascript'>window.location='../administracion/listar.jsp'</script>;");
                                    }
                                %>
                            </div>
                        </div>
                    </div>  
                </section>
            </section>


        </section>


                    </section>
                </div>
            </div>
        </div>
        <!--end-vision-->
        <!--start-vision-->
        <!--<div class="vision">
                <div class="container">
                        <div class="vision-top heading">
                                <h3 class="tittle">HABITACIONES CONFORTABLES</h3>
                        </div>
                        <div class="vision-bottom">
                                <div class="col-md-8 vision-left">
                                        <div class="col-md-5 vsn-left">
                                                <img src="images/13.jpg" alt="" />
                                        </div>
                                        <div class="col-md-7 vsn-right">
                                                <h4>Praesent nunc egestas eget elementum sed; rutrum eget metus!</h4>
                                                <p>Aenean eu enim imperdiet, hendrerit purus congue, semper lectus. Nullam metus urna, efficitur in tristique a, suscipit in eros. Vestibulum tincidunt mattis ante, eu lobortis arcu convallis laoreet. Vivamus vestibulum dolor vel metus finibus aliquet. Donec nibh lorem.</p>
                                        </div>
                                        <div class="clearfix"></div>
                                </div>
                                <div class="col-md-4 vision-right">
                                        <ul>
                                                <li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Interdum et malesuada fames ac ante</a></li>
                                                <li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Suspendisse purus justo, fringilla</a></li>
                                                <li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Aenean eu enim imperdiet, hendrerit </a></li>
                                                <li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Sed consequat finibus nisi, sed conval</a></li>
                                                <li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Maecenas non lectus tristique, vesti</a></li>
                                                <li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Quisque quis nisl eget velit laoreet</a></li>
                                        </ul>
                                </div>
                                <div class="clearfix"></div>
                        </div>
                </div>
        </div>-->
        <!--end-vision-->
        <!--start-teacher-->
        <!--<div class="staff">
                <div class="container">
                        <h3 class="tittle">OUR TEAM</h3>
                        <ul class="ch-grid">
                                        <li>
                                                <div class="ch-item ch-img-1">				
                                                        <div class="ch-info-wrap">
                                                                <div class="ch-info">
                                                                        <div class="ch-info-front ch-img-1"></div>
                                                                        <div class="ch-info-back">
                                                                                <h4>VICTORIA</h4>
                                                                                <p>Praesent nunc egestas eget elem</p>
                                                                        </div>	
                                                                </div>
                                                        </div>
                                                </div>
                                        </li>
                                        <li>
                                                <div class="ch-item ch-img-2">
                                                        <div class="ch-info-wrap">
                                                                <div class="ch-info">
                                                                        <div class="ch-info-front ch-img-2"></div>
                                                                        <div class="ch-info-back">
                                                                                <h4>WILLIAM</h4>
                                                                                <p>Praesent nunc egestas eget elem</p>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </li>
                                        <li>
                                                <div class="ch-item ch-img-3">
                                                        <div class="ch-info-wrap">
                                                                <div class="ch-info">
                                                                        <div class="ch-info-front ch-img-3"></div>
                                                                        <div class="ch-info-back">
                                                                                <h4>THOMPSON</h4>
                                                                                <p>Praesent nunc egestas eget elem</p>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </li>
                                        <li>
                                                <div class="ch-item ch-img-4">
                                                        <div class="ch-info-wrap">
                                                                <div class="ch-info">
                                                                        <div class="ch-info-front ch-img-4"></div>
                                                                        <div class="ch-info-back">
                                                                                <h4>JOHN DOE</h4>
                                                                                <p>Praesent nunc egestas eget elem</p>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </li>
                        </ul>
                </div>
        </div>-->
        <!--//about-->
        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÒN</h3>
                    <ul>
                        <li><a href="index.html">PRINCIPAL</a></li>
                        <li><a href="acercade.html">ACERCA DE</a></li>
                        <!--<li><a href="typography.html">SERVICIOS</a></li>-->						
                        <li><a href="reservas.html">RESERVACIONES</a></li>
                        <li><a href="ubicacion.html">UBICACIÓN</a></li>
                    </ul>
                </div>
                <div class="col-md-3 ftr_navi ftr">
                    <h3>HABITACIONES</h3>
                    <ul>
                        <li>HABITACIONES TRIPLES</li>
                        <li>HABITACIONES PARA 4 PERSONAS</li>
                        <li>HABITACIONES DOBLES</li>						
                        <li>HABITACIONES SIMPLES</li>
                    </ul>
                </div>
                <div class="col-md-3 ftr_navi ftr">
                    <h3>DIRECCIÒN</h3>
                    <ul>
                        <li>AV. MARIANO ACOSTA Y MANUELA CAÑIZARES</li>
                        <li>TELÈFONO:(06)2630706</li>
                        <li>EMAIL:edisonlopezsa@gmail.com</li>
                    </ul>
                </div>
                <div class="col-md-3 ftr-logo">
                    <a href="index.html"><img src="images/iconsn.fw.png" alt=""/></a>
                    <ul>
                        <li><a href="#" class="f1"> </a></li>
                        <li><a href="#" class="f2"> </a></li>
                        <li><a href="#" class="f3"> </a></li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!--footer-->
        <!-- copy -->
        <div class="copy-right">
            <div class="container">
                <p>2015 Hotel Sierra Norte. Derechos Reservados | Diseñado por:Rodrigo Varela,Alexis Marquez,Christian Suarez.</a></p>
            </div>
        </div>
        <!-- //copy -->
        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- smooth scrolling -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */
                $().UItoTop({easingType: 'easeOutQuart'});
            });
        </script>
        <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- //smooth scrolling -->
    </body>
</html> 

