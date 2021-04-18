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

String des=request.getParameter("desc");
String niv=request.getParameter("nivel");
String tit=request.getParameter("titu");
String dur=request.getParameter("durac");

String cadena= "INSERT INTO idiomas (`cuil, `titulo`, `nivel`, `descaripcion` , `dura`) VALUES ('"+cu+"', '"+tit+"', '"+niv+"', '"+des+"', '"+dur+"');";
out.print(cadena);
try{
	int n = instruccion.executeUpdate(cadena);
}catch(SQLException e){};
%>
<jsp:forward page="perfil.jsp"></jsp:forward>
</body>
</html>