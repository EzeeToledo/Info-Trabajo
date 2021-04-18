<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html lang="es">

<head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="EESTN3 - Malvinas Argentinas" />

    <title>Perfil</title>
    <meta charset="utf-8" />
	<link rel="icon" type="image/png" href="img/logo1.png"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="css/stail.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main1.css">
</head>

<body>

 <%
	Connection canal = null; 
	ResultSet tabla= null; 
	Statement instruccion=null; 
	String strcon = "jdbc:mysql://localhost:3306/test?user=root&password=admin";
	String cadSQL= "";
	String uvp=request.getParameter("up");
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
	String ape1="",numdi="",nom1="",lugnac="",fecnac="",des="",direc="",tel="",cu="",cp="",paisor="",sexo="",pass="",fot="",fot1="";
	int c=0;
	String dni="",t_t="";
	String ape11="",numdi1="",nom11="",cu1="";
	String dni1="",t_t1="";
	String cadena63 ="Select * From usuario where usuario.email='"+oso+"' ";
	try
	{
		tabla=instruccion.executeQuery(cadena63);
		while(tabla.next())
		{
			ape1=tabla.getString(2);
			nom1=tabla.getString(3);
			cu=tabla.getString(9);
			dni=tabla.getString(14);
			t_t=tabla.getString(15);
			fot=tabla.getString(16);
		}
		} catch(SQLException e) {};
	
	String cadena61 ="Select * From usuario where usuario.email='"+uvp+"' ";
	try
	{
		tabla=instruccion.executeQuery(cadena61);
		while(tabla.next())
		{
			ape11=tabla.getString(2);
			nom11=tabla.getString(3);
			cu1=tabla.getString(9);
			dni1=tabla.getString(14);
			t_t1=tabla.getString(15);
			fot1=tabla.getString(16);
		}
		} catch(SQLException e) {};
			%>

<header id="header" class="">
					<div class="negro">
                       <h1></h1> 
					   <h1>Info-Trabajo</h1>
					  <div class="logo pr"></div> 
			      			 <div class="usuario pr">
			     		       <div class="fotousu"><a href="perfil.jsp"><img class="vvv" src="img/<%=fot%>"></a></div>
			            <h3 class="nombreusu"><%out.println(ape1+" "+nom1);%></h3>
			            <a  class="cos" href="cerrar.jsp">Cerrar Sesión</a>
			            
					 </div>
						<a class="eso" href="inicio.jsp">volver</a>		               
				</header>
    <br><br>
    <br>
    <br>
<section class="fila pr">
    <div class="contenedor">
        <div class="c-ima"><img src="img/<%=fot1%>" class="ima"></div>
        
        <!-- <input name="foto" type="file">
        <input name="g_i" type="submit" value="GUARDAR"> -->
        <input name="" class="ma" disabled type="text" value="<%out.println(ape11+" "+nom11);%>"></form>
    </div>
</section>
<!-----------FIN HEADER------------------->
<section class="agarratodo">

<section class="fila pr">
<div>
        <%
        
        sesionOk.setAttribute("cuil",cu);
 String cadena6 ="Select * From usuario where usuario.email='"+uvp+"' ";
	try
	{
		tabla=instruccion.executeQuery(cadena6);
		while(tabla.next())
		{
			ape11=tabla.getString(2);
			nom11=tabla.getString(3);
			lugnac=tabla.getString(4);
			fecnac=tabla.getString(5);
			des=tabla.getString(17);
			direc=tabla.getString(7);
			tel=tabla.getString(8);
			cu1=tabla.getString(9);
			cp=tabla.getString(10);
			paisor=tabla.getString(11);
			pass=tabla.getString(13);
			dni1=tabla.getString(14);
			numdi=tabla.getString(16);
			%>
<div class="con">
<div class="con"><label class="titulo">Información De La Empresa</label><br>

<form name="verp">
<div>
<section class="col15 fl">
<li>Nacionalidad</li>
<li><input type="text" value="<%out.println(paisor); %>" disabled>
</li>
</section>
<section class="col2075 fl">
    <li>Dirección</li>
    <li><input name="dir" type="text" disabled value="<%out.println(direc); %>" placeholder="Las Camelias"></li>
</section>

 <section class="col2075 fl">
    <li>Localidad</li>
    <li><input name="loc" disabled type="text" value="<%out.println(lugnac); %>" placeholder="Tortuguitas"></li>
</section>
<section class="col1025 fl">
    <li>C.P.</li>
    <li><input class="fl" name="cp" disabled type="text" value="<%out.println(cp); %>" placeholder="1667"></li>
</section>
<section class="col15 fl">
    <li>Tel Contacto</li>
    <li><input name="tel" type="text" value="<%out.println(tel); %>" disabled placeholder="11-15789010"></li>
</section>
<br>
<br>
<br>
<section class="w100  mr1">
    <li>Descripcion</li>
    <li><input name="descr" type="text" value="<%out.println(des); %>" disabled placeholder="Nuestra empresa..."></li>
</section>
</form>

     </div>
     </div>
     
   
	<%	}
	} catch(SQLException e) {};


			%>


</div>
    </section>
    
</section>
</body>

</html>