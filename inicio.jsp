<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="EESTN3 - Malvinas Argentinas" />

    <title>Inicio</title>

    <link rel="stylesheet" href="css/stail.css">
    <link rel="stylesheet" href="css/solapa.css">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="img/logo1.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ContactFrom_v2/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ContactFrom_v2/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ContactFrom_v2/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ContactFrom_v2/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="ContactFrom_v2/css/main.css">
    <link rel="stylesheet" href="css/maqueta.css">
    <link rel="stylesheet" href="css/vistausu.css">
    <link rel="stylesheet" href="css/noti.css">
       <link rel="stylesheet" type="text/css" href="assets/css/main1.css">
<!--===============================================================================================-->
 <script type="text/javascript">
 	
 	function validar(){
 		
 		var mensaje;
 		var opcion = confirm("has click en aceptar o cancelar");
 		if (opcion==true){
 			mensaje=true;
 		}else{
 			mensaje =false;
 		}
 		
 		document.getElementById("ejemplo").inner
 		html = mensaje;
 	}
 </script>
</head>
<body>

<%
	Connection canal = null; 
	ResultSet tabla= null; 
	Statement instruccion=null; 
	String strcon = "jdbc:mysql://localhost:3306/test?user=root&password=admin";
	String cadSQL= "";
	String uvp="";
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
	String ape1="",nom1="",cu="",cuil1="",t_t="",dni="",fot="",foto="";
	
	String cadena6 ="Select ape,nom,cuil,dni,tipo_trabajador,img From usuario where usuario.email='"+oso+"' ";
	
	try
	{
		tabla=instruccion.executeQuery(cadena6);
		while(tabla.next())
		{
			ape1=tabla.getString(1);
			nom1=tabla.getString(2);
			cu=tabla.getString(3);
			dni=tabla.getString(4);
			t_t=tabla.getString(5);
			fot=tabla.getString(6);
			
		}
	} catch(SQLException e) {};
	
%>
<!-- Header -->

<!-- Header -->
				<header id="header" class="">
					<div class="negro">
                        <h1> Info-Trabajo</h1>

			<div class="logo pr"></div> 
			             
			      			 <div class="usuario pr">
			      			 <% if(t_t.equals("j")){      %>
			     		       <div class="fotousu"><a href="perfilj.jsp"><img class="vvv" src="img/<%=fot%>"></a></div>
			     		      <% } else{   if(t_t.equals("e")){     %>
			     		      <div class="fotousu"><a href="perfil.jsp"><img class="vvv" src="img/<%=fot%>"></a></div>
			     		      <%     } }    %>
			            <h3 class="nombreusu"><%out.println(ape1+" "+nom1);%></h3>
			            <a  class="cos" href="cerrar.jsp">Cerrar Sesión</a>
					 </div>
					 
								<div class="tab">
						            <button class="tablinks active" onclick="openCity(event, 'Inicio')">Inicio</button>
						            <button class="tablinks" onclick="openCity(event, 'Notif')">Notificaciones</button>
						            <button class="tablinks" onclick="openCity(event, 'postu')">Postulaciones</button>
						            <button class="tablinks" onclick="openCity(event, 'publi')">Mis Publicaciones</button>
						           <!--  <button class="tablinks" onclick="openCity(event, 'Mensaje')">Mensajes</button> -->
						        </div>
				</header>
    <br><br><br>
    
     <section class="caja100000">
    	<section class="fila123">
            <section class="col12 gris fl hauto pd5">
              	<form name="formun" method="get" action="publ.jsp">
                <section class="w100 fl mr1">
            		 <center><h4 class="josefin pd5">¿Que desea publicar?</h4> </center>
           		
           			 <center><input class="com pd5" name="de" type="text" placeholder="Ingresar Publicacion" value=""> </center>
           			 <br>
           			 <center><input name="btn1" type="submit"  value="Publicar" ></center>
                </section>
                <input  name="pu" type="hidden"  value="">
                </form>
            </section>
        </section>
<div class="koala2"></div>

<!-- Inicio -->
    <div id="Inicio" class="tabcontent pad15" style="display:block;">
    <%
    String btn = request.getParameter("filtro");
    String aa = request.getParameter("campo1");
    String bb = request.getParameter("campo2");
    String dd = request.getParameter("campo4");
  
    String cadena123="";
  //localidad
		if((aa!=null)&&(bb=="")&&(dd=="")){
			cadena123="select * from usuario where lugnac='"+aa+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
			//out.print(cadena123);
		}else if((aa!=null)&&(bb=="")&&(dd!=null)){
			cadena123="select * from usuario where sexo='"+dd+"' and lugnac='"+aa+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
			//out.println(cadena123);
		}else if((aa!=null)&&(bb!=null)&&(dd=="")){
			cadena123="select * from usuario,foraca where usuario.cuil=foraca.cuil and descripcion='"+bb+"' and lugnac='"+aa+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
			//out.println(cadena123);
		} else if((aa!=null)&&(bb!=null)&&(dd!=null)){
			cadena123="select * from usuario,foraca where usuario.cuil=foraca.cuil and descripcion='"+bb+"' and sexo='"+dd+"' and lugnac='"+aa+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
		//	out.println(cadena123);
		}
    
    //area
       //out.println(bb);
	if((aa=="")&&(bb!=null)&&(dd=="")){
		cadena123="select * from usuario,foraca where usuario.cuil=foraca.cuil and descripcion='"+bb+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"' ";
	//out.println(cadena123);
	}else if((aa=="")&&(bb!=null)&&(dd!=null)){
		cadena123="select * from usuario,foraca where usuario.cuil=foraca.cuil and descripcion='"+bb+"' and sexo='"+dd+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
		//out.println(cadena123);
	}
	//sexo
	if((aa=="")&&(bb=="")&&(dd!=null)){
		cadena123="select * from usuario where sexo='"+dd+"' and usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
		//out.println(cadena123);
	}
	if((aa=="")&&(bb=="")&&(dd=="")){
		cadena123="select * from usuario where usuario.email!='"+oso+"' and usuario.tipo_trabajador!='"+t_t+"'";
		//out.println(cadena123);
	}
    if(btn!=null){
    %>
       <section class="col100 hauto fl gris pd5">
        <h1 class="josefin">Resultado del filtrado</h1>
        <HR></HR>
    <%
    try{
    	String t="";
    	tabla=instruccion.executeQuery(cadena123);
    
    	while(tabla.next()){
    		t=tabla.getString(15);
			%>
                <section class="col50 hauto pd5 fl">
            	<section class="col30 logo123 fl"><img class="vvv" src="img/<%out.println(tabla.getString(16));%>"></section>
            	<section class="col80 pd5 fl"><h3 class="josefin pd0">
            		<%out.print(tabla.getString(2)+" "+tabla.getString(3)); 
                     %></h3></section>
					<%if(t.equals("e")){ %>
					   <a href='ver_perfil.jsp?up=<%=tabla.getString(1)%>'><input name="bose" type="button" value="Ver Perfil" class="fl"></a>
            	    <%}else{ if(t.equals("j")){ %>
            	      <a href='ver_perfilj.jsp?up=<%=tabla.getString(1)%>'><input name="bose" type="button" value="Ver Perfil" class="fl"></a>
            	    <%}} %>
            	</section>
            	<%
    		}
    		
    }catch(SQLException e){};	
    
    %></section><%
    }
    %>
    <section class="col80 hauto fr gris pd5">
        <h1 class="josefin"> Publicaciónes</h1>
        <HR></HR>
            <br>
     <%
     
      String cadena122="Select * from publicacion,usuario where usuario.cuil=publicacion.cuil and publicacion.email!='"+oso+"' and publicacion.tipo_trabajador !='"+t_t+"' "; 
    	
     try
    {
		tabla=instruccion.executeQuery(cadena122);
		
        while(tabla.next())
		{	
    %>
          <section class="fl vistausu gris">
                        <section class="imperfil">
                            <section class="perfil fl">
                                 <img src="img/<%out.println(tabla.getString(25));%>" class="vvv">
                            </section>
                        </section>
                        <section class="datos fl">
                            <h1><%
                            out.println(tabla.getString(1)); out.println(tabla.getString(2)); %> </h1>
                            <hr>
                            <h4><%out.println("C.U.I.L:  "+tabla.getString(3));%></h4>
                            <h4><%out.println("Descripcion:  "+tabla.getString(4));%></h4>
                            <h4><%out.println("Fecha:  "+tabla.getString(7));%></h4>
                        
                             <div class="col301 fr">
                             <%if(t_t.equals("j")){ %>
            								<a href='notficaciones.jsp?email=<%=tabla.getString(5)%>'><input name="bose" type="button" value="Me Interesa" class="fl"></a><br><br>
            								<a href='ver_perfil.jsp?up=<%=tabla.getString(5)%>'><input name="bose" type="button" value="Ver Perfil" class="fl"></a>
         							  <%   }else if (t_t.equals("e")) { %>
           <a href='postulacion.jsp?empr=<%=tabla.getString(5)%>&par=<%=tabla.getString(4)%>'><input name="bose" type="button" value="Postularse" class="fl"></a>
           <a href='ver_perfilj.jsp?up=<%=tabla.getString(5)%>'><input name="bose" type="button" value="Ver Perfil" class="fl"></a>
            <%} %>
         </div>   
                        </section>
                    </section>
        <br><br>
	<%
		}
    } catch(SQLException e) {};
	%>        
    </section>
<!-- Termina inicio --><!-- Notificaciones -->
        
        <section class="fila123">
    			<section class="col30 hauto fl gris pd5">
					<form action="inicio.jsp">
					        <h1 class="josefin"> Filtrar</h1>
					        <HR></HR>
					        <section class="col12 pd5">
          							<h4 class="josefin">Localidad:</h4>
							         <select name="campo1">
							  		 	 	<option value="" selected></option> 
											<option value="polvorines" >Polvorines</option>
											<option value="tierras altas" >Tierras altas</option>
										 	<option value="tortuguitas">Tortuguitas</option>
										 	<option value="del viso">Del Viso</option>
										 	<option value="grand bourg">Grand Bourg</option>
									</select>
									<h4 class="josefin">Especialidad:</h4>
						           <select name="campo2">
								  			<option value="" selected></option> 
										  	<option value="value2">Administración</option>
										  	<option value="value3">Ingenieria</option>
										  	<option value="odontologia">odontologia</option>
									</select>
          							
          							<h4 class="josefin">Sexo:</h4>
						            <select name="campo4">
								  			<option value="" selected></option>
											<option value="Masculino">Masculino</option>
											<option value="Femenino">Femenino</option>
									</select>
									<br>
									<br>
									<input class="fr" name="filtro" type="submit" value="filtrar">
        </section>
         </form>
    </section>
      </section>
     </div>
    <div id="Notif" class="tabcontent verde pad15">
        <section class="col100 hauto fl gris pd5">
        <h1 class="josefin"> Notificación</h1>
        <HR></HR>
            <br>
   <%
    String cadena13="SELECT * FROM notificacion,usuario where usuario.cuil=notificacion.cuil and receptor='"+oso+"' ";
    try
    {
		tabla=instruccion.executeQuery(cadena13);
        while(tabla.next())
		{
    %>
            <div class="not pd5">
            <section class="col30 logo123 fl pd0">  <img class="vvv" src="img/<%out.println(tabla.getString(21));%>"> </section>
            
            <section class="col40 pd0 fl"><h5 style="font-size: 8pt"><%out.println(tabla.getString(4));%></h5><h3 class="josefin pd0"><%out.println(tabla.getString(3));%></h3>
                <hr style="width:100%"></section>
        
         <h4 style="font-size: 10pt" class="josefin col40 pd0 ">
                <%out.println(tabla.getString(2));%>
            </h4>
        <div class="col301 fr">
            <a href='borrar.jsp?emi=<%=tabla.getString(2)%>&rec=<%=tabla.getString(1)%>&mot=<%=tabla.getString(3)%>&fec=<%=tabla.getString(4)%>&cui=<%=tabla.getString(5)%>'><input name="borr" type="button"  value="Borrar"></a><br>
      </div>     
     </div>
     <br><br>
	<%
		}
    } catch(SQLException e) {};
	%> 
        </section>  
 </div>

<!-- Termina notificaciones --><!-- Postulados -->
    <div id="postu" class="tabcontent blanco">
        <section class="col100 hauto fl gris pd5">
        	<h1 class="josefin"> Postulaciones</h1>
        	<HR></HR>
        	
   			<%
   		 if(t_t.equals("e")){		
	   			
    			String cadena14="SELECT * FROM postulados,usuario where usuario.cuil=postulados.cuil and empleado='"+oso+"' ";
    			try
    			{
					tabla=instruccion.executeQuery(cadena14);
					
					
					
					
					
					
        			while(tabla.next())
					{
    		%>
          <section class="fl vistausu gris">
                        <section class="imperfil">
                            <section class="perfil fl">
                                     <img class="vvv" src="img/<%out.println(tabla.getString(23));%>"> 
                            </section>
                        </section>
                        <section class="datos fl">
                            <h1><%
                            out.println(tabla.getString(2)); out.println(tabla.getString(6)); %> </h1>
                            <hr>
                            <h4><%out.println("Fecha: "+tabla.getString(3));%></h4>
                            <h4><%out.println("Descripcion:"+tabla.getString(7));%></h4>
                            
                        
                             <div class="col301 fr">
         
         </div>   
                        </section>
                       
                    </section>
                   
        <br><br>
			<%
					}
    			} catch(SQLException e) {};
    			
   		 }else if(t_t.equals("j")){		
	   			
   			String cadena14="SELECT * FROM postulados,usuario where usuario.cuil=postulados.cuil and empleador='"+oso+"' ";
 			try
 			{
					tabla=instruccion.executeQuery(cadena14);
     			while(tabla.next())
					{
 		%>
       <section class="fl vistausu gris">
                     <section class="imperfil">
                         <section class="perfil fl">
                                   <img class="vvv" src="img/<%out.println(tabla.getString(23));%>"> 
                         </section>
                     </section>
                     <section class="datos fl">
                         <h1><%
                         out.println(tabla.getString(1)); out.println(tabla.getString(5)); %> </h1>
                         <hr>
                         <h4><%out.println("Fecha: "+tabla.getString(3));%></h4>
                         <h4><%out.println("Descripcion:"+tabla.getString(7));%></h4>
                          <div class="col301 fr">
      
      </div>   
                     </section>
                    
                 </section>
                
     <br><br>
			<%
					}
 			} catch(SQLException e) {};
 			
		 }
 			%>
    			
         </section>
    </div>
<!-- Termina postulados --><!-- Mensajes -->

<div id="publi" class="tabcontent">
<section class="col100 hauto fl gris pd5">
        <h1 class="josefin"> Mis Publicaciones</h1>
        <HR></HR>
            <br>
 <%
    String cadena12="Select * from publicacion,usuario where usuario.cuil=publicacion.cuil and publicacion.email='"+oso+"'  "; 
 
    try
    {
		tabla=instruccion.executeQuery(cadena12);
        while(tabla.next())
		{
    %>
          <section class="vistausu gris">
                        <section class="imperfil">
                            <section class="perfil fl">
                                    <img src="img/<%out.println(tabla.getString(25));%>" class="vvv">
                            </section>
                        </section>
                        <section class="datos fl">
                            <h1><%out.println(tabla.getString(1)); out.println(tabla.getString(2)); %> </h1>
                            <hr>
                            <h4><%out.println("C.U.I.L:  "+tabla.getString(3));%></h4>
                            <h4><%out.println("Descripcion:  "+tabla.getString(4));%></h4>
                            <h4><%out.println("Fecha:  "+tabla.getString(7));%></h4>
                             <div class="col301 fr">
            <a href='borra1.jsp?emi=<%=tabla.getString(5)%>&desc=<%=tabla.getString(4)%>&cui12=<%=tabla.getString(3)%>&fec12=<%=tabla.getString(7)%> '><input name="bose" type="button"  value="Eliminar"  class="fl"></a><br><br>
         </div>   
                        </section>
                    </section>
        <br><br>
	<%
		}
    } catch(SQLException e) {};
	%>       
    </section>  
    </div>
 <div id="Mensaje1" class="tabcontent">
			        <div class="cont1">
										<%
										String cad = "select * from chat where emisor='"+oso+"';";
										try{tabla=instruccion.executeQuery(cad);
										
										while(tabla.next())
											
										{
											out.print(tabla.getString(3));
											%>
														 <article class="nmd">
												                <button class="nom j tablinks1" onclick="openCity1(event,'<%=tabla.getString(3)%>')">
												                    <%out.print(tabla.getString(3));%>
												                </button>
												          </article>
											
											<%
										}
										}catch(SQLException e){};
											%>
			        </div>
        <div id="prim" class="mlm">
            <div class="hola z100">
            <!------------------------------------asdfasdfasdfas-------------->
            
  <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="msj-viejos">
				
					<span class="contact2-form-title">
						Conversación con Toledo
					</span>
	

					<div class="chat2 validate-input" data-validate = "Message is required">
						<textarea class="input2 coral" name="message" placeholder="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos facere architecto quasi perspiciatis facilis sequi tempore, dicta impedit quidem! Hic cumque, autem eligendi excepturi dolores nemo dolore ut ipsum amet." disabled></textarea>
						
						<span class="focus-input2" data-placeholder="Yo"></span>
					</div>
					
					<div class="chat1 validate-input" data-validate = "Message is required">
						<textarea class="input2 negro" name="message" placeholder="Facilis sequi tempore, dicta impedit quidem! Hic cumque, autem eligendi excepturi dolores nemo dolore ut ipsum amet." disabled></textarea>
						<span class="focus-input2" data-placeholder="Toledo Gabriel"></span>
					</div>

				
			</div>
		</div>
	</div>
<!------------------ nuevo mensaje--------------------->
            
            <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form">
					<span class="contact2-form-title">
						Nuevo mensaje
					</span>

						

					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<textarea class="input2" name="message"></textarea>
						<span class="focus-input2" data-placeholder="Mensaje nuevo..."></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn">
								Enviar Consulta
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
            <!------------------fin formulario----------------------->
            
            </div>
        </div>
        <div id="seg" class="mlm">
                <div class="hola z100">
            <!------------------------------------asdfasdfasdfas-------------->
            
  <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="msj-viejos">
				
					<span class="contact2-form-title">
						Conversación con Luz
					</span>
	

					<div class="chat2 validate-input" data-validate = "Message is required">
						<textarea class="input2 coral" name="message" placeholder="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos facere architecto quasi perspiciatis facilis sequi tempore, dicta impedit quidem! Hic cumque, autem eligendi excepturi dolores nemo dolore ut ipsum amet." disabled></textarea>
						
						<span class="focus-input2" data-placeholder="Yo"></span>
					</div>
					
					<div class="chat1 validate-input" data-validate = "Message is required">
						<textarea class="input2 negro" name="message" placeholder="Facilis sequi tempore, dicta impedit quidem! Hic cumque, autem eligendi excepturi dolores nemo dolore ut ipsum amet." disabled></textarea>
						<span class="focus-input2" data-placeholder="Toledo Gabriel"></span>
					</div>

				
			</div>
		</div>
	</div>
<!------------------ nuevo mensaje--------------------->
            
            <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form">
					<span class="contact2-form-title">
						Nuevo mensaje
					</span>

						

					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<textarea class="input2" name="message"></textarea>
						<span class="focus-input2" data-placeholder="Mensaje nuevo..."></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn">
								Enviar mensaje
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
        </div>
        </div>
        <div id="terc" class="mlm">
              <div class="hola z100">
            <!------------------------------------asdfasdfasdfas-------------->
            
  <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="msj-viejos">
				
					<span class="contact2-form-title">
						Conversación con Insa
					</span>
					<div class="chat2 validate-input" data-validate = "Message is required">
						<textarea class="input2 coral" name="message" placeholder="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos facere architecto quasi perspiciatis facilis sequi tempore, dicta impedit quidem! Hic cumque, autem eligendi excepturi dolores nemo dolore ut ipsum amet." disabled></textarea>
						
						<span class="focus-input2" data-placeholder="Yo"></span>
					</div>
					
					<div class="chat1 validate-input" data-validate = "Message is required">
						<textarea class="input2 negro" name="message" placeholder="Facilis sequi tempore, dicta impedit quidem! Hic cumque, autem eligendi excepturi dolores nemo dolore ut ipsum amet." disabled></textarea>
						<span class="focus-input2" data-placeholder="Toledo Gabriel"></span>
					</div>
			</div>
		</div>
	</div>
<!------------------ nuevo mensaje--------------------->
            
            <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form">
					<span class="contact2-form-title">
						Nuevo mensaje
					</span>
					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<textarea class="input2" name="message"></textarea>
						<input class="focus-input2" data-placeholder="Mensaje nuevo...">
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn">
								Enviar Mensaje
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
        </div>
        </div>
</div>
<!-- Termina mensajes --><!-- Script -->
</section>
    <script>
        function openCity1(evt, cityName) {
            var i, mlm, tablinks1;
            mlm = document.getElementsByClassName("mlm");
            for (i = 0; i < mlm.length; i++) {
                mlm[i].style.display = "none";
            }
            tablinks1 = document.getElementsByClassName("tablinks1");
            for (i = 0; i < tablinks1.length; i++) {
                tablinks1[i].className = tablinks1[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }
    
        function openCity(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }
    </script> 
    
    <!--===============================================================================================-->
	<script src="ContactFrom_v2/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="ContactFrom_v2/vendor/bootstrap/js/popper.js"></script>
	<script src="ContactFrom_v2/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="ContactFrom_v2/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
<!-- Termina script -->
</body>
</html> 