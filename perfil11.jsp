<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="es">

<head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="EESTN3 - Malvinas Argentinas" />
	<link rel="icon" type="image/png" href="img/logo1.png"/>

    <title>Registrador</title>
    <link rel="stylesheet" href="css/stail.css">
   
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

	String ape1="",nom1="",prcuil="",cu="";
	int c=0;
	String dni="";
	
	
String cadena6 ="Select ape,nom,cuil,dni From usuario where usuario.email='"+oso+"' ";
	
	try
	{
		tabla=instruccion.executeQuery(cadena6);
		while(tabla.next())
		{
			ape1=tabla.getString(1);
			nom1=tabla.getString(2);
			cu=tabla.getString(3);
		}
	} catch(SQLException e) {};
	
	
	
	%>
<header class="menu pr">
   
    </header>
    
<section class="fila pr">
    <div class="contenedor">
        <div class="c-ima"> <img src="#" class="ima"></div>
        <input name="" class="ma" disabled type="text" value="<%out.println(ape1+" "+nom1);%>">
    </div>
</section>
<!-----------FIN HEADER------------------->
<section class="agarratodo">

<section class="fila pr">



<div>
       		<form name="" method="get" action="perfil.jsp">
       		
       		 <center><input class="com" name="de" type="text" placeholder="Ingresar Publicacion" value=""></center>
       		 
       		 <br>
       		 <br>
       		 <center><input name="" type="submit" value="Publicar"></center>
       		
       		</form>
        </div>
        <%
        String de = request.getParameter("de");
       
        if(de!=null){
        	
        	String cad= "INSERT INTO publicacion (`ape`, `nom`, `cuil`, `descr`, `email`,`dni`,fecha,puesto) VALUES ('"+ape1+"', '"+nom1+"', '"+cu+"', '"+de+"', '"+oso+"', '"+dni+"','2000-02-20','pizza');";
        	
        	try{
        		int n = instruccion.executeUpdate(cad);
        		
        		%> 	<jsp:forward page="inicio.jsp"></jsp:forward>  <%
        		
        	}catch(SQLException e){};	
        }
        de="";
        
        %>

<a href="inicio.jsp">volver</a>

    <div class="con"><label class="titulo">Mi Contacto</label><br><br>
    <section class="col15 fl">
    <li>Nacionalidad</li>
<li><select name="select">
<option value="">Seleccionar</option>
<option value="Argentina">Argentina</option>
<option value="Paraguay">Paraguay</option>
<option value="Uruguay">Uruguay</option>
<option value="Chile">Chile</option></select>
</li>
 </section> 
<section class="col2075 fl">
    <li>Dirección</li>
    <li><input name="" type="text" value="" placeholder="Las Camelias"></li>
            </section>

<section class="col1025 fl">
    <li>Número</li>
    <li><input name="" type="text" value="" placeholder="1566"></li>
            </section>

 <section class="col2075 fl">
    <li>Localidad</li>
    <li><input name="" type="text" value="" placeholder="Del Viso, Pilar"></li>
            </section> 
            
             <section class="col1025 fl">
    <li>C.P.</li>
    <li><input class="fl" name="" type="text" value="" placeholder="1667"></li>
            </section> 
            
            <section class="col15 fl">
    <li>Telefono</li>
    <li><input name="" type="text" value="" placeholder="11-1234-9876"></li>
            </section>
              
      <section class="col10 hd fl">
    <li>Sexo</li>
    <li><select name="select">
<option value="">Seleccionar</option>

<option value="M">Masculino</option>
<option value="F">Femenino</option></select></li>
            </section> 

            <input class="boton" name="boton" type="submit" value="Cargar">
     </div>
       
    </section> <!---CONTACTO--->
    
    
    
<section class="fila pr">
        <!-- ---------------------------------------------------------------------------->
<div class="con"><label class="titulo">Formación Academica</label><br><br>

<section class="col20 fl">
    <li>Institución</li>
    <li><select name="select">
<option value=""></option>

<option value="hombre">Universidad de Buenos Aires</option>
<option value="mujer">Universidad de General Sarmiento</option>
<option value="mujer">Universidad de Moron</option>
<option value="mujer">Universidad Argentina de la Empresa</option>
<option value="mujer">Universidad Catolica Argentina</option>
<option value="mujer">Universidad Abierta Interamericana</option>
<option value="mujer">Universidad Tecnologica Nacional</option>
                                        
</select></li>

    </section>


    <section class="col20 fl">
        <li>Carrera</li>
<li><select name="select">
<option value=""></option>

<option value="hombre">Odontologia</option>
<option value="mujer">Lincenciatura en Administracion</option>
<option value="mujer">Lincenciatura en Ciencia de la Computacion</option>
<option value="mujer">Lincenciatura en Bioquimica</option>
<option value="mujer">Lincenciatura en Periodismo</option>
<option value="mujer">Lincenciatura en Nutricion</option></select></li>
    </section>

<section class="col20 fl">
    <li>Desde</li>
    <li><input name="" type="date" value=""></li>
</section>

<section class="col20 fl">
    <li>Hasta</li>
    <li><input name="" type="date" value=""></li>
</section>

<section class="col20 fl">
    <li>Promedio</li>
    <li><input name="" type="text" value=""></li>
</section>

<input class="boton" name="btn" type="submit" value="Cargar">


</div>
    </section> <!---FORMACION ACADEMICA--->
       
        <!-- ---------------------------------------------------------------------------->
<section class="fila pr">
<div class="con"><label class="titulo">Experiencia Laboral</label><br><br>
<section class="col20 fl">
    <li>Lugar</li>
    <li><input name="" type="text" value=""></li>
</section>

<section class="col20 fl">
    <li>Puesto</li>
    <li><input name="" type="text" value=""></li>
</section>

<section class="col20 fl">
    <li>Contacto de Referencia</li>
    <li><input name="" type="text" value=""></li>
</section>
 
 <section class="col20 fl">
                    <li>Desde</li>
                         <li><input name="" type="date" value=""></li></section>
    
                    <section class="col20 fl">
    <li>Hasta</li>
    <li><input name="" type="date" value=""></li>
</section>
                    
           
            <input class="boton" name="btn" type="submit" value="Cargar">
        </div>
        <br><br>

</section> <!---eXPERIENCIA--->

</section>
</body>

</html>