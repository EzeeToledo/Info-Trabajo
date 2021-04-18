<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection canal = null; 
ResultSet tabla= null; 
Statement instruccion=null; 
String strcon = "jdbc:mysql://localhost:3306/test?user=root&password=admin";
String cadSQL= "";

try
{ 
  	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
  	canal=DriverManager.getConnection(strcon); 
  	instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
  	ResultSet.CONCUR_UPDATABLE); 
}
catch(java.lang.ClassNotFoundException e){}  
catch(SQLException e) {};
HttpSession sesionOk=request.getSession();
String oso=(String) sesionOk.getAttribute("email");
String ape1="",nom1="",cu="", ema="";

String email=request.getParameter("email");

String cadena6 ="Select email,ape,nom,cuil From usuario where usuario.email='"+oso+"' ";
try
{
	tabla=instruccion.executeQuery(cadena6);
	while(tabla.next())
	{
		ema=tabla.getString(1);
		ape1=tabla.getString(2);
		nom1=tabla.getString(3);
		cu=tabla.getString(4);
	}
} catch(SQLException e) {};
String cu3=request.getParameter("cu3");
String empr=request.getParameter("empr");
String parr=request.getParameter("par");
String mm="Se postulo";
String nn="Te postulaste";
java.util.Calendar fecha=java.util.Calendar.getInstance();
//out.print(fecha.get(java.util.Calendar.DATE)+"/"+fecha.get(java.util.Calendar.MONTH)+"/"+fecha.get(java.util.Calendar.YEAR));
java.util.Calendar calendario=java.util.Calendar.getInstance();
java.util.Date fech=calendario.getTime();
DateFormat formateador=DateFormat.getInstance();
DateFormat formatedorFecha=new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
out.print(formatedorFecha.format(fech));
String le=formatedorFecha.format(fech);

String cadenita="Insert Into postulados (`cuil`,`empleado`,`empleador`,`fecha`,`desc1`,`desc2`,`para`) Values ('"+cu+"','"+oso+"','"+empr+"','"+le+"','"+mm+"','"+nn+"','"+parr+"')";

out.print(cadenita);

try
{
	int n = instruccion.executeUpdate(cadenita);
}catch(SQLException e){};
%>
<jsp:forward page="inicio.jsp"></jsp:forward>
</body>
</html>