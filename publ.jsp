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
        String d = request.getParameter("de");
        java.util.Calendar fecha=java.util.Calendar.getInstance();
        //out.print(fecha.get(java.util.Calendar.DATE)+"/"+fecha.get(java.util.Calendar.MONTH)+"/"+fecha.get(java.util.Calendar.YEAR));
        java.util.Calendar calendario=java.util.Calendar.getInstance();
        java.util.Date fech=calendario.getTime();
        DateFormat formateador=DateFormat.getInstance();
        DateFormat formatedorFecha=new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm");
        //out.print(formatedorFecha.format(fech));
        String le=formatedorFecha.format(fech);
        String email=request.getParameter("email");
        String ape1="",nom1="",cu="", ema="",dni="", t_t="";
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
        		dni=tabla.getString(14);
        		t_t=tabla.getString(15);
        	}
        } catch(SQLException e) {};
        
        if(d!=null){
        	
        	String cad= "INSERT INTO publicacion (`ape`, `nom`, `cuil`, `descr`, `email`,`dni`,`fecha`,`tipo_trabajador`) VALUES ('"+ape1+"', '"+nom1+"', '"+cu+"', '"+d+"', '"+oso+"', '"+dni+"', '"+le+"', '"+t_t+"');";
        	
        	try{
        		int n = instruccion.executeUpdate(cad);
        		d=null;
  
        	}catch(SQLException e){};	
        	
        }
        d=null;
        %>
        <jsp:forward page="inicio.jsp"></jsp:forward>
</body>
</html>