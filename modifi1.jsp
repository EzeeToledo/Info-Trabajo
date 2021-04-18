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
String ins=request.getParameter("ins");
String car=request.getParameter("car");
String des=request.getParameter("des");
String has=request.getParameter("has");
String hid=request.getParameter("hid");
String c1="", c2="", c3="", c4="";
try
{
	tabla= instruccion.executeQuery("SELECT * FROM foraca WHERE cuil='"+cu+"'");
	while(tabla.next())
	{
		c1=tabla.getString(1);
		c2=tabla.getString(2);
		c3=tabla.getString(3);
		c4=tabla.getString(4);
	
String cadenaSQL="UPDATE foraca SET descripcion='"+car+"',fecini='"+des+"',fecfin='"+has+"',lugar='"+ins+"' WHERE cuil='"+cu+"' and descripcion='"+c1+"' and fecini='"+c2+"' and fecfin='"+c3+"' and lugar='"+c4+"';";
out.println(cadenaSQL);
try
{
	instruccion.executeUpdate(cadenaSQL);
} catch(SQLException e) {};
}}
catch(SQLException e) {};
%>
<jsp:forward page="perfil.jsp"></jsp:forward>
</body>
</html>