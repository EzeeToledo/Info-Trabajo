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
String tel=request.getParameter("tel");
String cp=request.getParameter("cp");
String loc=request.getParameter("loc");
String num=request.getParameter("num");
String dir=request.getParameter("dir");
String nac=request.getParameter("nac");
	
	try
	{
		tabla= instruccion.executeQuery("SELECT * FROM usuario");
	}
	catch(SQLException e) {}; 

	String cadenaSQL="UPDATE usuario SET lugnac='"+loc+"',direccion='"+dir+"',tel='"+tel+"',cp='"+cp+"',paisor='"+nac+"',estciv='"+num+"' WHERE email='"+oso+"';";
	try
	{
		instruccion.executeUpdate(cadenaSQL);
	}
	catch(SQLException e) {};

%>
<jsp:forward page="perfil.jsp"></jsp:forward>
</body>
</html>