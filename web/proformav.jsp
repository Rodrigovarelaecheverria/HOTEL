<%@page import="java.text.DecimalFormat"%>
<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();

    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String iden = "", nom = "", apel = "", foto = "", ids = "", fe = "", fs = "", tot1 = "";
    ids = request.getParameter("id");
    while (rs.next()) {
        iden = rs.getString("dni");
        nom = rs.getString("nombres");
        apel = rs.getString("apellidos");
        foto = rs.getString("foto");

    }
    rs = con.consulta("select *,(th.tipo_hab)as habi from reservasi r, personas p, habitaciones h,tipo_habitaciones th,reservas re where r.idreservai=re.idreservai and p.dni=r.dni and re.tipo_habitacion=h.cod_habitacion  and h.tipo_hab=th.cod_hab and r.idreservai='" + ids + "'");
    while (rs.next()) {
        fe = rs.getString("fentrada");
        fs = rs.getString("fsale");
        tot1 = rs.getString("total");
        

    }
    rs = con.consulta("select *,(th.tipo_hab)as habi from reservasi r, personas p, habitaciones h,tipo_habitaciones th,reservas re where r.idreservai=re.idreservai and p.dni=r.dni and re.tipo_habitacion=h.cod_habitacion  and h.tipo_hab=th.cod_hab and r.idreservai='" + ids + "'");
double total = Double.parseDouble(tot1);
        double sub = total / 1.12;
        double iva = total - sub;
        DecimalFormat decimales = new DecimalFormat("0.00");

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
                        <h1><a href="index.jsp"  data-toggle="tooltip" data-placement="top" title="Hotel Sierra Norte"><img src="images/sn_tiny.png" alt=""/></a></h1>
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
                    <h2 class="tittle-one">Bienvenidos a Hotel Sierra Norte </h2>
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

                    <!-- INICIO DE LA PROFORMA -->
                    <!-- INICIO DE LA PROFORMA -->
                    <div id="proforma">
                        <div id="profor">
                            <form name="proform" action="proforma.jsp" method="POST">

                                <table width="100%">
                                    <tr>
                                        <td align="center">
                                            <img src="images/sn_tiny.png" width="150" alt=""/>
                                        </td>
                                        <td >
                                            <br><h1>HOTEL SIERRA NORTE</h1><br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <br><h3>PROFORMA</h3><br>
                                        </td>
                                        <td>

                                        </td>
                                    </tr>
                                </table>

                                <div style=" width: 600px;" align="center">


                                    <div style=" width: 600px; float: left; ">

                                        <table border="1">

                                            <tr width='300'>
                                                Solicitante
                                            </tr>
                                            <tr>
                                                <td width='80'>DNI:</td>
                                                <td width='220'><input type="text" disabled value="<% out.print(iden);%>" class="form-control" id="dni" name="iden" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>

                                            </tr>
                                            <tr>
                                                <td width='80'>Nombre:</td>
                                                <td width='220'><input type="text" disabled value="<% out.print(nom);%>" class="form-control" id="dni" name="nombre" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>
                                                <td width='80'>Fecha entrada:</td>
                                                <td width='220'><input type="text" value="<% out.print(fe);%>" class="form-control" id="dni" name="f_entrada" placeholder="Apellido" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>

                                            </tr>
                                            <tr>

                                                <td width='80'>Apellido:</td>
                                                <td width='220'><input type="text" disabled value="<% out.print(apel);%>" class="form-control" id="dni" name="apellido" placeholder="Apellido" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>
                                                <td width='80'>Fecha salida:</td>
                                                <td width='220'><input type="text" value="<% out.print(fs);%>" class="form-control" id="dni" name="f_salida" placeholder="Apellido" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>

                                            </tr>
                                        </table>
                                        <br>


                                    </div>

                                    <div style=" width: 600px; float: left; ">
                                        <table>
                                            <tr align="center">
                                                <td width='129'>N° Habitación</td>
                                                <td width='129'>Tipo Habitación</td>
                                                <td width='129'>Precio</td>

                                            </tr>
                                            <%
                                                while (rs.next()) {
                                                    out.print("<tr>");
                                                    out.print(" <td><input type='text' value='" + rs.getString("cod_habitacion") + "' class='form-control' id='dni' name='h1'></td>");
                                                    out.print(" <td><input type='text' value='" + rs.getString("habi") + "' class='form-control' id='dni' name='nombre'></td>");
                                                    out.print(" <td><input type='text' value='" + rs.getString("precio") + "' class='form-control' id='dni' name='p1'></td>    ");
                                                    out.print("  </tr>");
                                                }
                                            %>
                                            <tr>
                                                <td></td>
                                                <td align="right">SubTotal:</td>
                                                <td><input type="text" value="<% out.print(decimales.format(sub));%>" class="form-control" id="dni" name=""></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td align="right">IVA 12%:</td>
                                                <td><input type="text" value="<% out.print(decimales.format(iva));%>" class="form-control" id="dni" name=""></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td align="right"><strong>TOTAL:</strong></td>
                                                <td><input type="text" value="<% out.print((tot1));%>" class="form-control" id="dni" name="tot"></td>
                                            </tr>

                                        </table>

                                    </div>
                                    <br>
                                </div>

                            </form>
                        </div>
                        <div style="float: right">
                            <br>
                            <br>
                            <input type="button" value="IMPRIMIR" onclick="javascript:window.print('proforma')" />
                        </div>


                        <!-- FIN DE LA PROFORMA -->
                        <!-- FIN DE LA PROFORMA -->
                    </div>
                </div>

                <div id="separar"></div>                

                <div align="center" id="configurar">

                    <%
                        if (user
                                == null) {
                    %>
                    <br>

                    <h4 align="center">Inicia sesión en tu cuenta</h4>
                    <br>

                    <form  id="logina" name="logina" action="proforma.jsp" method="GET">
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