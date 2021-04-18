<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html lang="es">

<head>

	 
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="EESTN3 - Malvinas Argentinas" />

    <title>MiPerfil</title>
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

	String ape1="",numdi="",nom1="",lugnac="",fecnac="",estciv="",direc="",tel="",cu="",cp="",paisor="",sexo="",pass="",descr="",fot="";
	int c=0;
	String dni="",t_t="";
	String cadena61 ="Select * From usuario where usuario.email='"+oso+"' ";
	try
	{
		tabla=instruccion.executeQuery(cadena61);
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
			%>
<header id="header" class="">
					<div class="negro">
                       <h1></h1> 
					   <h1>Info-Trabajo</h1>
					  <div class="logo pr"></div> 
			      			 <div class="usuario pr">
			     		       <div class="fotousu"><a href="perfilj.jsp"><img class="vvv" src="img/<%=fot%>"></a></div>
			            <h3 class="nombreusu"><%out.println(ape1+" "+nom1);%></h3>
			            <a  class="cos" href="cerrar.jsp">Cerrar Sesión</a>
			            
					 </div>
						<a class="eso c"  href="inicio.jsp">volver</a>	               
				</header>
    <br><br>
    <br>
    <br>
    
<section class="fila pr">
    <div class="contenedor">
        <div class="c-ima"><a href='foto_prueba.jsp?email=<%=oso%>'><img src="img/<%=fot%>" class="ima"></a></div>
        
        <!-- <input name="foto" type="file">
        <input name="g_i" type="submit" value="GUARDAR"> -->
        <input name="" class="ma" disabled type="text" value="<%out.println(ape1+" "+nom1);%>"></form>
    </div>
</section>>
<!-----------FIN HEADER------------------->
<section class="agarratodo">

<section class="fila pr">
<div>
        <%
        
        sesionOk.setAttribute("cuil",cu);
    String cadena6 ="Select * From usuario where usuario.email='"+oso+"' ";
	try
	{
		tabla=instruccion.executeQuery(cadena6);
		while(tabla.next())
		{
			ape1=tabla.getString(2);
			nom1=tabla.getString(3);
			lugnac=tabla.getString(4);
			fecnac=tabla.getString(5);
			estciv=tabla.getString(6);
			direc=tabla.getString(7);
			tel=tabla.getString(8);
			cu=tabla.getString(9);
			cp=tabla.getString(10);
			paisor=tabla.getString(11);
			sexo=tabla.getString(12);
			pass=tabla.getString(13);
			dni=tabla.getString(14);
			numdi=tabla.getString(16);
			descr=tabla.getString(17);
			%>
<div class="con">
<div class="con"><label class="titulo">Información Personal</label><br>
<%
if (paisor==null && lugnac==null  && direc==null && tel==null && cp==null && descr==null)
{
	%>
<form action="cargar4.jsp">
<div>
<section class="col15 fl">
<li>Nacionalidad</li>
<li><select name="nac">
<option value="">Seleccionar</option>
<option value="Argentina">Argentina</option>
<option value="Paraguay">Paraguay</option>
<option value="Uruguay">Uruguay</option>
<option value="Chile">Chile</option></select>
</li>
</section>
<section class="col2075 fl">
    <li>Dirección</li>
    <li><input name="dir" type="text" value="" placeholder="Las Camelias"></li>
</section>

 <section class="col2075 fl">
    <li>Localidad</li>
    <li><input name="loc" type="text" value="" placeholder="Tortuguitas"></li>
</section>
<section class="col1025 fl">
    <li>C.P.</li>
    <li><input class="fl" name="cp" type="text" value="" placeholder="1667"></li>
</section>
<section class="col15 fl">
    <li>Tel de Contacto</li>
    <li><input name="tel" type="text" value="" placeholder="11-15789010"></li>
</section><br><br>
 <section class="col15 ">
	     <li>Descripción de la Empresa</li>
	     <li><input name="descr" type="text" value="" placeholder=""></li>
	 </section>
<input class="boton" name="boton" type="submit" value="Cargar">
</form>
	<%
 }else{
	 %>
	 <form action="modifi3.jsp">
	 <div>
	 <section class="col15 fl">
	 <%if (paisor!=null){ %>
	 <li>Nacionalidad</li>
	 <li><select name="nac">
	 <option value="<%out.println(paisor);%>"><%out.println(paisor);%></option>
	 <option value="Argentina">Argentina</option>
	 <option value="Paraguay">Paraguay</option>
	 <option value="Uruguay">Uruguay</option>
	 <option value="Chile">Chile</option></select>
	 </li>
	 </section>
	 <%} else { %>
	 <li>Nacionalidad</li>
	 <li><select name="nac">
	 <option value="">Seleccionar</option>
	 <option value="Argentina">Argentina</option>
	 <option value="Paraguay">Paraguay</option>
	 <option value="Uruguay">Uruguay</option>
	 <option value="Chile">Chile</option></select>
	 </li>
	 </section>
	 <%} if (direc!=null){%>
	 <section class="col2075 fl">
	     <li>Dirección</li>
	     <li><input name="dir" type="text" value='<%out.println(direc);%>'></li>
	 </section>
	 <%} else { %>
	 <section class="col2075 fl">
	     <li>Dirección</li>
	     <li><input name="dir" type="text" value="" placeholder="Las Camelias"></li>
	 </section>
	 <%} if (lugnac!=null){%>
	 <section class="col2075 fl">
	     <li>Localidad</li>
	     <li><input name="loc" type="text" value='<%out.println(lugnac);%>'></li>
	 </section> 
	 <%} else { %>
	  <section class="col2075 fl">
	     <li>Localidad</li>
	     <li><input name="loc" type="text" value="" placeholder="Tortuguitas"></li>
	 </section>
	 <%} if (cp!=null){%> 
	 <section class="col1025 fl">
	     <li>C.P.</li>
	     <li><input class="fl" name="cp" type="text" value='<%out.println(cp);%>'></li>
	 </section>
	 <%} else { %>
	 <section class="col1025 fl">
	     <li>C.P.</li>
	     <li><input class="fl" name="cp" type="text" value="" placeholder="1667"></li>
	 </section>
	 <%} if (tel!=null){%>
	 <section class="col15 fl">
	     <li>Tel de Contacto</li>
	     <li><input name="tel" type="text" value='<%out.println(tel);%>'></li>
	 </section>
	 <%} else { %>
	 <section class="col15 fl">
	     <li>Tel de Contacto</li>
	     <li><input name="tel" type="text" value="" placeholder="11-15789010"></li>
	 </section>
	 <%} if (descr!=null){%>
	  <br><br>
	  <section class="w100 fl mr1">
	      <li>Descripción de la Empresa</li>
           		
           			 <center><input class="com pd5" name="descr" type="text"  value="<%out.println(descr);%>"> </center>
           			 <br>
	 </section>
	 <%} else { %>
	 <br><br>
	 <section class="w100  mr1">
	      <li>Descripcion</li>
           		
           			 <center><input class="com pd5" name="descr" type="text"value=""> </center>
           			 <br>
	</section>
	 
	 <%} %>
	             <input class="boton" name="boton" type="submit" value="Modificar">
	             </form> <%
 }
	 %>
     </div>
     </div>
	<%	}
	} catch(SQLException e) {};
	%>
</section>



</body>
</html>