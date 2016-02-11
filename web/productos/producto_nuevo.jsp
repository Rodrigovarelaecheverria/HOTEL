<%@page import="clases.conexion"%>

<%
    conexion con = new conexion();
    String cod = request.getParameter("codigo");
    String detalle = request.getParameter("detalle");
    String precio = request.getParameter("precio");
    con.consulta("INSERT INTO productos(cod, detalle, precio, estado) VALUES ('" + cod + "', '" + detalle + "', '" + precio + "', 'true');");
    out.println("<script>swal('Producto Agregado Correctamente', 'Hotel Sierra Norte', 'success');</script>");
    response.sendRedirect("./productos.jsp");
%>