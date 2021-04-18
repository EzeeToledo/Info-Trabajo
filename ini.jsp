<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
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
String ema=request.getParameter("ema");
String ape=request.getParameter("ape");
String nom=request.getParameter("nom");
String con=request.getParameter("pas");


Connection canal = null; 
ResultSet tabla= null; 
Statement instruccion=null; 
String strcon = "jdbc:mysql://localhost:3306/test?user=root&password=admin"; 
String cadSQL = ""; 

String cadenaSQL="insert into usu(email, apellido, nombre, contrasena) values ('"+ema+"','"+ape+"','"+nom+"','"+con+"')";

    try  
    { 
    	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        canal=DriverManager.getConnection(strcon); 
        instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
        ResultSet.CONCUR_UPDATABLE); 
    } 
    catch(java.lang.ClassNotFoundException e){}
   	catch(SQLException e) {};
   	
    try
    {
    	tabla=instruccion.executeQuery("SELECT * FROM usu");
    }
    catch(SQLException e) {};
    	
    try
    {
      	instruccion.executeUpdate(cadenaSQL);
    }
    catch(SQLException e) {out.println (e);};
 %>
<jsp:forward page="inicio.jsp"/>
</body>
</html>