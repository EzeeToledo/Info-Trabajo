<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html lang="es">

<head>
<script type="text/javascript">
	
	function verific(){
		var des=formun.des.value;
		var has=formun.has.value;
		//separo desde
		var d=des.split("/");
		var d1=d[0];
		var d2=d[1];
		var d3=d[2];
		//separo hasta 
		var h=has.split("/");
		var h1=h[0];
		var h2=h[1];
		var h3=h[2];
		
		if(d1>h1){
			alert("La Fecha Desde no puede ser nunca mayor a la Fecha Hasta");	
		}
		else{
			if((d1==h1)&&(d2>h2)){
				alert("La Fecha Desde no puede ser nunca mayor a la Fecha Hasta");		
			}
			else{
				if((d1==h1)&&(d2==h2)&&(d3>h3)){
					alert("La Fecha Desde no puede ser nunca mayor a la Fecha Hasta");	
					}
			}
		}
		}
	function verifica(){
	
		var des1=formunu.desd.value;
		var has1=formunu.hast.value;
		//separo desde
		var dd=des1.split("/");
		var dd1=dd[0];
		var dd2=dd[1];
		var dd3=dd[2];
		//separo hasta 
		var hh=has1.split("/");
		var hh1=hh[0];
		var hh2=hh[1];
		var hh3=hh[2];
		if(dd1>hh1){
			alert("La Fecha Desde no puede ser nunca mayor a la Fecha Hasta");	
		}
		else{
			if((dd1==hh1)&&(dd2>hh2)){
				alert("La Fecha Desde no puede ser nunca mayor a la Fecha Hasta");		
			}
			else{
				if((dd1==hh1)&&(dd2==hh2)&&(dd3>hh3)){
					alert("La Fecha Desde no puede ser nunca mayor a la Fecha Hasta");	
					}
			}
		}
	}
	
	
	</script>
	 

	 
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

	String ape1="",numdi="",nom1="",lugnac="",fecnac="",estciv="",direc="",tel="",cu="",cp="",paisor="",sexo="",pass="",fot="";
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
			     		       <div class="fotousu"><a href="perfil.jsp"><img class="vvv" src="img/<%=fot%>"></a></div>
			            <h3 class="nombreusu"><%out.println(ape1+" "+nom1);%></h3>
			            <a  class="cos" href="cerrar.jsp">Cerrar Sesión</a>
			            
					 </div>
						<a class="eso c" href="inicio.jsp">volver</a>		
						</div>	               
				</header>
    <br><br><br><br>
<section class="fila pr">
    <div class="contenedor">
        <div class="c-ima"><a href='foto_prueba.jsp?email=<%=oso%>'><img src="img/<%=fot%>" class="ima"></a></div>
        
        <!-- <input name="foto" type="file">
        <input name="g_i" type="submit" value="GUARDAR"> -->
        <input name="" class="ma" disabled type="text" value="<%out.println(ape1+" "+nom1);%>"></form>
    </div>
</section>
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
			%>
<div class="con">
<div class="con"><label class="titulo">Información Personal</label><br>
<%
if (paisor==null && lugnac==null && estciv==null && direc==null && tel==null && cp==null)
{
	%>
<form action="cargar.jsp">
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
<section class="col1025 fl">
<li>Est. Civil</li>
<li><select name="num">
<option value="">Seleccionar</option>
<option value="Soltero/a">Soltero/a</option>
<option value="Casado/a">Casado/a</option>
<option value="Viudo/a">Viudo/a</option></select>
</li>
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
    <li>Teléfono/Celular</li>
    <li><input name="tel" type="text" value="" placeholder="11-15789010"></li>
</section>
<input class="boton" name="boton" type="submit" value="Cargar">
</form>
	<%
 }else{
	 %>
	 <form action="modifi.jsp">
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
	 <%} if (estciv!=null){%>
	 <section class="col1025 fl">
	 <li>Est. Civil</li>
	 <li><select  name="num">
	 <option value='<%out.println(estciv);%>'><%out.println(estciv);%></option>
	 <option value="Soltero/a">Soltero/a</option>
	 <option value="Casado/a">Casado/a</option>
	 <option value="Viudo/a">Viudo/a</option></select>
	 </li>
	 </section>
	 <%} else { %>
	 <section class="col1025 fl">
	 <li>Est. Civil</li>
	 <li><select name="num">
	 <option value="">Seleccionar</option>
	 <option value="Soltero/a">Soltero/a</option>
	 <option value="Casado/a">Casado/a</option>
	 <option value="Viudo/a">Viudo/a</option></select>
	 </li>
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
	     <li>Teléfono/Celular</li>
	     <li><input name="tel" type="text" value='<%out.println(tel);%>'></li>
	 </section>
	 <%} else { %>
	 <section class="col15 fl">
	     <li>Teléfono/Celular</li>
	     <li><input name="tel" type="text" value="" placeholder="11-15789010"></li>
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

<section class="fila pr">
        <!-- ---------------------------------------------------------------------------->
<div class="con"><label class="titulo">Formación Académica</label><br>
<form name="formun" action="cargar1.jsp">
<section class="col20 fl">
    <li>Institución</li>
    <li><select name="ins">
<option value=""></option>
<option value="Universidad de Buenos Aires">Universidad de Buenos Aires</option>
<option value="Universidad de General Sarmiento">Universidad de General Sarmiento</option>
<option value="Universidad de Moron">Universidad de Moron</option>
<option value="Universidad Argentina de la Empresa">Universidad Argentina de la Empresa</option>
<option value="Universidad Catolica Argentina">Universidad Catolica Argentina</option>
<option value="Universidad Abierta Interamericana">Universidad Abierta Interamericana</option>
<option value="Universidad Tecnologica Nacional">Universidad Tecnologica Nacional</option>
                                        
</select></li>
    </section>
    <section class="col20 fl">
        <li>Carrera</li>
<li><select name="car">
<option value=""></option>

<option value="Odontologia">Odontologia</option>
<option value="Lincenciatura en Administracion">Lincenciatura en Administracion</option>
<option value="Lincenciatura en Ciencia de la Computacion">Lincenciatura en Ciencia de la Computacion</option>
<option value="Lincenciatura en Bioquimica">Lincenciatura en Bioquimica</option>
<option value="Lincenciatura en Periodismo">Lincenciatura en Periodismo</option>
<option value="Lincenciatura en Nutricion">Lincenciatura en Nutricion</option></select></li>
    </section>

<section class="col20 fl">
    <li>Desde</li>
    <li><input name="des" type="date" value=""></li>
</section>

<section class="col20 fl">
    <li>Hasta</li>
    <li><input name="has" type="date" value=""></li>
</section>

<input class="boton" name="btn" type="submit" value="Cargar" onclick="verific()">

</form>
</div>
    </section> <!---FORMACION ACADEMICA--->
    
<% 
String desc="",fecini="",fecfin="",lug="",pro="";
	sesionOk.setAttribute("cuil",cu);
	String cadena655 ="Select * From foraca where cuil='"+cu+"' ";
	try
	{
		tabla=instruccion.executeQuery(cadena655);
		while(tabla.next())
		{
			desc=tabla.getString(1);
			fecini=tabla.getString(2);
			fecfin=tabla.getString(3);
			lug=tabla.getString(4);
			%>
<div class="con">
<form  action="modifi1.jsp">
<section class="col20 fl">
    <li>Institución</li>
    <li><select name="ins">
<option value='<%out.println(lug);%>'><%out.println(lug);%></option>

<option value="Universidad de Buenos Aires">Universidad de Buenos Aires</option>
<option value="Universidad de General Sarmiento">Universidad de General Sarmiento</option>
<option value="Universidad de Moron">Universidad de Moron</option>
<option value="Universidad Argentina de la Empresa">Universidad Argentina de la Empresa</option>
<option value="Universidad Catolica Argentina">Universidad Catolica Argentina</option>
<option value="Universidad Abierta Interamericana">Universidad Abierta Interamericana</option>
<option value="Universidad Tecnologica Nacional">Universidad Tecnologica Nacional</option>
</select></li>
    </section>
    <section class="col20 fl">
        <li>Carrera</li>
<li><select name="car">
<option value='<%out.println(desc);%>'><%out.println(desc);%></option>

<option value="Odontologia">Odontologia</option>
<option value="Lincenciatura en Administracion">Lincenciatura en Administracion</option>
<option value="Lincenciatura en Ciencia de la Computacion">Lincenciatura en Ciencia de la Computacion</option>
<option value="Lincenciatura en Bioquimica">Lincenciatura en Bioquimica</option>
<option value="Lincenciatura en Periodismo">Lincenciatura en Periodismo</option>
<option value="Lincenciatura en Nutricion">Lincenciatura en Nutricion</option></select></li>
    </section>

<section class="col20 fl">
    <li>Desde</li>
    <li><input name="des" type="text" value='<%out.println(fecini);%>'></li>
</section>

<section class="col20 fl">
    <li>Hasta</li>
    <li><input name="has" type="text" value='<%out.println(fecfin);%>'></li>
</section>
<input class="boton" name="btn" type="submit" value="Modificar"  >
</form>
</div>
	<%	}
	} catch(SQLException e) {};
	%>
       
        <!-- ---------------------------------------------------------------------------->
<section class="fila pr">
<div class="con"><label class="titulo">Experiencia Laboral</label><br>
<form name="formunu" action="cargar2.jsp">
<section class="col20 fl">
    <li>Lugar</li>
    <li><input name="lug" type="text" value=""></li>
</section>

<section class="col20 fl">
    <li>Puesto</li>
    <li><input name="pue" type="text" value=""></li>
</section>

<section class="col20 fl">
    <li>Cont de Ref</li>
    <li><input name="cont" type="text" value=""></li>
</section>
 
 <section class="col20 fl">
                    <li>Desde</li>
                         <li><input name="desd" type="date" value=""></li></section>
    
                    <section class="col20 fl">
    <li>Hasta</li>
    <li><input name="hast" type="date" value=""></li>
</section>
                    
           
            <input class="boton" name="btn" type="submit" value="Cargar" onclick="verifica()">
            </form>
        </div>

</section> <!---eXPERIENCIA--->

<% 
	String tar="",pue="",lug2="",feci="",fecf="";
sesionOk.setAttribute("cuil",cu);
String cadena62 ="Select * From explab where cuil='"+cu+"' ";

	try
	{
		tabla=instruccion.executeQuery(cadena62);
		while(tabla.next())
		{
			tar=tabla.getString(3);
			pue=tabla.getString(4);
			lug2=tabla.getString(5);
			feci=tabla.getString(6);
			fecf=tabla.getString(7);
			
		
			%>
			
<div class="con">
<form action="modifi2.jsp">
<section class="col20 fl">
    <li>Lugar</li>
    <li><input name="lug" type="text" value='<%out.println(lug2);%>'></li>
</section>

<section class="col20 fl">
    <li>Puesto</li>
    <li><input name="pue" type="text" value='<%out.println(pue);%>'></li>
</section>

<section class="col20 fl">
    <li>Cont de Ref</li>
    <li><input name="cont" type="text" value='<%out.println(tar);%>'></li>
</section>
 
 <section class="col20 fl">
                    <li>Desde</li>
                         <li><input name="desd" type="text" value='<%out.println(feci);%>'></li></section>
    
                    <section class="col20 fl">
    <li>Hasta</li>
    <li><input name="hast" type="text" value='<%out.println(fecf);%>'></li>
</section>
        <input class="boton" name="btn" type="submit" value="Modificar">
        </form>
        </div>
	<%
	}
	} catch(SQLException e) {};

        // gets values of text fields

        /*InputStream isFoto = null; // input stream of the upload file

        // obtains the upload file part in this multipart request 
        String submit = request.getParameter("g_i");
        String message = "";
        
        if(request.getParameter("g_i")==null){
        	System.out.println("submit nulo");
        	
        }
        else{
        if(submit.equals("GUARDAR")){
       	 	
        	try {
	    	    isFoto = request.getPart("foto").getInputStream();

                String sql =("INSERT INTO usuario (img) values (?) where idusu=2");
                PreparedStatement statement = canal.prepareStatement(sql);

                if (isFoto!= null) {
                    // fetches input stream of the upload file for the blob column
                    statement.setBlob(1, isFoto);
                }

                // sends the statement to the database server
                int row = statement.executeUpdate();
                if (row > 0) {
                    message = "File uploaded and saved into database";
                }
            } catch (Exception  ex) {
                message = "ERROR: " + ex.getMessage();
                 ex.printStackTrace();
            } finally {
                if (canal != null) {
                    // closes the database connection
                    try {
                        canal.close();
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
                // sets the message in request scope
                //request.setAttribute("Message", message);

                // forwards to the message page
                //getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
            }}
	
        }*/

           
	%>

</section>
</body>

</html>