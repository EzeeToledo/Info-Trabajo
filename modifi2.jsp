<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/stail.css">
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
String cu=(String) sesionOk.getAttribute("cuil");
String lug=request.getParameter("lug");
String pue=request.getParameter("pue");
String cont=request.getParameter("cont");
String desd=request.getParameter("desd");
String hast=request.getParameter("hast");
String c1="", c2="", c3="", c4="", c5="", c6="";
try
{
	tabla= instruccion.executeQuery("SELECT * FROM explab WHERE cuil='"+cu+"'");
	while(tabla.next())
	{
		c1=tabla.getString(2);
		c2=tabla.getString(3);
		c3=tabla.getString(4);
		c4=tabla.getString(5);
		c5=tabla.getString(6);
		c6=tabla.getString(7);
String cadenaSQL="UPDATE explab SET tarea='"+cont+"',puesto='"+pue+"',lugar='"+lug+"',fecini='"+desd+"',fecfin='"+hast+"' WHERE cuil='"+cu+"' and email='"+c1+"' and tarea='"+c2+"' and puesto='"+c3+"' and lugar='"+c4+"' and fecini='"+c5+"' and fecfin='"+c6+"';";
try
{
	instruccion.executeUpdate(cadenaSQL);
} catch(SQLException e) {};
} }
catch(SQLException e) {};
%>
<jsp:forward page="perfil.jsp"></jsp:forward>
</body>
</html>