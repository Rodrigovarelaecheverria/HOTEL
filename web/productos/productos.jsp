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
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>  
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#from").datepicker({dateFormat: "yy-mm-dd"}).val();
                $("#to").datepicker({dateFormat: "yy-mm-dd"}).val();
            });
        </script>

        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <link rel="icon" href="../images/snl.fw.png" />

        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <!-- Sweet Alert Script -->
        <script src="../js/sweetalert.min.js"></script>
        <!-- Sweet Alert Styles -->
        <link href="../css/sweetalert.css" rel="stylesheet">
        <!-- Custom functions file -->
        <script src="../js/functions.js"></script>
        <script type="text/javascript" src="../js/validar.js"></script>

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
                    <h2 class="tittle-one"><strong>ADMINISTRAR PRODUCTOS</strong></h2>
                </div>
                <div align="center" id="centro">
                    <div id="centro_admin" align="center">
                        <div id="tarjeta" style="display:inline-block;">
                            <form method="post" name="codigosf" id="codigosf " action="productos.jsp">
                                <table>
                                    <tr>
                                        <td align="center" rowspan="2" style='background-color: #3253bf; color: white;'> 
                                            <h4><strong>BUSCAR</strong></h4>
                                        </td>
                                        <td>
                                            <select name="busqueda">
                                                <option value="0">Buscar Por Código</option>
                                                <option value="1">Buscar Por Producto</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type='text' required id='txtbuscar' name='txtbuscar'/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td aling="center" colspan="2">
                                            <strong><input type="submit" name="btnbuscar" value="BUSCAR" style="width:100%;"/></strong>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                            <br>
                            <br>
                            <%  String consulta = "select * from productos order by detalle asc";

                                if (request.getParameter("btnbuscar") != null) {
                                    String combo = request.getParameter("busqueda");
                                    String txt = request.getParameter("txtbuscar");
                                    if (combo.equals("0")) {
                                        consulta = "select * from productos where cod like'%" + txt + "%' order by detalle asc";
                                    } else {
                                        consulta = "select * from productos where detalle like'%" + txt + "%' order by detalle asc";
                                    }

                                }
                                rs = con.consulta(consulta);
                                out.print("<table>");
                                out.print(" <tbody>");
                                out.print("<tr align='center'>");
                                out.print(" <td rowspan='2' style='background-color: #3253bf; color: white; align='center' width='110'><strong>CODIGO</strong></td>");
                                out.print(" <td rowspan='2' style='background-color: #3253bf; color: white; align='center' width='110'><strong>PRODUCTO</strong></td>");
                                out.print(" <td rowspan='2' style='background-color: #3253bf; color: white; align='center' width='110'><strong>PRECIO </strong></td>");
                                out.print(" <td rowspan='2' style='background-color: #3253bf; color: white; align='center' width='110'><strong>ESTADO</strong></td>");
                                out.print(" <td colspan='3' style='background-color: #3253bf; color: white; align='center' width='110'><strong>ACCIONES</strong></td>");

                                out.print(" </tr>");
                                out.print("<tr align='center'>");
                                out.print(" <td style='background-color: #3253bf; color: white; align='center' width='110'><strong>ACTIVAR</strong></td>");
                                out.print(" <td style='background-color: #3253bf; color: white; align='center' width='110'><strong>DESACTIVAR</strong></td>");
                                out.print(" <td style='background-color: #3253bf; color: white; align='center' width='110'><strong>MODIFICAR</strong></td>");
                                out.print(" </tr>");
                                while (rs.next()) {

                                    out.print("<tr align='center'>");
                                    out.print("<td>" + rs.getString("cod") + "</td>");
                                    out.print(" <td>" + rs.getString("detalle") + "</td>");
                                    out.print(" <td >" + rs.getString("precio") + "</td>");
                                    if (rs.getString("estado").endsWith("t")) {
                                        out.print(" <td>Activo</td>");
                                    } else {
                                        out.print(" <td>Inactivo</td>");
                                    }
                                    out.print(" <td align='center'><a href=./producto_activo.jsp?idp=" + rs.getString("cod") + "><img src=../img/activar.png width=30px height=30px></a></td>");
                                    out.print(" <td align='center'><a href=./producto_inactivo.jsp?idp=" + rs.getString("cod") + "><img src=../img/eliminar.png width=30px height=30px></a></td>");
                                    out.print(" <td align='center'><a href=./producto_modificar.jsp?idp=" + rs.getString("cod") + "><img src=../img/editar.png width=30px height=30px></a></td>");
                                    out.print(" </tr>");
                                }
                                out.print("</tbody>");
                                out.print("</table>");
                            %>
                            <script>
                                function abrir(url) {
                                    open(url, '', 'top=300,left=300,width=300,height=300');
                                }
                            </script> 
                        </div>

                    </div>

                </div>
                <div style="float:left;">&nbsp &nbsp &nbsp</div>
                <div align="center" id="configurar">
                    <div id="centro_admin" align="center">
                        <div id="tarjeta" style="display:inline-block;">
                            <table>
                                <tr>
                                    <td align="center" rowspan="2" style='background-color: #3253bf; color: white;'> 
                                        <h4><strong>AGREGAR PRODUCTO</strong></h4>
                                    </td>  
                                </tr>
                            </table><br>

                            <form  id="n_producto" name="n_producto" action="producto_nuevo.jsp" method="POST">
                                <div class="form-group">
                                    <input type="text" required class="form-control" id="codigo" name="codigo" placeholder="Código de producto">
                                </div>
                                <div class="form-group">
                                    <input type="text" required class="form-control" id="detalle" name="detalle" placeholder="Detalle de producto">
                                </div>
                                <div class="form-group">
                                    <input type="text" required class="form-control" id="precio" name="precio" placeholder="Precio de Producto" onkeydown="return numeros(event)">
                                </div>
                                <strong><input type="submit" name="btnagregar" value="AGREGAR" style="width:100%;"/></strong>
                            </form>

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