<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registrador</title>
	 
	<script type="text/javascript">
	
	function ver(){
		
		
		alert("debe ingresar la primer letra con mayuscula y superar los 8 caracteres");
	}1
	
	function cont(){
		
		var cu=formu.cuil.value;
		var n=formu.nom.value;
		var s=formu.nom.value;
		var v;
		var x;
		var s1;
		var a=formu.ape.value;
		var dn=formu.dni.value;
		var v_d_c=cu.split("-");
		var p1=v_d_c[0];
		var p2=v_d_c[1];
		var p3=v_d_c[2];
		var c0=formu.pass.value;
		var c1=formu.pass1.value;
		var tt=formu.tt.value;
		var ve;
		var t1=tt.length;
		var q=n.length;
		var l=a.length;
		var ss=s.length;
		var cc = c0.length;
         v=n.substring(0,1);
         v=v.toUpperCase();
         v=v+(n.substring(1,q));
         formu.nom.value=v;
         x=a.substring(0,1);
         x=x.toUpperCase();
         x=x+(a.substring(1,l));
         formu.ape.value=x;
         //sexo
         //s1=s.substring(0,1);
         //s1=s1.toUpperCase();
         //s1=s1+(s.substring(1,ss));
         //formu.ape.value=s1;
         //alert(s1);
	 if((p2==dn)&&(c0==c1)){
			ve="si"; 
    	 	//alert("DNI y CUIL no coinciden ");
	 }
     else{
    	 if(p2!=dn){
    	   	ve="no";
    	    alert("El DNI y C.U.I.L no coinciden");		
    	    }
    	 else{
	         if(c0!=c1){
		       ve="no"; 
 		       alert("Las Contraseñas no coinciden");
			  }
    	   }
     }
       formu.veri.value=ve; 
	}
	
	
	</script>
	 
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" type="image/png" href="img/logo1.png"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main1.css">
</head>
<body background-images="images/banner.jpg">
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
	out.print(canal);
	%>
	
	<div class="limiter">
		<div class="container-login100">
            
            <!-- Header -->
				<header id="header" class="alt">
					<div class="neg">
                        <h1> Info-Trabajo</h1>
					    <nav id="nav">
						  <ul>	
						  <li><a href="index1.html">Volver</a></li>	
							<li>
								<a href="#" class="icon ">Opcion</a>
								<ul>
									
									<li><a href="contact.html">Contacto</a></li>
									
									<li>
										<a href="#">Detalles</a>
										<ul>
											<li><a href="que.html">¿Que es?</a></li>
											<li><a href="como.html">¿Como se usar?</a></li>
											<li><a href="para.html">Preguntas Frecuentes</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="#" class="button">Acerca de</a></li>
						</ul>
					   </nav>
                    </div>
				</header>
            <div class="neg2"></div>
			<div class="wrap-login100">
				<form name="formu" method="post" action="reg.jsp" class="login100-form validate-form">
				
					<span class="login100-form-title p-b-26">
						Registro
					</span>
					<span class="login100-form-title p-b-48">
						<img src="" class="">
					</span>

					<div class="wrap-input100 validate-input" data-validate ="email valido es: a@b.c">
						<input class="input100" type="email" name="email" >
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Introducir la contraseña">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input onclick="ver();" class="input100" type="password" name="pass"  minlength="8" pattern="[A-Z]+.{2,20}" title="Debe tener una o mas mayusculas al comienzo  Tiene que superar los 8 caracteres  ">
						
						<span  class="focus-input100" data-placeholder="Contraseña"></span>
					</div>
                    
                    <div class="wrap-input100 validate-input" data-validate="Introducir la contraseña">

						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" minlength="8"  name="pass1"  minlength="8" pattern="[A-Z]+.{2,20}" >
						<span class="focus-input100" data-placeholder="Repita Contraseña"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Introducir el Nombre">
						<span class="btn-show-pass">
							
						</span>
						<input class="input100" type="text" name="nom" >
						<span class="focus-input100" data-placeholder="Nombre"></span>
					</div>
				
					<div class="wrap-input100 validate-input" data-validate="Introducir el Apellido">
						<span class="btn-show-pass">
						
						</span>
						<input class="input100" type="text" name="ape">
						<span class="focus-input100" data-placeholder="Apellido"></span>
					</div>
				    <div class="wrap-input100 validate-input" data-validate="Introducir el Sexo">
						<span class="btn-show-pass">
				
						</span>
						
						<span class="focus-input100" data-placeholder="Sexo"></span>
						<br>
						Masculino<input  type="radio" name="sexo" value="masculino" >
						<br>
						Femenino<input  type="radio" name="sexo" value="femenino" >
					</div>
					<div class="wrap-input100 validate-input" data-validate = "introducir el C.U.I.L">
						<span class="btn-show-pass">
				
						</span>
						<input class="input100" type="text" name="cuil" pattern="[0-9]{2}[-][0-9]{8}[-][0-9]{1}" title="El DNI debe estar encerrado con'-'(ejemplo 12-12345678-5)">
						<span class="focus-input100" data-placeholder="CUIL(ejemplo 12-12345678-5)"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Introducir el D.N.I" >
						<span class="btn-show-pass">
				
						</span>
						<input class="input100" type="text" name="dni" >
						<span class="focus-input100" data-placeholder="DNI"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Introducir el T-TRABAJO">
						<span class="btn-show-pass">
				
						</span>
						
						<span class="focus-input100" data-placeholder="Seleccione"></span>
						<br>
						Empleador<input  type="radio" name="tt" value="j" >
						<br>
						Empleado<input  type="radio" name="tt" value="e" >
					</div>
					
					<input name="otro" type="hidden" >

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<input name="val" type="hidden" value="si">
							<input name="veri"   type="hidden" >
							<input name="btn"  onclick="cont()" type="submit" class="login100-form-btn">
							
							
						</div>
					</div>

					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>
			<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
			
			<%
			
			String ema = request.getParameter("email");
			String ape = request.getParameter("ape");
			String nom = request.getParameter("nom");
			String cuil = request.getParameter("cuil");
			String pas = request.getParameter("pass");
			String s = request.getParameter("sexo");
			String pas1 = request.getParameter("pass1");
			String dni = request.getParameter("dni");
			String tt = request.getParameter("tt");
			String v1=request.getParameter("veri");
			String todok="";
			
			if(v1.equals("si")){
			 String cadena= "INSERT INTO usuario (`email`, `ape`, `nom`, cuil, `pass` , `dni`,tipo_trabajador,sexo,img) VALUES ('"+ema+"', '"+ape+"', '"+nom+"', '"+cuil+"', '"+pas+"', '"+dni+"','"+tt+"','"+s+"','avatar (2).jpg');";
			 todok="ok";
			 %>
			 <script type="text/javascript">
			 alert("Usuario Registrado");
			 </script>
			 
			 <%
			 
			
			  
			 try{
				int n = instruccion.executeUpdate(cadena);
				
				%>
				
				<a  class="cos neg" href="index1.html">volver</a><%
			 }catch(SQLException e){};
			 
		   }
			else{
				
				todok="no";
				out.print("no coinciden ");
				
			}
			
			%>
			
</body>
</html>