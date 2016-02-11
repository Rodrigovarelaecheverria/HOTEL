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
<%
    String f = request.getParameter("f");

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
        <script src="js/sweetalert.min.js"></script>
        <!-- Sweet Alert Styles -->
        <link href="css/sweetalert.css" rel="stylesheet">
        <!-- Custom functions file -->
        <script src="js/functions.js"></script>
        <script type="text/javascript" src="js/validar.js"></script>
        <script language='JavaScript'>
            function enviar(fi,nombre,precio) {
                opener.document.forms['form'].elements['cantidad_' + fi].value = 0;
                opener.document.forms['form'].elements['producto_' + fi].value = nombre;
                opener.document.forms['form'].elements['preu_' + fi].value = precio;
                self.close();
            }
        </script>
    </head>
    <body>
        <!-- banner -->
        
        <!-- //banner -->
        <!--about-->
        <!--start-about-->
        <div class="about">
            <div class="container">
                <div class="about-top heading">
                    <h2 class="tittle-one"><strong>BUSCAR PRODUCTOS</strong></h2>
                </div>
                <div align="center" id="centro">
                    <div id="centro_admin" align="center">
                        <div id="tarjeta" style="display:inline-block;">
                            <form method="post" name="codigosf" id="codigosf " action="buscar_prod.jsp">
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
                            <%  String consulta = "select * from productos where estado='t' order by detalle asc";

                                if (request.getParameter("btnbuscar") != null) {
                                    String combo = request.getParameter("busqueda");
                                    String txt = request.getParameter("txtbuscar");
                                    if (combo.equals("0")) {
                                        consulta = "select * from productos where cod like'%" + txt + "%' and estado='t' order by detalle asc";
                                    } else {
                                        consulta = "select * from productos where detalle like'%" + txt + "%' and estado='t' order by detalle asc";
                                    }

                                }
                                rs = con.consulta(consulta);
                                out.print("<table>");
                                out.print(" <tbody>");
                                out.print("<tr align='center'>");
                                out.print(" <td rowspan='1' style='background-color: #3253bf; color: white; align='center' width='110'><strong>CODIGO</strong></td>");
                                out.print(" <td rowspan='1' style='background-color: #3253bf; color: white; align='center' width='110'><strong>PRODUCTO</strong></td>");
                                out.print(" <td rowspan='1' style='background-color: #3253bf; color: white; align='center' width='110'><strong>PRECIO </strong></td>");

                                while (rs.next()) {
                                    out.print("<tr onclick=enviar('" + f + "','" + rs.getString("detalle")  + "','" + rs.getString("precio")  + "')>");
                                    out.print("<td>" + rs.getString("cod") + "</td>");
                                    out.print(" <td>" + rs.getString("detalle") + "</td>");
                                    out.print(" <td >" + rs.getString("precio") + "</td>");

                                    out.print(" </tr>");
                                }
                                out.print("</tbody>");
                                out.print("</table>");
                            %>
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
                    <a href="index.html"><img src="../images/iconsn.fw.png" alt=""/></a>
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