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
     <script type="text/javascript" src="js/validar.js"></script>   
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
        <script type="text/javascript" src="js/move-top.js"></script>
       <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
         <script src="jquery.ui.datepicker-es.js"></script>
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>  
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script> 
  <script type="text/javascript">
  $(function (){
 
                $("#from").datepicker({ 
                     minDate: +0,
                     dateFormat: "dd mm yy",
                    onClose: function (selectedDate) {
                        $("#to").datepicker("option", "minDate",selectedDate);

                    }
                });

                $("#to").datepicker({
                    
                    maxDate:+30,
                    dateFormat: "dd mm yy",
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
        <script type="text/javascript">

function ponerfecha()

{
    
     var hoy = new Date();
    var dia = hoy.getDate();
    var mes = hoy.getMonth() + 1;
    var ano = hoy.getFullYear();
    var unir = dia + '-' + mes + '-' + ano;
    dia++;
    var unir1 = dia + '-' + mes + '-' +ano;
   
    
document.forms['form_reservas']['from'].value=unir;
document.forms['form_reservas']['to'].value=unir1;


	}
   


            </script>
            <%
                String from1=request.getParameter("from");
                String from2=request.getParameter("to");
                %>
     
 <link rel="icon" href="./images/snl.fw.png" />
        <!-- start-smoth-scrolling -->
    </head>
    <body onload="ponerfecha()">    
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
                                <li><a href="index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">LUGAR</a></li>

                                <li><a href="informativas/contactos.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="CONTACTOS">CONTACTO</a></li>

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
                <div align="left" id="reservar_modulo">
                    <div id="t_res_mod"><h2 align="center">RESERVACIONES</h2></div>
                    <br>
                    <h2 class="tittle-one">HOTEL SIERRA NORTE</h2>

                    <p align="center">El mejor precio,</p>
                    <p align="center">en el mejor lugar</p>


                    <br>
                    <br>
                    <form method="POST" action="reservas.jsp" name="form_reservas">
                        <div style='float: left;'>
                            Entrada:<br>
                            mm/dd/aaaa
                            <input type="text" required name="from" id="from" value="<%out.print(from1);%>"/>
                           
                           
                            <br>
                            <br>
                            Salida:<br>
                            mm/dd/aaaa
                             <input type="text" required  name="to" id="to" value="<%out.print(from2);%>"/>
                             
                        </div> 
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <h5>*Son considerados niños las personas menores a 6 años</h5> 

                        <div id="habitacion">
                            <table width="100%">
                                <tr>
                                <p align="center">Habitacion 1</p>
                                </tr>
                                <br>
                                <tr>
                                    <td>
                                        <p align="center">Adultos</p>
                                    </td>
                                    <td>
                                        <select name="adultos1">                                     
                                            <option value="0"><p align="center">0</p></option>
                                            <option value="1"><p align="center">1</p></option>
                                            <option value="2"><p align="center">2</p></option>
                                            <option value="3"><p align="center">3</p></option>
                                            <option value="4"><p align="center">4</p></option>
                                        </select>
                                    </td>
                                    <td>
                                        <p align="center">Niños</p>
                                    </td>
                                    <td>
                                        <select name="ninos1">                                     
                                            <option value="0"><p align="center">0</p></option>
                                            <option value="1"><p align="center">1</p></option>
                                            <option value="2"><p align="center">2</p></option>
                                            <option value="3"><p align="center">3</p></option>
                                            <option value="4"><p align="center">4</p></option>
                                        </select> 
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="habitacion">
                            <table width="100%">
                                <tr>
                                <p align="center">Habitacion 2</p>
                                </tr>
                                <br>
                                <tr>
                                    <td>
                                        <p align="center">Adultos</p>
                                    </td>
                                    <td>
                                        <select name="adultos2">
                                            <option value="0"><p align="center">0</p></option>
                                            <option value="1"><p align="center">1</p></option>
                                            <option value="2"><p align="center">2</p></option>
                                            <option value="3"><p align="center">3</p></option>
                                            <option value="4"><p align="center">4</p></option>
                                        </select>
                                    </td>
                                    <td>
                                        <p align="center">Niños</p>
                                    </td>
                                    <td>
                                        <select name="ninos2">                                     
                                            <option value="0"><p align="center">0</p></option>
                                            <option value="1"><p align="center">1</p></option>
                                            <option value="2"><p align="center">2</p></option>
                                            <option value="3"><p align="center">3</p></option>
                                            <option value="4"><p align="center">4</p></option>
                                        </select> 
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="habitacion">
                            <table width="100%">
                                <tr>
                                <p align="center">Habitacion 3</p>
                                </tr>
                                <br>
                                <tr>
                                    <td>
                                        <p align="center">Adultos</p>
                                    </td>
                                    <td>
                                        <select name="adultos3">                                     
                                            <option value="0"><p align="center">0</p></option>
                                            <option value="1"><p align="center">1</p></option>
                                            <option value="2"><p align="center">2</p></option>
                                            <option value="3"><p align="center">3</p></option>
                                            <option value="4"><p align="center">4</p></option>
                                        </select>
                                    </td>
                                    <td>
                                        <p align="center">Niños</p>
                                    </td>
                                    <td>
                                        <select name="ninos3">                                     
                                            <option value="0"><p align="center">0</p></option>
                                            <option value="1"><p align="center">1</p></option>
                                            <option value="2"><p align="center">2</p></option>
                                            <option value="3"><p align="center">3</p></option>
                                            <option value="4"><p align="center">4</p></option>
                                        </select> 
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br>
                        <button id="menu_conf" name="buscar_h">EXPLORAR</button>
                        <br>
                    </form>
                    <br>
                    <br>
                </div>

                <div id="separar"></div>

                <div id="centro">
                    <h2 class="tittle-one">Reservar en Hotel Sierra Norte</h2>


                    <%                       
                        if (request.getParameter("buscar_h") != null) {
                            String entrada = (request.getParameter("from"));
                            String salida = (request.getParameter("to"));

                            out.print("<form method='get' action='proforma.jsp' name='uno'>");
                             

                            int ad1 = 0, ni1 = 0, pers1 = 0;
                            int ad2 = 0, ni2 = 0, pers2 = 0;
                            int ad3 = 0, ni3 = 0, pers3 = 0;

                            String adultos1 = (request.getParameter("adultos1"));
                            if (adultos1.equals("1")) {
                                ad1 = 1;
                            }
                            if (adultos1.equals("2")) {
                                ad1 = 2;
                            }
                            if (adultos1.equals("3")) {
                                ad1 = 3;
                            }
                            if (adultos1.equals("4")) {
                                ad1 = 4;
                            }
                            String ninos1 = (request.getParameter("ninos1"));
                            if (ninos1.equals("1")) {
                                ni1 = 0;
                            }
                            if (ninos1.equals("2")) {
                                ni1 = 1;
                            }
                            if (ninos1.equals("3")) {
                                ni1 = 1;
                            }
                            if (ninos1.equals("4")) {
                                ni1 = 2;
                            }
                            pers1 = ad1 + ni1;

                            String adultos2 = (request.getParameter("adultos2"));
                            if (adultos2.equals("1")) {
                                ad2 = 1;
                            }
                            if (adultos2.equals("2")) {
                                ad2 = 2;
                            }
                            if (adultos2.equals("3")) {
                                ad2 = 3;
                            }
                            if (adultos2.equals("4")) {
                                ad2 = 4;
                            }
                            String ninos2 = (request.getParameter("ninos2"));
                            if (ninos2.equals("1")) {
                                ni2 = 0;
                            }
                            if (ninos2.equals("2")) {
                                ni2 = 1;
                            }
                            if (ninos2.equals("3")) {
                                ni2 = 1;
                            }
                            if (ninos2.equals("4")) {
                                ni2 = 2;
                            }
                            pers2 = ad2 + ni2;

                            String adultos3 = (request.getParameter("adultos3"));
                            if (adultos3.equals("1")) {
                                ad3 = 1;
                            }
                            if (adultos3.equals("2")) {
                                ad3 = 2;
                            }
                            if (adultos3.equals("3")) {
                                ad3 = 3;
                            }
                            if (adultos3.equals("4")) {
                                ad3 = 4;
                            }
                            String ninos3 = (request.getParameter("ninos3"));
                            if (ninos3.equals("1")) {
                                ni3 = 0;
                            }
                            if (ninos3.equals("2")) {
                                ni3 = 1;
                            }
                            if (ninos3.equals("3")) {
                                ni3 = 1;
                            }
                            if (ninos3.equals("4")) {
                                ni3 = 2;
                            }
                            pers3 = ad3 + ni3;
                            if (pers1 > 0) {

                                out.print("<h2 class='tittle-one'>========== HABITACIÓN 1 ==========</h2>");

                                String consulta = "";
                                consulta = "select cod_habitacion, tipo_habitaciones.tipo_hab, ubicacion, precio, foto, n_personas from habitaciones, tipo_habitaciones where habitaciones.tipo_hab=tipo_habitaciones.cod_hab and n_personas='" + pers1 + "' and disponible='t' order by cod_habitacion asc";

                                session.setAttribute("con1", consulta);
                                String personal1 = (String) session.getAttribute("con1");

                                ResultSet rs1 = con.consulta(consulta);
                                int contador = 0;
                                while (rs1.next()) {
                                    contador++;
                                }
                                rs1 = con.consulta(consulta);
                                if (contador > 0) {

                                    while (rs1.next()) {
                                        String fotoh = rs1.getString("foto");
                                        out.print("<br>");
                                        out.print("<div id='habitaciones_mostrar'>");
                                        out.print(" <table width='100%'> ");
                                        out.print("<td>");
                                        out.print("<table width='100%'> ");
                                        out.print("<tr>");
                                        out.print("<td width='50%' >");
                                        out.print("N° Habitación:");
                                        out.print("</td>");
                                        out.print("<td width='50%'>");
                                        out.print("<a>" + rs1.getString("cod_habitacion") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Tipo:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("tipo_hab") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Ubicación:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("ubicacion") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Máximo personas:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("n_personas") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Precio:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("precio") + "</a>");                                       
                                        out.print("</td>");
                                        out.print("</tr>");
                                        out.print("</table>");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<img src=." + fotoh + " width='350'>");
                                        out.print("<div id='radio_reser'>");
                                        out.print("<input type='radio' required name='group1' value='" + rs1.getString("cod_habitacion") + "' style='width:18px; height:18px'> RESERVAR<br>");
                                        out.print("</div>");

                                        out.print("</td>");
                                        out.print("</table>");
                                        out.print("</div>");
                                        
                                        

                                    }
                                }
                                out.print("<h2 class='tittle-one'>*</h2>");
                            }

                            if (pers2 > 0) {

                                out.print("<h2 class='tittle-one'>========== HABITACIÓN 2 ==========</h2>");

                                String consulta = "";
                                consulta = "select cod_habitacion, tipo_habitaciones.tipo_hab, ubicacion, precio, foto, n_personas from habitaciones, tipo_habitaciones where habitaciones.tipo_hab=tipo_habitaciones.cod_hab and n_personas='" + pers2 + "' and disponible='t' order by cod_habitacion asc";
                                ResultSet rs1 = con.consulta(consulta);
                                int contador = 0;
                                while (rs1.next()) {
                                    contador++;
                                }
                                rs1 = con.consulta(consulta);
                                if (contador > 0) {
                                    while (rs1.next()) {
                                        String fotoh = rs1.getString("foto");
                                        out.print("<br>");
                                        out.print("<div id='habitaciones_mostrar'>");
                                        out.print(" <table width='100%'> ");
                                        out.print("<td>");
                                        out.print("<table width='100%'> ");
                                        out.print("<tr>");
                                        out.print("<td width='50%' >");
                                        out.print("N° Habitación:");
                                        out.print("</td>");
                                        out.print("<td width='50%'>");
                                        out.print("<a>" + rs1.getString("cod_habitacion") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Tipo:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("tipo_hab") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Ubicación:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("ubicacion") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Máximo personas:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("n_personas") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Precio:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("precio") + "</a>");
                                        out.print("</td>");
                                        out.print("</tr>");
                                        out.print("</table>");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<img src=." + fotoh + " width='350'>");
                                        out.print("<div id='radio_reser'>");
                                        out.print("<input type='radio' required name='group2' value='" + rs1.getString("cod_habitacion") + "' style='width:18px; height:18px'> RESERVAR<br>");
                                        out.print("</div>");

                                        out.print("</td>");
                                        out.print("</table>");
                                        out.print("</div>");

                                    }
                                }
                                out.print("<h2 class='tittle-one'>*</h2>");
                            }

                            if (pers3 > 0) {

                                out.print("<h2 class='tittle-one'>========== HABITACIÓN 3 ==========</h2>");

                                String consulta = "";
                                consulta = "select cod_habitacion, tipo_habitaciones.tipo_hab, ubicacion, precio, foto, n_personas from habitaciones, tipo_habitaciones where habitaciones.tipo_hab=tipo_habitaciones.cod_hab and n_personas='" + pers3 + "' and disponible='t' order by cod_habitacion asc";
                                ResultSet rs1 = con.consulta(consulta);
                                int contador = 0;
                                while (rs1.next()) {
                                    contador++;
                                }
                                rs1 = con.consulta(consulta);
                                if (contador > 0) {
                                    while (rs1.next()) {
                                        String fotoh = rs1.getString("foto");
                                        out.print("<br>");
                                        out.print("<div id='habitaciones_mostrar'>");
                                        out.print(" <table width='100%'> ");
                                        out.print("<td>");
                                        out.print("<table width='100%'> ");
                                        out.print("<tr>");
                                        out.print("<td width='50%' >");
                                        out.print("N° Habitación:");
                                        out.print("</td>");
                                        out.print("<td width='50%'>");
                                        out.print("<a>" + rs1.getString("cod_habitacion") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Tipo:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("tipo_hab") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Ubicación:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("ubicacion") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Máximo personas:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("n_personas") + "</a>");
                                        out.print("</td>  ");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print("Precio:");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<a>" + rs1.getString("precio") + "</a>");
                                        out.print("</td>");
                                        out.print("</tr>");
                                        out.print("</table>");
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print("<img src=." + fotoh + " width='350'>");
                                        out.print("<div id='radio_reser'>");
                                        out.print("<input type='radio' required name='group3' value='" + rs1.getString("cod_habitacion") + "' style='width:18px; height:18px'> RESERVAR<br>");
                                        out.print("</div>");
                                        out.print("</td>");
                                        out.print("</table>");
                                        out.print("</div>");
                                    }
                                }
                                out.print("<h2 class='tittle-one'>*</h2>");
                            }

                            out.print("<div style='width: 600px; margin: auto;'>");

                            out.print("<div>");
                            out.print("<div style='float: left;'>");
                             
                            out.print("<input type='text' required name='f_entrar'  value='" + entrada + "'/>");
                            out.print("<br>");
                            out.print("<br>");                           
                            out.print("<input type='text' required name='f_salir'  value='" + salida + "'/>");
                            out.print("</div> ");
                            out.print("<div style='float: left; padding: 35px;'>");
                            out.print("<button id='menu_conf' name='buscar_h'>PROFORMAR</button>");
                            out.print("</div>   ");
                            out.print("</div>");
                            out.print("</form>");
                            out.print("</div>");
                        }                
%>

               
                </div>

                <div id="separar"></div>                

                <div align="center" id="configurar">

                    <%                        if (user == null) {
                    %>
                    <br>

                     
 <div id="loggeo">
                        <h4 align="center"><strong>INGRESA AQUÍ</strong></h4>
                        <br>
                        <br>
                        <form  id="logina" name="logina" action="index.jsp" method="POST">
                            <div class="form-group">
                                <input type="text" style="opacity: 0.6;" required class="form-control" id="usuario" name="usuario" placeholder="Ingrese su Correo" tittle="dasadsasd">
                            </div>
                            <div class="form-group">
                                <input type="password" style="opacity: 0.6;" required class="form-control" id="clave" name="clave" placeholder="Ingrese su password">
                            </div>
                            <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">LOGGIN</button>   
                        </form> 
                        <br>
                        No tienes cuenta?: <a href="ncliente.jsp"><strong>Registrate</strong></a>
                    </div>
                    <br>
                    
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
                                out.println("<script language='javascript'>window.location='index.jsp'</script>;");

                            } else {

                                out.println("<script>alert('USUARIO O PASSWORD INCORRECTOS')</script>");
                            }
                        }
                        //FIN DE CODIGO DE ACCESO

                    } else {%>

                    <h3 class="tittle-one">CONFIGURACIÓN</h3>
                    <br>
                    <p class="centered"><img src=".<% out.print(foto);%>" class="img-circle" width="60"></p>
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
                        <li><a href="informativas/contactos.jsp" >CONTACTOS</a></li>
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