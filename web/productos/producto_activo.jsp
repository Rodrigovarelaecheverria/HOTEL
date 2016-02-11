<%@page import="clases.conexion"%>
<%
    String id = request.getParameter("idp");
    conexion con = new conexion();
    con.consulta("UPDATE productos SET estado='true' WHERE cod='" + id + "';");
    response.sendRedirect("./productos.jsp");
%>