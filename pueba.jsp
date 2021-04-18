<%@page import="java.text.DateFormat"%>
<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Prueba</title>
</head>

<body>
<%
 java.util.Calendar fecha=java.util.Calendar.getInstance();
 //out.print(fecha.get(java.util.Calendar.DATE)+"/"+fecha.get(java.util.Calendar.MONTH)+"/"+fecha.get(java.util.Calendar.YEAR));
 java.util.Calendar calendario=java.util.Calendar.getInstance();
 java.util.Date fech=calendario.getTime();
 DateFormat formateador=DateFormat.getInstance();
 DateFormat formatedorFecha=new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
 out.print(formatedorFecha.format(fech));
 String le=formatedorFecha.format(fech);
 out.print(le);
%>
</body>
</html>