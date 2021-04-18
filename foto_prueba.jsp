<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="author" content="EESTN3 - Malvinas Argentinas" />

    <title>Cambiar Foto</title>
    <meta charset="utf-8" />
	<link rel="icon" type="image/png" href="img/logo1.png"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main2.css" />
    <link rel="stylesheet" href="css/stail.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main1.css">
</head>
<body>
<header id="header" class="">
		
	<a class="eso" href="inicio.jsp">volver</a>		               
</header>
<br>
<br>
<%
Connection canal = null; 
ResultSet tabla= null; 

ResultSet rs= null; 
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
String oso=(String)sesionOk.getAttribute("email");
String ape1="",nom1="",cu="", ema="";
String emi=request.getParameter("emi");
String rec=request.getParameter("rec");
String mot=request.getParameter("mot");
String fec=request.getParameter("fec");
String cui=request.getParameter("cui");
String f=request.getParameter("foto");
String fot="";
String cadena6 ="Select * From usuario where usuario.email='"+oso+"' ";
try
{
	tabla=instruccion.executeQuery(cadena6);
	while(tabla.next())
	{
		ema=tabla.getString(1);
		ape1=tabla.getString(2);
		nom1=tabla.getString(3);
		cu=tabla.getString(9);
		fot=tabla.getString(16);
	}
	
} catch(SQLException e) {};
sesionOk.setAttribute("email",oso);
%>
<form name="fomu_f" method="get" action="fotos.jsp">
<center><input class="lechuga" type="text" name="ap" value='<%out.println(ape1+" ");%>' border="none">
<input class="lechuga" type="text" name="no" value='<%out.println(nom1);%>' border="none"></center>
 <center><div class=""><img class="nuevo" src="img/<%=fot%>"></div>
 <input type="file" name="foto" value="" size="50">
 <input type="submit" name="Guardar"></center>
</form>
</body>
</html>