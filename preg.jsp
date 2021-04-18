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
	}catch(java.lang.ClassNotFoundException e){}  
	catch(SQLException e) {};
	HttpSession sesionOk=request.getSession();
	String oso=(String) sesionOk.getAttribute("email");

	String ape1="",numdi="",nom1="",lugnac="",fecnac="",estciv="",direc="",tel="",cu="",cp="",paisor="",sexo="",pass="";
	int c=0;
	String dni="",t_t="";
	String cadena61 ="Select tipo_trabajador From usuario where usuario.email='"+oso+"' ";
	out.println(cadena61);
	try{tabla=instruccion.executeQuery(cadena61);
		if(tabla.next())
		{
			if(tabla.getString(1).equals("j"))
			{
				%>
			<jsp:forward page="perfilj.jsp">
				<jsp:param value="Campo/s incorrecto/s... Tratelo nuevamente" name="error"/>
			</jsp:forward>
			<%
			}else if (tabla.getString(1).equals("e"))
				%>
			<jsp:forward page="perfil.jsp">
				<jsp:param value="Campo/s incorrecto/s... Tratelo nuevamente" name="error"/>
			</jsp:forward>
			<%
		}
		
		
	}catch(SQLException e) {};  
	
	
	
	%>
</body>
</html>