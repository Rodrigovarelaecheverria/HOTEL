
<%@page import="sun.misc.BASE64Decoder"%>
<%@page import="java.sql.ResultSet"%>
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
                                <li><a href="ayuda_mregistro.jsp" >AYUDA</a></li>
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
                    <h2 class="tittle-one">LISTA DE CLIENTES</h2>
                </div>

            </div>
            <div>
                <form  id="mregistrop" name="mregistrop" action="../registros/mregistrop.jsp" method="POST">
                    <div class="form-group">
                        <select autofocus required class="form-control" name="tdocumento" id="tdocumento">
                            <option value="0">Cédula</option>
                            <option value="1">Apellido</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" required class="form-control" id="busqueda" name="busqueda" placeholder="Ingrese lo que desea buscar">
                    </div>

                    <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">BUSCAR</button>
                </form>
            </div>
            <div >


                <%      if (request.getParameter("buscar") != null) {
                        conexion con = new conexion();
                        String valor = request.getParameter("tdocumento");
                        String buscar = request.getParameter("busqueda");
                        String consulta = "";
                        String tipo = "C1";
                        if (valor.equals("0")) {
                            consulta = "select * from personas where tpersona = '" + tipo + "' and dni like'%" + buscar + "%'";
                        } else if (valor.equals("1")) {
                            consulta = "select * from personas where apellidos like'%" + buscar + "%'";
                        }
                        ResultSet rs = con.consulta(consulta);
                        int contador = 0;
                        while (rs.next()) {
                            contador++;
                        }
                        rs = con.consulta(consulta);
                        if (contador > 0) {
                            out.print("<table width='700' border='1'>");
                            out.print("<tbody>");
                            out.print(" <tr>");
                            out.print("  <td>DNI </td>");
                            out.print(" <td>Nombres</td>");
                            out.print(" <td>Apellidos</td>");
                            out.print(" <td>Agregar Foto</td>");
                            out.print(" <td>Estado</td>");
                            out.print(" <td>Accion</td>");
                            out.print("</tr>");
                            while (rs.next()) {

                                out.print("<tr>");
                                out.print("  <td>" + rs.getString("dni") + "</td>");
                                out.print("  <td>" + rs.getString("nombres") + "</td>");
                                out.print("  <td>" + rs.getString("apellidos") + "</td>");
                                out.print("  <td>&nbsp;<a href=../registros/fotoc_agregar.jsp?id=" + rs.getString("dni") + ">AGREGAR</a></td>");
                                out.print("  <td>" + rs.getString("estpersona") + "</td>");
                                out.print("  <td>&nbsp;<a href=../registros/modregistrop.jsp?id=" + rs.getString("dni") + "><img src=../img/editar.png width=30px height=30px></a>"
                                        + "&nbsp;<a href=../procesos/eregistrop.jsp?id=" + rs.getString("dni") + "><img src=../img/borrar.png width=30px height=30px></a>"
                                        + "&nbsp;<a href=../procesos/aregistrop.jsp?id=" + rs.getString("dni") + "><img src=../img/activar.png width=30px height=30px></a>"
                                        + "&nbsp;<a href=../procesos/elregistrop.jsp?id=" + rs.getString("dni") + "><img src=../img/eliminar.png width=30px height=30px></a></td>");
                                out.print(" </tr>");
                            }
                            out.print("</tbody>");
                            out.print("</table>");
                        } else {

                        }
                    }
                %>

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
                    <h3>ESPACIO DE NAVEGACIÃ’N</h3>
                    <ul>
                        <li><a href="index.html">PRINCIPAL</a></li>
                        <li><a href="acercade.html">ACERCA DE</a></li>
                        <!--<li><a href="typography.html">SERVICIOS</a></li>-->						
                        <li><a href="reservas.html">RESERVACIONES</a></li>
                        <li><a href="ubicacion.html">UBICACIÃ“N</a></li>
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
                    <h3>DIRECCIÃ’N</h3>
                    <ul>
                        <li>AV. MARIANO ACOSTA Y MANUELA CAÃ‘IZARES</li>
                        <li>TELÃˆFONO:(06)2630706</li>
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
                <p>2015 Hotel Sierra Norte. Derechos Reservados | DiseÃ±ado por:Rodrigo Varela,Alexis Marquez,Christian Suarez.</a></p>
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