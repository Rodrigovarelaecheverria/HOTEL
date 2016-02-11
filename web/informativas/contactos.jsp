<%@page import="clases.email"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

        <%
            String user = (String) session.getAttribute("varUsuario");
            conexion con = new conexion();
            ResultSet rs = con.consulta("select * from mail where idmail=1");
            String gmail = "", outlook = "", clave = "";
            while (rs.next()) {
                gmail = rs.getString("gmail");
                outlook = rs.getString("outlook");
                clave = rs.getString("pass");
            }
        %>

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
        <script src="../js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="../js/move-top.js"></script>
        <script type="text/javascript" src="../js/easing.js"></script>

        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });

        </script>
        <script type="text/javascript">
            function letras(e) { // 1
                tecla = (document.all) ? e.keyCode : e.which;
                if (tecla == 8)
                    return true; // backspace
                if (tecla == 32)
                    return true; // espacio
                if (e.ctrlKey && tecla == 86) {
                    return true;
                } //Ctrl v
                if (e.ctrlKey && tecla == 67) {
                    return true;
                } //Ctrl c
                if (e.ctrlKey && tecla == 88) {
                    return true;
                } //Ctrl x

                patron = /[a-zA-Z]/; //patron

                te = String.fromCharCode(tecla);
                return patron.test(te); // prueba de patron
            }
        </script>
        <link rel="icon" href="../images/snl.fw.png" />
        <!-- start-smoth-scrolling -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="../index.jsp"  data-toggle="tooltip" data-placement="top" title="Hotel Sierra Norte"><img src="../images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="../images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                             <ul class="nav1">
                                <li><a href="../index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">LUGAR</a></li>

                                <li><a href="#" 
                                       data-toggle="tooltip" data-placement="top" title="CONOCE">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="acercade.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="QUIENES SOMOS">QUIENES SOMOS</a></li>
                                        <li><a class="active" href="mision.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="MISION Y VISION">MISIÓN Y VISIÓN</a></li>
                                        <li><a class="active" href="nosotros.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="ACERCA DE">ACERCA DE</a></li>
                                    </ul>
                        </nav>

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

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--contact-->
        <div class="contact">
            <div class="container">
                <div style="float: right; width: 1140px;">
                    <a href="../ayudas/ayuda_index.jsp"><img src="../img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="../img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                <div class="about-top heading">

                    <img src="../img/banner_sierra.png" width='650' height='175' alt=""/>
                </div>

                <div class="contact-form">

                    <h3 class="tittle">Contactenos:</h3>

                    <form action="../resultado.jsp" method="post" name="registro" id="registro" >
                        <input type="text" placeholder="Ingresa tu correo" name="de" value="<%out.print(gmail);%>" readonly="readonly" style="visibility:hidden"/>
                        <input type="text" placeholder="Ingrese su nombre" name="nombre" onkeydown="return letras(event);">

                        <input type="text" placeholder="rodrigovarela@outlook.es" name="para" value="<%out.print(outlook);%>" readonly="readonly" style="visibility:hidden"/>

                        <div id="asunto"> <input type="text" placeholder="asunto" name="asunto"/></div>  
                        <input type="password" placeholder="Ingresa tu clave" name="clave" value="<%out.print(clave);%>" readonly="readonly" style="visibility:hidden"/>

                        <textarea name="mensaje" placeholder="Mensaje" ></textarea>
                        <input type="submit" value="ENVIAR"/>
                    </form>

                    
                </div>
            </div>
        </div>

        <!--//contact-->
        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACION</h3>
                    <ul>
                        <li><a href="../index.jsp">PRINCIPAL</a></li>
                        <li><a href="acercade.jsp">ACERCA DE</a></li>                      			
                        <li><a href="servicios.jsp">SERVICIOS</a></li>
                        <li><a href="ubicacion.jsp">UBICACION</a></li>
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
                    <h3>DIRECCION</h3>
                    <ul>
                        <li>AV. MARIANO ACOSTA Y MANUELA CANIZARES</li>
                        <li>TELEFONO:(06)2630706</li>
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
                <p>2015 Hotel Sierra Norte. Derechos Reservados | Disenado por:Rodrigo Varela,Alexis Marquez,Christian Suarez.</a></p>
            </div>
        </div>
        <!-- //copy -->
        <!-- for bootstrap working -->
        <script src="../js/bootstrap.js"></script>
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