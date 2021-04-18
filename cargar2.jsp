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

int cla=0, p=1;
String cadena6 ="Select * From explab";
try
{
	tabla=instruccion.executeQuery(cadena6);
	while(tabla.next())
	{
		//cla=Integer.parseInt(tabla.getString(1));
	}
}
catch(SQLException e) {};
String d1="",d2="",d3="",h1="",h2="",h3="";
int  d11=0,d21=0,d31=0,h11=0,h21=0,h31=0;
String lug=request.getParameter("lug");
String pue=request.getParameter("pue");
String cont=request.getParameter("cont");
String desd=request.getParameter("desd");
String hast=request.getParameter("hast");

//separo desde
 String[] d=desd.split("-");
 d1=d[0];
 d2=d[1];
 d3=d[2];
//separo hasta 
 String[] h=hast.split("-");
 h1=h[0];
 h2=h[1];
 h3=h[2];
 d11=Integer.parseInt(d1);
 d21=Integer.parseInt(d2);
 d31=Integer.parseInt(d3);
 h11=Integer.parseInt(h1);
 h21=Integer.parseInt(h2);
 h31=Integer.parseInt(h3);
 
if(d11>h11){
	out.print("no");	
}
else{
	if((d11==h11)&&(d21>h21)){
		out.print("no");
	}
	else{
		if((d11==h11)&&(d21==h21)&&(d31>h31)){
			out.print("no");
			}
		else{
			String cadena= "INSERT INTO explab (`cuil`,`email`, `tarea`,`puesto`, `lugar`,`fecini`, `fecfin`) VALUES ('"+cu+"','"+oso+"', '"+cont+"','"+pue+"', '"+lug+"','"+desd+"', '"+hast+"');";
			out.println(cadena);
			try{
				int n = instruccion.executeUpdate(cadena);
			}catch(SQLException e){};
		}
		}
	   
}

%>
<jsp:forward page="perfil.jsp"></jsp:forward>
</body>
</html>