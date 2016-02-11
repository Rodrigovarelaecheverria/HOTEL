<%@page import="clases.MailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    conexion con = new conexion();
    ResultSet rs = null;
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
                        <h1><a href="../index.jsp"><img src="../images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="../images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                           <ul class="nav1">
                                <li><a href="../index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="../informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="../informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="../informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">LUGAR</a></li>

                             

                                <li><a href="#" 
                                       data-toggle="tooltip" data-placement="top" title="CONOCE">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="../informativas/acercade.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="QUIENES SOMOS">QUIENES SOMOS</a></li>

                                        <li><a class="active" href="../informativas/mision.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="MISION Y VISION">MISIÓN Y VISIÓN</a></li>
                                        <li><a class="active" href="../informativas/nosotros.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="ACERCA DE">ACERCA DE</a></li>
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


                  <section id="main-content">
                <section class="wrapper">
                    <center><h1><i class="fa fa-refresh"></i>Estado del Registro Nuevo</h1></center>
                    <br> <br><br> <%
                        String tipo = request.getParameter("tdocumento");
                        String dni = request.getParameter("dni");
                        String nombre = request.getParameter("nombres");
                        String apellido = request.getParameter("apellidos");
                        String correo = request.getParameter("correo");
                        String telefono = request.getParameter("telefono");
                        String celular = request.getParameter("celular");
                        String direccion = request.getParameter("direccion");
                        String perfil = request.getParameter("perfil");
                        String clave = request.getParameter("clave");
                         rs = con.consulta("select p.dni,p.correo,p.estpersona from personas p where dni='" + dni + "' or correo='" + correo + "'");
                        String dn = "";
                        String cor = "";
                        String est = "";
                        while (rs.next()) {
                            dn = rs.getString("dni");
                            cor = rs.getString("correo");
                            est = rs.getString("estpersona");
                        }

                    %><br><br><br>
                    <%if (dn.equals(dni)) {
                    %>
                    <center><h4>Alerta Encontrada?</h4></center>
                    <center> <p>El Dni ingresado ya se encuentra registrado en la base de datos</p></center>

                    <%
                    } else if (cor.equals(correo)) {
                    %>
                    <center> <h4>Alerta Encontrada?</h4></center>
                    <center> <p>El correo electronico ingresado ya se encuentra registrado en la base de datos</p></center>

                    <%
                    } else if (est.equals("t")) {
                    %>
                    <center><h4>Alerta Encontrada?</h4></center>
                    <center> <p>Este usuario esta desativado temporalmente contacte la institucion</p></center>

                    <%
                    } else {
                    %>
                    <center><h4>Usted a creado un cuenta nueva</h4></center>
                    <center><p>REVISE SU CORREO PARA ACTIVARLA.</p></center>

                    <%
                            con.consulta("INSERT INTO personas(dni, tdocumento, nombres, apellidos, correo, telefono, celular,direccion, clave, tpersona,estactivo)VALUES ('" + dni + "', 'true', '" + nombre + "', '" + apellido + "', '" + correo + "', '" + telefono + "', '" + celular + "','" + direccion + "',md5('" + clave + "'), '" + perfil + "','true');");
                             MailSender ms = new MailSender();
    ms.mensaje("HOTEL SIERRA NORTE TE DA LA BIENVENIDA\n"
            + "Para activar su cuenta por favor haga click en el siguiente enlace: \n"
            +"http://localhost:8080/hotel/activada.jsp?id="+dni+"");
    ms.para(correo);
    ms.SendMail();
                        }%>

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
                            <li><a href="../index.jsp" >INICIO</a></li>
                            <li><a href="../informativas/galeria.jsp" >GALERÍA</a></li>
                            <li><a href="../informativas/servicios.jsp" >SERVICIOS</a></li>
                            <li><a href="../informativas/ubicacion.jsp" >UBICACIÓN</a></li>
                        
                            <li><a href="../informativas/acercade.jsp">QUIENES SOMOS</a></li>
                            <li><a href="../informativas/mision.jsp">MISIÓN Y VISIÓN</a></li>
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
                    <a href="../index.jsp"><img src="../images/iconsn.fw.png" alt=""/></a>
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
