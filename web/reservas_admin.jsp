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
        <link rel="icon" href="./images/snl.fw.png" />
        <!-- start-smoth-scrolling -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="index.jsp"><img src="images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="../images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a href="index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">ENCUENTRANOS</a></li>

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
                    <h2 class="tittle-one"><strong>ADMINISTRACIÓN DE RESERVAS</strong></h2>
                </div>
                

                <div id="centro_admin" align="center">
                    <div id="tarjeta" style="display:inline-block;">
                        <form method="post" name="codigosf" id="codigosf " action="reservas_admin.jsp">
                            <table align="center">
                                <tr>
                                    <td align="center" colspan="3" style='background-color: #3253bf; color: white;'> 
                                    <h4><strong>BUSCAR POR PERSONA</strong></h4>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <select name="busqueda">
                                            <option value="0">Buscar Por Cedula</option>
                                            <option value="1">Buscar Por Nombre</option>
                                        </select>

                                    </td>
                                    <td>
                                        <input type='text' required id='txtbuscar' name='txtbuscar'/>
                                    </td>
                                    <td>
                                        <strong><input type="submit" name="btnbuscar" value="BUSCAR" style="width:140px;"/></strong>
                                    </td>
                                </tr>

                                <tr>
                            </table>
                        </form>
                        <form method="post" name="fechas" id="fechas" action="reservas_admin.jsp">
                            <table align="center">

                                <tr>
                                    <td align="center" colspan="3" style='background-color: #3253bf; color: white;'> 
                                    <h4><strong>BUSCAR POR FECHA</strong></h4>
                                    </td>
                                </tr>
                                    
                                <tr>
                                    <td style='background-color: #3253bf; color: white;'>
                                        <h4><strong>DESDE:</strong></h4>
                                    </td>
                                    <td>
                                        <input type='text' required id='from' name='finicio'/>
                                    </td>
                                    <td rowspan="2" align="center">
                                        <strong><input type="button" onclick=" location.href = 'reportes.jsp'" name="totales" value="REPORTES" style="width:250px;"/></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style='background-color: #3253bf; color: white;'>
                                        <h4><strong>HASTA:</strong></h4>
                                    </td>
                                    <td>
                                        <input type='text' required id='to' name='ffin'/>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <h3><strong><input type="submit" name="enviar" value="BUSCAR" style="width:200px;"></strong></h3>
                                    </td>
                                    <td align="center">
                                        <a href="ayudas/ayuda_index.jsp"><img src="img/btn_ayuda.png" height="40" width="110" alt=""></a>
                                        <a href="javascript:history.back()"><img src="img/btn_atras.png" height="40" width="110" alt=""></a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <br>
                    <br>
                    <div id="tarjeta" style="display:inline-block;">


                        <%                        
                            String consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total,r.chest from reservasi r, personas p  where  p.dni=r.dni order by r.idreservai desc";
                            if (request.getParameter("enviar") != null) {
                                String inicio = request.getParameter("finicio");
                                String fin = request.getParameter("ffin");
                                consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total,r.chest from reservasi r, personas p  where  p.dni=r.dni  and (r.fentrada>='" + inicio + "' and r.fsale<='" + fin + "') order by r.idreservai desc";
                            }
                            if (request.getParameter("btnbuscar") != null) {
                                String inicio = request.getParameter("busqueda");
                                String fin = request.getParameter("txtbuscar");
                                if (inicio.equals("0")) {
                                    consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total,r.chest from reservasi r, personas p  where  p.dni=r.dni  and r.dni like'%" + fin + "%' order by r.idreservai desc";
                                } else {
                                    consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total,r.chest from reservasi r, personas p  where  p.dni=r.dni  and  p.nombres like'%" + fin + "%' order by r.idreservai desc";
                                }

                            }
                            rs = con.consulta(consulta);
                            out.print("<table>");
                            out.print(" <tbody>");
                            out.print("<tr>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Codigo</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Dni</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Nombres</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Apellidos</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Fecha Ingreso</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Fecha Salida</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Voucher</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Estado</strong></td>");
                            out.print("<td rowspan='2' style='background-color: #3253bf; color: white;'><strong>Ocupado</strong></td>");
                            out.print("<td align='center' colspan='6' style='background-color: #3253bf; color: white;'><strong>Acciones</strong> </td>");
                            out.print("</tr>");
                             out.print("<tr>");
                            out.print("<td style='background-color: #3253bf; color: white;'><strong>Pagar</strong></td>");
                            out.print("<td style='background-color: #3253bf; color: white;'><strong>Check in</strong></td>");
                            out.print("<td style='background-color: #3253bf; color: white;'><strong>Check Out</strong></td>");
                            out.print("<td style='background-color: #3253bf; color: white;'><strong>Cancelar</strong></td>");
                            out.print("<td style='background-color: #3253bf; color: white;'><strong>Extras</strong></td>");
                            out.print("<td style='background-color: #3253bf; color: white;'><strong>Facturar</strong></td>");
                            out.print("</tr>");
                            while (rs.next()) {

                                out.print("<tr>");
                                out.print("<td>" + rs.getString("idreservai") + "</td>");
                                out.print(" <td>" + rs.getString("dni") + "</td>");
                                out.print(" <td>" + rs.getString("nombres") + "</td>");
                                out.print(" <td>" + rs.getString("apellidos") + "</td>");
                                out.print(" <td>" + rs.getString("fentrada") + "</td>");
                                out.print(" <td>" + rs.getString("fsale") + "</td>");
                                out.print(" <td><img src='." + rs.getString("foto") + "'  onmouseover='this.width=500;this.height=500;' onmouseout='this.width=100;this.height=100;' width='100' height='100' alt='' /></td>");

                                if (rs.getString("estado").endsWith("t")) {
                                    out.print(" <td>Pagado</td>");
                                } else {
                                    out.print(" <td>Pendiente</td>");
                                }
                                if (rs.getString("chest").endsWith("t")) {
                                    out.print(" <td>Ocupado</td>");
                                } else {
                                    out.print(" <td>Disponible</td>");
                                }
                                out.print(" <td align='center'><a href= ./voucher.jsp?id=" + rs.getString("idreservai") + "><img src=./img/activar.png width=30px height=30px></a></td>");
                                out.print(" <td align='center'><a href=./procesos/check_in.jsp?id=" + rs.getString("idreservai") + "><img src=./img/check_in.png width=30px height=30px></a></td>");
                                out.print(" <td align='center'><a href=./procesos/check_out.jsp?id=" + rs.getString("idreservai") + "><img src=./img/check_out.png width=30px height=30px></a></td>");
                                out.print(" <td align='center'><a href=./procesos/areserva.jsp?id=" + rs.getString("idreservai") + "><img src=./img/eliminar.png width=30px height=30px></a></td>");
                                out.print(" <td align='center'><a href=./extras.jsp?id=" + rs.getString("idreservai") + "><img src=./img/extra.png width=30px height=30px></a></td>");
                                if (rs.getString("chest").endsWith("f")) {
                                    out.print(" <td align='center'><a href=./factura.jsp?id=" + rs.getString("idreservai") + "><img src=./img/fac.png width=60px height=30px></a></td>");
                                } else {
                                    out.print(" <td>No Disponible</td>");
                                }
                                
                                out.print(" </tr>");
                            }
                            out.print("</tbody>");
                            out.print("</table>");
                        %>
                    </div>

                </div>

                <div id="separar"></div>                

                <!--<div align="center" id="configurar">

                <%   if (user == null) {
                %>
                <br>

                <h4 align="center">Inicia sesión en tu cuenta</h4>
                <br>

                <form  id="logina" name="logina" action="reservas_admin.jsp" method="GET">
                    <div class="form-group">
                        <input type="text" required class="form-control" id="usuario" name="usuario" placeholder="Ingrese su Correo">
                    </div>
                    <div class="form-group">
                        <input type="password" required class="form-control" id="clave" name="clave" placeholder="Ingrese su password">
                    </div>

                    <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">LOGGIN</button>
                </form> 
                <br>
                No tienes cuenta?: <a href="ncliente.jsp">Registrate</a>
                <%
                    //CODIGO DE ACCESO
                    if (request.getParameter("buscar") != null) {
                        int b = 0;
                        String us = null; //para tomar el usuario de la base de datos
                        String pa = null;
                        String usuario = request.getParameter("usuario");
                        String clave = request.getParameter("clave");
                        String tipo = "C1";

                        rs = con.consulta("select count(*) from personas where tpersona='" + tipo + "'  and  correo='" + usuario + "'  and clave=md5('" + clave + "')");
                        while (rs.next()) {
                            us = rs.getString("count");
                            if (us.equals("1")) {
                                b = 1;
                            } else {
                                b = 0;
                            }
                        }
                        if (b == 1) {
                            String ja = new String(usuario);
                            HttpSession op = request.getSession();
                            op.putValue("varUsuario", ja);
                            out.println("<script>alert('ACCESO CONCEDIDO')</script>");
                            out.println("<script>location.reload(true);</script>");

                        } else {

                            out.println("<script>alert('USUARIO O PASSWORD INCORRECTOS')</script>");

                        }
                    }
                    //FIN DE CODIGO DE ACCESO

                } else {%>

                <h3 class="tittle-one">CONFIGURACIÓN</h3>
                <br>
                <p class="centered"><img src=".<% out.print(foto); %>" class="img-circle" width="60" ></p>
                <br>
                <h5 class="centered"><% out.print(nom + " " + apel);%></h5>
                <br>

                <div id="menu_conf">
                    <a href="perfil.jsp">PERFIL</a>
                </div>
                <div id="menu_conf">
                    <a href="foto.jsp">FOTO</a>
                </div>
                   <div id="menu_conf">
                    <a href="./administracion/panel.jsp">ADMINISTRACION</a>
                </div>
                <div id="menu_conf">
                    <a href="clave.jsp">CONTRASEÑA</a>
                </div>
                <form  name="logina" action="index.jsp" method="GET">
                    <button id="menu_conf" name="cerrar">CERRAR SESIÓN</button>
                </form>
                <%
                        if (request.getParameter("cerrar") != null) {
                            session.invalidate();
                            out.println("<script>location.reload(true);</script>");
                        }
                    }
                %>


            </div>-->
            </div>
        </div>
        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÓN</h3>
                    <ul>
                        <li><a href="index.jsp" >INICIO</a></li>
                        <li><a href="informativas/galeria.jsp" >GALERÍA</a></li>
                        <li><a href="informativas/servicios.jsp" >SERVICIOS</a></li>
                        <li><a href="informativas/ubicacion.jsp" >UBICACIÓN</a></li>                      
                        <li><a href="informativas/acercade.jsp">QUIENES SOMOS</a></li>
                        <li><a href="informativas/mision.jsp">MISIÓN Y VISIÓN</a></li>
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
                    <a href="index.jsp"><img src="images/iconsn.fw.png" alt=""/></a>
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