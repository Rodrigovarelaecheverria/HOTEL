<%@page import="clases.conexion"%>
<%
    String idp = request.getParameter("idp");
    conexion con = new conexion();
    String det = request.getParameter("detalle");
    String pre = request.getParameter("precio");
    con.consulta("UPDATE productos SET det='"+det+"', pre='"+pre+"' WHERE cod='" + idp + "';");
    response.sendRedirect("./productos.jsp");
%>