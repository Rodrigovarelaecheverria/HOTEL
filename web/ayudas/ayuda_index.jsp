<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();
    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String nom = "", apel = "", foto = "";
    while (rs.next()) {
        nom = rs.getString("nombres");
        apel = rs.getString("apellidos");
        foto = rs.getString("foto");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            $(document).ready(function(){
                $('[data-toggle="tooltip"]').tooltip(); 
            });
        </script>
         <link rel="icon" href="../images/snl.fw.png" />
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
        <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="../css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../css/component.css" />
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
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
        <!-- start-smoth-scrolling -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="../index.jsp" data-toggle="tooltip" data-placement="top" title="HOTEL SIERRA NORTE"><img src="../images/sn_tiny.png" alt=""/></a></h1>
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
        <!--about-->
        <!--start-about-->
        <div class="about">
            <div class="container">
                <div style="float: right; width: 1140px;">
                    <a href="javascript:history.back()"><img src="../img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                <div id="centro">
                    <div class="about">
                        <div class="container">
                            <div class="about-top heading">
                                   <a class="dropdown-toggle" href="../Reportes/ayuda.jsp?id=/pdf/inicio.pdf">
                                <img src="../images/icono.png"  width="80" />
                                                            </a>

                                <h2 class="tittle-one">Panel de ayuda.</h2>
                            </div>
                            <div class="about-bottom text-center">
                                <p>A continuación se presenta la página principal del Sistema en donde se nos presenta los botones de: Inicio, Galería, Servicios, Lugar, Contacto, Conoce; además también podemos acceder al panel de Reservas y de Inicio de sesión.</p>
                                <img src="../images/a100.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>El botón de inicio nos sirve para redirigirnos a la página principal del sistema, , mientras que si presionas sobre el botón de Galería podemos acceder a la Galería fotográfica del hotel.</p>
                                <img src="../images/a2.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>El botón Servicios nos proporciona información acerca de los servicios que ofrece el Hotel Sierra Norte.</p>
                                <img src="../images/a3.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>El botón Lugar, nos ofrece la ubicación del Hotel Sierra Norte en el mapa de google.</p>
                                <img src="../images/a4.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Al presionar en el botón Contacto, en el menú principal podemos acceder al envió de un correo electrónico a la administración del hotel para podernos contactar de una manera más cómoda.</p>
                                <img src="../images/a5.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Al presionar el botón Conoce en el menú principal de la página, se nos presentará acerca de la misión y visión del Hotel Sierra Norte.</p>
                                <img src="../images/a6.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Es necesario que Iniciemos sesión en el sistema para poder acceder a los distintos servicios del sistema para ello se debe crear una nueva cuenta dando clic en el botón registrarse.</p>
                                <img src="../images/a300.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Y debemos llenar los campos requeridos como son: Número de cédula, Nombres, Apellidos, Correo electrónico, Teléfono, Teléfono móvil, Dirección y clave. A continuación damos clic en reistrar. </p>
                                <img src="../images/a8.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>El sistema nos indica que la cuenta ha sido registrada por lo que debemos verificar el enlace de confirmación en nuestro correo electrónico y nuestra cuenta será activada. Luego debemos iniciar sesión con los datos antes ingresados y nuestro acceso será concedido.</p>
                                <img src="../images/a9.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Una vez que iniciemos sesion podemos acceder a los botones: PERFIL, FOTO, CONTRASEÑA y CERRAR SESIÓN.</p>
                                <img src="../images/a10.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Al dar clic en el botón perfil podemos modificar los datos de nuestra cuenta apretando el botón Actualizar registro.</p>
                                <img src="../images/a11.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Si pulsamos el botón FOTO podemos actualizar nuestra foto del perfil dando clic en browse para elegir nuestra foto y clic en el botón Actualizar foto para subirla al sistema.</p>
                                <img src="../images/a12.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Si pulsamos el botón CONTRASEÑA podemos modificar nuestra contraseña por una nueva dando clic en el botón Actualizar registro.</p>
                                <img src="../images/a13.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Si queremos cerrar nuestra sesión se debe dar clici en el botón cerrar sesión.</p>
                                <img src="../images/a14.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Para poder acceder al panel de reservaciones del hotel es necesario iniciar sesión y dar click en el botón RESERVAR ubicado en la página principal del sistema.</p>
                                <img src="../images/a15.png" alt="" 
                                     <br>
                                <br>
                                <br>
                                <p>Una vez que estemos dentro se nos presentara la siguiente pantalla en donde para poder reservar debemos ingresar una fecha de entrada, una fecha de salida y el número de personas distribuidas entre adultos y niños en donde los niños son considerados los menores as seis a años. Luego damos clic en el botón explorar para que se nos presente las opciones libres a reservar.</p>
                                <img src="../images/a16.png" alt="" />
                                <img src="../images/a17.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Para reservar debemos dar clic en la habitación que deseemos y clic en el botón proformar.</p>
                                <img src="../images/a18.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>El sistema nos presentará los datos antes ingresados y debemos dar clic en enviar para ejecutar la reserva.	</p>
                                <img src="../images/a19.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Dentro del panel de registro de usuarios podemos escoger Clientes, Buscar clientes y Administrador. </p>
                                <img src="../images/b1.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Al dar clic en Clientes podemos registrar un nuevo cliente en donde debemos ingresar los siguientes datos: Número de cédula, Nombres, Apellidos, Correo Electrónico, Teléfono, Teléfono Móvil, Dirección y clave.<p>
                                <img src="../images/b2.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Damos clic en registrar y el sistema nos indica que debemos validar al usuario revisando el correo electrónico del cliente ingresado para validar la cuenta.<p>
                                <img src="../images/b3.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>En el botón Registro también podemos realizar búsquedas dando clic en el botón Buscar clientes, en donde podemos realizar una búsqueda ya sea por número de cédula o por apellido dando clic en el botón buscar.<p>
                                <img src="../images/b4.png" alt="" />
                                <img src="../images/b5.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Para ingresar un nuevo administrador debemos dirigirnos al botón reservaciones en el botón de reservaciones y dar clic en administrador.<p>
                                <img src="../images/b6.png" alt="" />
                                <br>
                                <br>
                                <br>
                                <p>Llenamos los datos y damos clic en el botón registrar. Luego el sistema nos pedirá que se valida la cuenta revisando el correo electrónico del administrador ingresado.<p>
                                <img src="../images/b7.png" alt="" />
                                <br>
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>






        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÓN</h3>
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
                    <h3>HABITACIONES</h3>
                    <ul>
                        <li>HABITACIONES SIMPLES</li>
                        <li>HABITACIONES DOBLES</li>
                        <li>HABITACIONES TRIPLES</li>						
                        <li>HABITACIONES MULTIPLES</li>
                    </ul>
                </div>
                <div class="col-md-3 ftr_navi ftr">
                    <h3>DIRECCIÓN</h3>
                    <ul>
                        <li>AV. MARIANO ACOSTA Y MANUELA CAÑIZARES</li>
                        <li>TELÉFONO:(06)2630706</li>
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
                <p>Hotel Sierra Norte Derechos Reservados 2015 | Diseñado por: Rodrigo Varela, Alexis Márquez, Christian Suárez</a></p>
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