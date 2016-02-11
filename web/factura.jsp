<%@page import="clases.MailSender"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();
    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String nom = "", apel = "", nivel = "", foto = "";
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
        <script type="text/javascript">
            function print(muestra)
            {
                var ficha = document.getElementById(muestra);
                var ventimp = window.open(' ', 'popimpr');
                ventimp.document.write(ficha.innerHTML);
                ventimp.document.close();
                ventimp.print();
                ventimp.close();
            }
        </script>
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
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a href="index.jsp" >INICIO</a></li>
                                <li><a href="galeria.jsp" >GALERÍA</a></li>
                                <li><a href="servicios.jsp" >SERVICIOS</a></li>
                                <li><a href="ubicacion.jsp" >ENCUENTRANOS</a></li>
                                <li><a href="#">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="acercade.jsp">QUIENES SOMOS</a></li>
                                        <li><a class="active" href="mision.jsp">MISIÓN Y VISIÓN</a></li>
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
                    <h2 class="tittle-one">Bienvenidos a Hotel Sierra Norte</h2>
                </div>
                <div align="left" id="reservar">
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

                </div>

                <div id="separar"></div>

                <div id="centro">
                    <%
                        String id = request.getParameter("id");
                        String nombres = "", apellidos = "", cedula = "", telefono = "", direccion = "", total = "", correo = "";
                        ResultSet rs1 = con.consulta("select r.idreservai,p.dni,p.nombres,p.apellidos,p.correo, p.telefono,p.direccion,r.fentrada,r.fsale,r.estado,r.foto,r.total from reservasi r, personas p  WHERE idreservai='" + id + "' and  p.dni=r.dni");
                        while (rs1.next()) {
                            nombres = rs1.getString("nombres");
                            apellidos = rs1.getString("apellidos");
                            cedula = rs1.getString("dni");
                            telefono = rs1.getString("telefono");
                            direccion = rs1.getString("direccion");
                            total = rs1.getString("total");
                            correo = rs1.getString("correo");
                        }
                        double tot = Double.parseDouble(total);
                        double sub = tot / 1.12;
                        double iva = tot - sub;
                        DecimalFormat decimales = new DecimalFormat("0.00");

                    %>

                    <div id="proforma">

                        <div id="profor">
                            <table width="100%">
                                <tr>
                                    <td align="center">
                                        <img src="images/sn_tiny.png" width="150" alt=""/>
                                    </td>
                                    <td align="center">
                                        <br><h1>HOTEL SIERRA NORTE</h1><br>
                                        AV. MARIANO ACOSTA Y MANUELA CAÑIZARES<br>
                                        (06)2630706
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <h3>FACTURA</h3>
                                    </td>
                                    <td>

                                    </td>
                                </tr>
                            </table>  
                        </div>
                        <br>
                        <div id="profor">
                            <table width="100%">

                                <tr>
                                    <td colspan="2">
                                        <div id="fact1">CLIENTE: <% out.print(nombres + " " + apellidos);%></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="fact1">CEDULA: <% out.print(cedula);%></div>
                                    </td>
                                    <td>
                                        <div id="fact1">TELEFONO: <% out.print(telefono);%></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div id="fact1">DIRECCIÓN: <% out.print(direccion);%></div>
                                    </td>
                                </tr>
                            </table>    
                        </div>
                        <br>
                        <div id="profor">
                            <table width="100%" border="1">
                                <tr align="center">
                                    <td><strong>Cantidad</strong></td>
                                    <td><strong>Descripción</strong></td>
                                    <td><strong>Valor</strong></td>
                                </tr>
                                <tr>
                                    <td align="center">1</td>
                                    <td align="center">Servicios Hoteleros</td>
                                    <td align="center"><% out.print(decimales.format(sub));%></td>
                                </tr>
                                <tr >
                                    <td><p style="color: white;">A</p></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><p style="color: white;">A</p></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>

                                    <td rowspan="3" colspan="2" align="right">
                                        SubValor:<br>
                                        IVA 12%: <br>
                                        <strong>Total:</strong>
                                    </td>
                                    <td align="center"> <% out.print(decimales.format(sub));%></td>
                                </tr>
                                <tr>
                                    <td align="center"> <% out.print(decimales.format(iva));%></td>
                                </tr>
                                <tr>
                                    <td align="center"> <strong><% out.print(tot);%></strong></td>
                                </tr>
                            </table>    
                        </div>
                    </div>

                    <div style="float: right;">
                        <br><br>
                        <form  name="factura_e" action="factura.jsp?id=<%out.print(id);%>" method="GET">
                          
                            <input type="button" value="IMPRIMIR" onclick="javascript:window.print('centro')" />
                        </form>

                    </div>
                </div>
                <%
                    if (request.getParameter("envio") != null) {
                        MailSender ms = new MailSender();
                        ms.mensaje("HOTEL SIERRA NORTE TE DA LA BIENVENIDA\n"
                                + "Para revisar su factura por favor haga click en el siguiente enlace: \n"
                                + "http://localhost:8080/hotel/factura.jsp?id=" + id + "");
                        ms.para(correo);
                        ms.SendMail();
                    }
                %>


                <div id="separar"></div>                

                <div align="center" id="configurar">

                    <%
                        if (user == null) {
                    %>
                    <br>

                    <h4 align="center">Inicia sesión en tu cuenta</h4>
                    <br>

                    <form  id="logina" name="logina" action="index.jsp" method="POST">
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

                            rs = con.consulta("select count(*) from personas where   correo='" + usuario + "'  and clave=md5('" + clave + "')");
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

                    } else {

                    %>

                    <h3 class="tittle-one">CONFIGURACIÓN</h3>
                    <br>
                    <p class="centered"><img src=".<% out.print(foto); %>" class="img-circle" width="60"></p>
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
                            <a href="./administracion/panel.jsp" 
                               data-toggle="tooltip" data-placement="top" title="ADMINISTRACION">ADMINISTRACION</a>
                        </div>
                    <div id="menu_conf">
                        <a href="clave.jsp">CONTRASEÑA</a>
                    </div>

                    <%
                        if (nivel.equals("A1")) {
                    %>
                    <div id="menu_conf">
                        <a href="reservas_admin.jsp">CONFIRMAR</a>
                    </div>
                    <div id="menu_conf">
                        <a href="reservas_admin.jsp">FACTURAR</a>
                    </div>
                    <div id="menu_conf">
                        <a href="totales.jsp">RESUMEN T</a>
                    </div>
                    <div id="menu_conf">
                        <a href="reportes.jsp">REPORTES</a>
                    </div>
                    <div id="menu_conf">
                        <a href="noticias_admin.jsp">CREAR NOTI</a>
                    </div>
                    <div id="menu_conf">
                        <a href="noticias_listar.jsp">ADMIN NOTI</a>
                    </div>
                    <%
                        }
                    %>


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