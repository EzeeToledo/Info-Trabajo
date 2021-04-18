<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Insert title here</title>
</head>
<body>
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
out.println(oso);
String emi=request.getParameter("emi");
String rec=request.getParameter("rec");
String mot=request.getParameter("mot");
String fec=request.getParameter("fec");
String cui=request.getParameter("cui");
String f=request.getParameter("foto");
String ap=request.getParameter("ap");
String no=request.getParameter("no");
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
		if (f=="")
		{
			f=fot;
		}
		
		String cadenaSQL="UPDATE usuario SET img='"+f+"', ape='"+ap+"', nom='"+no+"' WHERE email='"+oso+"';";
		//out.println(cadenaSQL);
		try
		{
			instruccion.executeUpdate(cadenaSQL);
			
		} catch(SQLException e) {};
	}
	
} catch(SQLException e) {};
%>
<jsp:forward page="foto_prueba.jsp"></jsp:forward>
</body>
</html>