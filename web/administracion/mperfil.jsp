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
    String id = request.getParameter("id");
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
                        <h1><a href="index.html"  data-toggle="tooltip" data-placement="top" title="Hooray!"><img src="../images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a href="index.jsp"   >INICIO</a></li>
                                <li><a href="galeria.jsp" >GALERÍA</a></li>
                                <li><a href="servicios.jsp" >SERVICIOS</a></li>
                                <li><a href="ubicacion.jsp" >LUGAR</a></li>
                                <li><a href="contactos.jsp" >CONTACTO</a></li>
                                <li><a href="#">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="acercade.jsp">QUIENES SOMOS</a></li>
                                        <li><a class="active" href="mision.jsp">MISIÓN Y VISIÓN</a></li>
                                    </ul>
                                </li>
                                <li><a href="ayuda_index.jsp" >AYUDA</a></li>
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
            



        <section id="main-content">
            <section class="wrapper">
                <br>
                <center><h4><i class="fa fa-refresh"></i>Modificando Registro</h4></center>
                <div class="row mt">

                    <div class="col-lg-12">
                        <div class="form-panel">
                            <form  id="mperfil" name="mperfil" action="" method="POST">
                                <%rs = con.consulta("select * from perfiles where idperfil='" + id + "'");
                                    while (rs.next()) {
                                %>
                                <div class="form-group">
                                    <input type="text" disabled="true" value="<%out.print(rs.getString("idperfil"));%>" class="form-control" id="codigoper" name="codigoper" placeholder="Ingrese el codigo unico de Perfil">
                                </div>
                                <div class="form-group">
                                    <input type="text" value="<%out.print(rs.getString("nomperfil"));%>" required class="form-control" id="nombreper" name="nombreper" placeholder="Ingrese el nombre de perfil">
                                </div>
                                <br>
                                <center> <h4><i class='fa fa-list'></i> Seleccione los privilegios a asignar al perfil  </h4></center>
                                <br><%}%>
                                <div class="form-group">
                                    <%

                                        String consulta = "select count(*) from menup where estado='true'";
                                        rs = con.consulta(consulta);
                                        int contador = 0, i = 0;
                                        while (rs.next()) {
                                            contador = rs.getInt("count");
                                        }
                                        String codigos[] = new String[contador];
                                        consulta = "select * from menup where estado='true'";
                                        rs = con.consulta(consulta);
                                        while (rs.next()) {
                                            codigos[i] = rs.getString("idmenu");
                                            i++;
                                        }
                                        rs = con.consulta("select * from menup where estado='true' and relacion='0'");
                                        out.print("<table class='table table-striped table-advance table-hover'>");
                                        out.print("  <hr>");
                                        out.print(" <thead>");
                                        out.print("  <tr>");
                                        out.print("    <th><i class='fa fa-barcode'></i> Codigo</th>");
                                        out.print("    <th><i class='fa fa-list-alt'></i> Privileo de enlace</th>");
                                        out.print("    <th><i class='fa fa-cog'></i>Acciones</th>");
                                        out.print("</tr>");
                                        out.print(" </thead>");
                                        out.print("  <tbody>");
                                        while (rs.next()) {
                                            out.print("   <tr>");
                                            out.print("  <td>*" + rs.getString("idmenu") + "</td>");
                                            out.print("    <td >" + rs.getString("nombre") + "</td>");
                                            ResultSet rs2 = con.consulta("select count(*) from privilegios  where idperfil='" + id + "' and idmenu='" + rs.getString("idmenu") + "'");
                                            while (rs2.next()) {
                                                if (rs2.getString("count").equals("1")) {
                                                    rs2 = con.consulta("select * from privilegios p where idperfil='" + id + "' and idmenu='" + rs.getString("idmenu") + "'");
                                                    while (rs2.next()) {
                                                        if (rs2.getString("estado").equals("t")) {
                                                            out.print("    <td ><input type='checkbox' checked='checked'  name='ch_" + rs.getString("idmenu") + "' id='ch_" + rs.getString("idmenu") + "'></td>");
                                                        } else if (rs2.getString("estado").equals("f")) {
                                                            out.print("    <td ><input type='checkbox' name='ch_" + rs.getString("idmenu") + "' id='ch_" + rs.getString("idmenu") + "'></td>");
                                                        }
                                                    }
                                                } else {
                                                    out.print("    <td ><input type='checkbox' name='ch_" + rs.getString("idmenu") + "' id='ch_" + rs.getString("idmenu") + "'></td>");
                                                }
                                            }

                                            out.print(" </tr>");
                                            ResultSet rs1 = con.consulta("select * from menup where estado='true' and relacion='" + rs.getString("idmenu") + "'");
                                            while (rs1.next()) {
                                                out.print("   <tr>");
                                                out.print("  <td>-" + rs1.getString("idmenu") + "</td>");
                                                out.print("    <td >" + rs1.getString("nombre") + "</td>");
                                                rs2 = con.consulta("select count(*) from privilegios  where idperfil='" + id + "' and idmenu='" + rs1.getString("idmenu") + "'");
                                                while (rs2.next()) {
                                                    if (rs2.getString("count").equals("1")) {
                                                        rs2 = con.consulta("select * from privilegios p where idperfil='" + id + "' and idmenu='" + rs1.getString("idmenu") + "'");
                                                        while (rs2.next()) {
                                                            if (rs2.getString("estado").equals("t")) {
                                                                out.print("    <td ><input type='checkbox' checked='checked'  name='ch_" + rs1.getString("idmenu") + "' id='ch_" + rs1.getString("idmenu") + "'></td>");
                                                            } else if (rs2.getString("estado").equals("f")) {
                                                                out.print("    <td ><input type='checkbox' name='ch_" + rs1.getString("idmenu") + "' id='ch_" + rs1.getString("idmenu") + "'></td>");
                                                            }
                                                        }
                                                    } else {
                                                        out.print("    <td ><input type='checkbox' name='ch_" + rs1.getString("idmenu") + "' id='ch_" + rs1.getString("idmenu") + "'></td>");
                                                    }
                                                }
                                                out.print(" </tr>");
                                            }
                                        }
                                        out.print("  </tbody>");
                                        out.print(" </table>");
                                    %>

                                </div>
                                <button type="submit" class="btn btn-default btn-green" id="enviar" name="enviar">Guardar Registro</button>
                            </form>
                            <%
                                if (request.getParameter("enviar") != null) {
                                    con.consulta("delete from privilegios where idperfil='" + id + "'");
                                    String nombre = request.getParameter("nombreper");
                                    String codigo = request.getParameter("codigoper");
                                    contador = 0;
                                    rs = con.consulta("select count(*) from perfiles where idperfil='" + codigo + "'");
                                    while (rs.next()) {
                                        contador = rs.getInt("count");
                                    }
                                    if (contador == 0) {
                                        con.consulta("update perfiles set nomperfil='" + nombre + "' where idperfil='" + id + "';");
                                        for (int a = 0; a < codigos.length; a++) {
                                            String per = request.getParameter("ch_" + codigos[a] + "");
                                            if (per == null) {
                                                per = "false";
                                            } else {
                                                per = "true";
                                            }
                                            con.consulta("INSERT INTO privilegios(idperfil,idmenu,estado)VALUES ('" + id + "','" + codigos[a] + "','" + per + "');");

                                        }
                                        out.print("<script>alert('Registro Actualizado');</script>");
                                        out.println("<script language='javascript'>window.location='../administracion/perfiles.jsp'</script>;");

                                    } else {
                                        out.print("<script>alert('Codigo ya registrado');</script>");
                                    }

                                }


                            %>
                            <br> 
                        </div>
                    </div> 
                </div>       
            </section>
        </section>
    </section>


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

