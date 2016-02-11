<%@page import="clases.conexion"%>
<%
    String id = request.getParameter("id");
    conexion con = new conexion();
    con.consulta("UPDATE reservasi SET chest='true' WHERE idreservai='" + id + "';");
    con.consulta("update habitaciones set disponible='false' from reservas where habitaciones.cod_habitacion=reservas.tipo_habitacion and reservas.idreservai=" + id + " ");
    response.sendRedirect("../reservas_admin.jsp");
%>