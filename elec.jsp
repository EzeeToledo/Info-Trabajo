<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<link rel="icon" type="image/png" href="img/logo1.png"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Tab Styles Inspiration</title>
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
	String ema = request.getParameter("email");
	String con = request.getParameter("pass");
	

	
	
	
	cadSQL="SELECT email, ape, nom, lugnac, fecnac, estciv, direccion, tel, cuil, cp, paisor, sexo, pass FROM usuario WHERE email= '" +ema+ "' and pass= '" +con+ "'";
	
	try
	{
		tabla=instruccion.executeQuery(cadSQL);
		if (tabla.next())
		{
        	HttpSession sesionOk=request.getSession();
        	sesionOk.setAttribute("email",ema);
        	sesionOk.setAttribute("apellido",tabla.getString(2));
        	sesionOk.setAttribute("nombre",tabla.getString(3));
        	String oso=(String) sesionOk.getAttribute("email");
        	%>
			<jsp:forward page="inicio.jsp">
				<jsp:param value="Campo/s incorrecto/s... Tratelo nuevamente" name="error"/>
			</jsp:forward>
			<%
			}else
				{
			%>
			<jsp:forward page="logcontra.html">
				<jsp:param value="Campo/s incorrecto/s... Tratelo nuevamente" name="error"/>
			</jsp:forward>
			<%
		}
	} 
	catch(SQLException e) {out.println("N.o");};
%>
	
	</body>
</html>