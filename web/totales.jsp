<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();
    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String nom = "", apel = "", foto = "", nivel = "";
    while (rs.next()) {
        nom = rs.getString("nombres");
        apel = rs.getString("apellidos");
        foto = rs.getString("foto");
        nivel = rs.getString("tpersona");
    }
    
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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->

        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script src="jquery.ui.datepicker-es.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            $(function () {

                $("#from").datepicker({
                    onClose: function (selectedDate) {
                        $("#to").datepicker("option", "minDate", selectedDate);

                    }
                });

                $("#to").datepicker({
                    onClose: function (selectedDate) {
                        $("#from").datepicker("option", "maxDate", selectedDate);
                    }
                });
            });

            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
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
                        <h1><a href="index.html"><img src="images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                          <ul class="nav1">
                                <li><a href="index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">LUGAR</a></li>

                                <li><a href="#" 
                                       data-toggle="tooltip" data-placement="top" title="CONOCE">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="informativas/acercade.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="QUIENES SOMOS">QUIENES SOMOS</a></li>
                                        <li><a class="active" href="informativas/mision.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="MISION Y VISION">MISIÓN Y VISIÓN</a></li>
                                        <li><a class="active" href="informativas/nosotros.jsp" 
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
                    <a href="ayudas/ayuda_index.jsp"><img src="img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                <div class="about-top heading">
                    <img src="img/banner_sierra.png" width='650' height='175' alt=""/>
                     
                </div>
                <!--<div align="left" id="reservar">
                    <br>
                    <h2 class="tittle-one">RESERVA AQUÍ</h2>


                    <a style="font-weight: bold;">HABITACIONES CON:</a>
                    <br>
                    <br>
                    <a>►Baños privados</a>
                    <br>
                    <br>
                    <a>►Televisión por cable</a>
                    <br>
                    <br>
                    <a>►Servicio de WIFI</a>
                    <br>
                    <br>
                    <a>►Amplio parqueadero</a>
                    <br>
                    <br>
                    <a>►Piscina temperada</a>
                    <br>
                    <br>
                    <a>►Turco e hidromasaje</a>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <div id="reser">
                        <a href="reservas.jsp">RESERVAR</a>
                    </div>

                </div>-->

                <div id="separar"></div>

                <div id="centro_admin">


                     


                    <%
                        int totales = 0;
                        String consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total from reservasi r, personas p  where  p.dni=r.dni and r.estado='t'";
                        if (request.getParameter("enviar") != null) {
                            String inicio = request.getParameter("finicio");
                            String fin = request.getParameter("ffin");
                            consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total from reservasi r, personas p  where  p.dni=r.dni and r.estado='t' and (r.fentrada>='" + inicio + "' and r.fsale<='" + fin + "')";
                        }
                        rs = con.consulta(consulta);
                        out.print("<table border='1'>");
                        out.print(" <tbody>");
                        out.print("<tr>");
                        out.print(" <td align='center' width='110'><strong>Codigo</strong></td>");
                        out.print(" <td align='center' width='110'><strong>Dni</strong></td>");
                        out.print(" <td align='center' width='110'><strong>Nombres</strong></td>");
                        out.print(" <td align='center' width='110'><strong>Apellidos</strong></td>");
                        out.print(" <td align='center' width='110'><strong>Fecha Ingreso</strong></td>");
                        out.print(" <td align='center' width='110'><strong>Fecha Salida</strong></td>");
                        out.print(" <td align='center'  width='110'><strong>TOTAL</strong></td>");

                        out.print(" </tr>");
                        while (rs.next()) {

                            out.print("<tr>");
                            out.print("<td>" + rs.getString("idreservai") + "</td>");
                            out.print(" <td>" + rs.getString("dni") + "</td>");
                            out.print(" <td>" + rs.getString("nombres") + "</td>");
                            out.print(" <td>" + rs.getString("apellidos") + "</td>");
                            out.print(" <td>" + rs.getString("fentrada") + "</td>");
                            out.print(" <td>" + rs.getString("fsale") + "</td>");
                            out.print(" <td align='right'> <strong>" + rs.getString("total") + "</strong></td>");
                            out.print(" </tr>");
                            int tot=Integer.parseInt(rs.getString("total"));
                            totales=totales+tot;
                            
                        }
                        out.print("</tbody>");
                        out.print(" <tr>");
                        out.print(" <td></td>");
                        out.print(" <td align='center' colspan='4'>");
                        out.print("<h3>TOTAL PERÍODO:</h3>");
                        out.print(" </td>");
                        out.print(" <td align='center' colspan='2'>");
                        out.print("<h3>" + totales + "</h3>");
                        out.print(" </td>");
                        out.print(" </tr>");
                        out.print("</table>");
                    %>

                </div>
 
            </div>
        </div>
        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÓN</h3>
                    <ul>
                        <li><a href="index.jsp" >INICIO</a></li>
                        <li><a href="galeria.jsp" >GALERÍA</a></li>
                        <li><a href="servicios.jsp" >SERVICIOS</a></li>
                        <li><a href="ubicacion.jsp" >UBICACIÓN</a></li>
                        <li><a href="contactos.jsp" >CONTACTOS</a></li>
                        <li><a href="acercade.jsp">QUIENES SOMOS</a></li>
                        <li><a href="mision.jsp">MISIÓN Y VISIÓN</a></li>
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
                <p>Hotel Sierra Norte Derechos Reservados 2015 | Diseñado por: Rodrigo Varela, Alexis Márquez, Christian Suárez</p>
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