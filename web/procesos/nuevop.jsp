<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="clases.MailSender"%>
<%@page import="clases.conexion"%>
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
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="index.html"><img src="../images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="../images/menu.png" alt=""/></span>
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
                            $("span.menu").click(function() {
                                $("ul.nav1").slideToggle(300, function() {
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
                    <h2 class="tittle-one">POR FAVOR REVISE SU CORREO PARA ACTIVAR SU CUENTA</h2>
                </div>
                
            </div>
        </div>
        
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÃN</h3>
                    <ul>
                        <li><a href="index.html">PRINCIPAL</a></li>
                        <li><a href="acercade.html">ACERCA DE</a></li>
                        <!--<li><a href="typography.html">SERVICIOS</a></li>-->						
                        <li><a href="reservas.html">RESERVACIONES</a></li>
                        <li><a href="ubicacion.html">UBICACIÃN</a></li>
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
                    <h3>DIRECCIÃN</h3>
                    <ul>
                        <li>AV. MARIANO ACOSTA Y MANUELA CAÃIZARES</li>
                        <li>TELÃFONO:(06)2630706</li>
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
                <p>2015 Hotel Sierra Norte. Derechos Reservados | Diseñado por:Rodrigo Varela,Alexis Marquez,Christian Suarez.</p>
            </div>
        </div>
        <!-- //copy -->
        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- smooth scrolling -->
        <script type="text/javascript">
                                            $(document).ready(function() {
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
<%
    conexion con = new conexion();
    String tipo = request.getParameter("tdocumento");
    String dni = request.getParameter("dni");
    String nombre = request.getParameter("nombres");
    String apellido = request.getParameter("apellidos");
    String correo = request.getParameter("correo");
    String telefono = request.getParameter("telefono");
    String celular = request.getParameter("celular");
    String direccion = request.getParameter("direccion");
    String clave = request.getParameter("clave");
    String tpersona = "C1";
    con.consulta("INSERT INTO personas(dni, tdocumento, nombres, apellidos, correo, telefono, celular,direccion, clave, tpersona)VALUES ('" + dni + "', 'true', '" + nombre + "', '" + apellido + "', '" + correo + "', '" + telefono + "', '" + celular + "','" + direccion + "', md5('" + clave + "') , '" + tpersona + "');");
    
    MailSender ms = new MailSender();
    ms.mensaje("HOTEL SIERRA NORTE TE DA LA BIENVENIDA\n"
            + "Para activar su cuenta por favor haga click en el siguiente enlace: \n"
            +"http://localhost:8080/clinica/procesos/final.jsp?id="+dni+"");
    ms.para(correo);
    ms.SendMail();
    
%>