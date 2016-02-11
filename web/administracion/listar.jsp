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
        <link rel="icon" href="../images/snl.fw.png" />
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
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
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
                <div style="float: right; width: 1140px;">
                    <a href="../ayudas/ayuda_listar.jsp"><img src="../img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="../img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                <div class="about-top heading">
                    <h2 class="tittle-one">ADMINISTRADOR</h2>
                </div>
                <div >


                    <section id="main-content">
                        <section class="wrapper">
                            <center><h3><i class="fa fa-list-alt"></i>Lista de registros</h3></center>
                            <div class="row mt">

                                <div class="col-lg-12">
                                    <div class="form-panel">
                                        <form  id="mregistrop" name="listar" action="listar.jsp" method="POST">
                                            <div class="form-group">
                                                <select autofocus required class="form-control" name="tdocumento" id="tdocumento">
                                                    <option value="">Seleccione el tipo de busqueda que requiere</option>
                                                    <option value="0">DNI</option>
                                                    <option value="1">Apellidos</option>
                                                    <option value="2">Tipo de perfil</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="busqueda" name="busqueda" placeholder="Ingrese lo que desea buscar">
                                            </div>
                                            <center><h5><i class="fa fa-user"></i>Selecione esta opcion si ha seleccionado tipo de perfil (opcional)</h5></center>
                                            <div class="form-group">
                                                <select class="form-control" name="perfil" id="perfil">
                                                    <option value="">Seleccione el perfil requerido</option>
                                                    <%
                                                        rs = con.consulta("select * from perfiles where estado='true'");
                                                        while (rs.next()) {
                                                            out.print("<option value='" + rs.getString("idperfil") + "'>" + rs.getString("nomperfil") + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>


                                            <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">Buscar Registro</button>
                                        </form>
                                        <br>
                                        <div class="form-group">

                                            <%
                                                String consulta = "select * from personas limit 100";
                                                if (request.getParameter("buscar") != null) {
                                                    String valor = request.getParameter("tdocumento");
                                                    String buscar = request.getParameter("busqueda");
                                                    String perfil = request.getParameter("perfil");
                                                    if (valor.equals("0")) {
                                                        consulta = "select * from personas where dni like'%" + buscar + "%'";
                                                    } else if (valor.equals("1")) {
                                                        consulta = "select * from personas where apellidos like'%" + buscar + "%'";
                                                    } else if (valor.equals("2")) {
                                                        consulta = "select * from personas where tpersona like'%" + perfil + "%'";
                                                    }

                                                }
                                                rs = con.consulta(consulta);
                                                out.print("<table class='table table-striped table-advance table-hover'>");
                                                out.print("   <center> <h4><i class='fa fa-list'></i> Listado de registros </h4></center>");
                                                out.print("  <hr>");
                                                out.print(" <thead>");
                                                out.print("  <tr>");
                                                out.print("    <th><i class='fa fa-barcode'></i> DNI</th>");
                                                out.print("    <th class='hidden-phone'> <i class='fa fa-list-alt'></i>Nombres</th>");
                                                out.print("   <th><i class='fa fa-list'></i> Apellidos</th>");
                                                out.print(" <th><i class='fa fa-check-square-o'></i> Estado</th>");
                                                out.print("    <th><i class='fa fa-cog'></i>Acciones</th>");
                                                out.print("</tr>");
                                                out.print(" </thead>");
                                                out.print("  <tbody>");
                                                while (rs.next()) {
                                                    out.print("   <tr>");
                                                    out.print("  <td>" + rs.getString("dni") + "</td>");
                                                    out.print("    <td class='hidden-phone'>" + rs.getString("nombres") + "</td>");
                                                    out.print("  <td>" + rs.getString("apellidos") + "</td>");
                                                    if (rs.getString("estpersona").equals("t")) {
                                                        out.print("   <td><span class='label label-info label-mini'>Activo</span></td>");

                                                    } else {
                                                        out.print("   <td><span class='label label-info label-mini'>Desactivado</span></td>");

                                                    }
                                                    out.print("    <td>");
                                                    out.print("  <a href = '../administracion/mregistro.jsp?id=" + rs.getString("dni") + "' <button class='btn btn-primary btn-xs'><i class='fa fa-pencil'></i></button></a>");
                                                    out.print("  <a href = '../procesos/aregistrop.jsp?id=" + rs.getString("dni") + "' <button class='btn btn-success btn-xs'><i class='fa fa-play'></i></button></a>");
                                                    out.print("   <a href = '../procesos/eregistrop.jsp?id=" + rs.getString("dni") + "' <button class='btn btn-warning btn-xs'><i class='fa fa-stop'></i></button></a>");
                                                    out.print("   <a href = '../procesos/elregistrop.jsp?id=" + rs.getString("dni") + "' <button class='btn btn-danger btn-xs'><i class='fa fa-eraser'></i></button></a>");
                                                    out.print("   <a href = '../administracion/ccontrasena.jsp?id=" + rs.getString("dni") + "' <button class='btn btn-danger btn-xs'><i class='fa fa-key'></i></button></a>");
                                                    out.print("   </td>");
                                                    out.print(" </tr>");
                                                }
                                                out.print("  </tbody>");
                                                out.print(" </table>");

                                            %>

                                        </div>
                                    </div>      	
                                </div>
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
                    <h3>HABITACIONES</h3>
                    <ul>
                        <li>HABITACIONES TRIPLES</li>
                        <li>HABITACIONES PARA 4 PERSONAS</li>
                        <li>HABITACIONES DOBLES</li>						
                        <li>HABITACIONES SIMPLES</li>
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
