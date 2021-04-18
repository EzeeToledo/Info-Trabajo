<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
   				
       
     
      
        

 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="EESTN3 - Malvinas Argentinas" />
    <title>InfoTrabajo</title>
    <link rel="stylesheet" href="css/stail.css">
    <link rel="stylesheet" href="css/solapa.css">
    <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="ContactFrom_v2/images/icons/favicon.ico"/>
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
<!--===============================================================================================-->
 
</head>
<body>
<!-- Header -->
    <header class="menu pr">
        <div class="logo pr"></div>
        <div class="usuario pr">
            <a href="perfil.html"> <article class="fotousu"></article></a>
            <h3 class="nombreusu">Pepito Insaurralde</h3>
            <h5>Cerrar SesiÃ³n</h5>
        </div>
        <div class="tab">
            <button class="tablinks " onclick="openCity(event, 'Inicio')">Inicio</button>
            <button class="tablinks" onclick="openCity(event, 'Notif')">Notificaciones</button>
            <button class="tablinks" onclick="openCity(event, 'postu')">Postulaciones</button>
            <button class="tablinks" onclick="openCity(event, 'Mensaje')">Mensajes</button>
        </div>
    </header>
    <br>
<!-- Termina header -->
    <a href="#openmodal" class="open"><img class="luz" src="img/filter.png"></a>
<!-- Filtro de busqueda -->
    <div id="openmodal" class="base">
        <form method="get" class="formulario" action="#">
            <div class="">
                <a href="#close" class="close">X</a><br>
                <j class="asd">Lugar de Trabajo:</j><br>
                <select name="select" class="select1">
                    <option value="lugar">Lugar</option> 
                </select>
            </div>
            
            <div class="">
                <j class="asd">Salario:</j><br>
                <input class="num" type="number" name="">
            </div>
            
            <j class="asd">Area:</j><br>
            <select name="select" class="select1">
                <option value="lugar">Tipo de Area</option> 
                <option value="lugar">DiseÃ±o</option>
                <option value="lugar">Enfermeria</option>
                <option value="lugar">ventas y negocios</option>
                <option value="lugar">Farmacias</option>
            </select>
            
            <j class="asd">Tipo de Puesto:</j><br>
            <select name="select" class="select1">
                <option value="lugar">Tipo de Puesto</option> 
                <option value="lugar">Fines de Semana</option>
                <option value="lugar">Pasantias</option>
                <option value="lugar">Por Contrato</option>
                <option value="lugar">Primer Empleo</option>
            </select>
            <br><br>
            <input name="" type="submit" value="buscar">
        </form> 
    </div>
<!-- Termina filtro de busqueda -->
    <div class="cont">
        <input name="" type="search" value="">
    </div>
<!-- Inicio -->
    <div class="fav"></div>
    <div id="Inicio" class="tabcontent celeste"><br>
        <div class="publi">
            <div class="fto h"></div>
            <div class="nom h">
                <input class="nya" name="" type="text" disabled value="Toledo">
                <input class="nya" name="" type="text" disabled value="Gabriel">
                <br><br>
                <input class="ny" name="" type="text" disabled value="toledo@hotmail.com">
                <input class="ny" name="" type="text" disabled value="20-42411647-6">
                <input class="ny" name="" type="text" disabled value="21-4-2000">               
            </div>
        </div> 
        <br><hr>
    </div>
<!-- Termina inicio --><!-- Notificaciones -->
    <div id="Notif" class="tabcontent verde pad15">
        <div class="w100">
            <div class="w10 h2 fl">
                <div class="fto2 h2"></div>
            </div>
            <div class="w90 h2 fr pad10">
                <div class="w80 fl"><p><h4>Nombre de la Persona</h4></p></div>
                <div class="w20 fr"><p>xx/xx/xx</p></div>
                <div class="w100 pad5 tecxt fl"><p>Razon de la notificacion</p></div>
            </div>
        </div>
        <!--<div class="w100pad pad0">
            <div class="fto2 h2"></div>
            <div class="publi2">
                <div class="nom2 h2">
                    <div class="w80 fl"><p><h4>Nombre de la Persona</h4></p></div>
                    <div class="w20 fr"><p>xx/xx/xx</p></div>
                    <div class="w100 pad5 fl"><p>Razon de la notificacion</p></div>
                </div>
            </div>
        </div>-->
        <br><hr>
    </div>
<!-- Termina notificaciones --><!-- Postulados -->
    <div id="postu" class="tabcontent blanco pad10p">
        <div class="w33 ha fl">
            <div class="w100 h22 centrar fl">
                <div class="fto3 h22"></div>
            </div>
            <div class="w100 h2 pad10 fl">
                <div class="w80 fl"><p><h5>Titulo</h5></p></div>
                <div class="w20 tecxt2 fr"><p>xx/xx/xx</p></div>
                <div class="w100 pad5 tecxt2 fl"><p>A que se postulo</p></div>
            </div>
        </div>
        <div class="w33 ha fl">
            <div class="w100 h22 centrar fl">
                <div class="fto3 h22"></div>
            </div>
            <div class="w100 h2 pad10 fl">
                <div class="w80 fl"><p><h5>Titulo</h5></p></div>
                <div class="w20 tecxt2 fr"><p>xx/xx/xx</p></div>
                <div class="w100 pad5 tecxt2 fl"><p>A que se postulo</p></div>
            </div>
        </div>
        <div class="w33 ha fl">
            <div class="w100 h22 centrar fl">
                <div class="fto3 h22"></div>
            </div>
            <div class="w100 h2 pad10 fl">
                <div class="w80 fl"><p><h5>Titulo</h5></p></div>
                <div class="w20 tecxt2 fr"><p>xx/xx/xx</p></div>
                <div class="w100 pad5 tecxt2 fl"><p>A que se postulo</p></div>
            </div>
        </div>
    </div>
<!-- Termina postulados --><!-- Mensajes -->
    <div id="Mensaje" class="tabcontent">
        <div class="cont1">
            <article class="nmd">
                <button class="nom j tablinks1" onclick="openCity1(event, 'prim')">
                    Toledo
                </button>
            </article>
            <article class="nmd">
                <button class="nom j tablinks1" onclick="openCity1(event, 'seg')">luz godoy</button> 
            </article>
            <article class="nmd">
                <button class="nom j tablinks1" onclick="openCity1(event, 'terc')">insa</button> 
            </article>
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
					<%
					Connection canal = null; 
					ResultSet tabla= null; 
					Statement instruccion=null; 
					String strcon = "jdbc:mysql://localhost:3306/test?user=root&password=admin"; 
					String cadSQL = ""; 

					   try  
					      { Class.forName("com.mysql.jdbc.Driver").newInstance(); 
					        canal=DriverManager.getConnection(strcon); 
					        instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
					        ResultSet.CONCUR_UPDATABLE); 
					      } catch(java.lang.ClassNotFoundException e){} catch(SQLException e) {}; 
					int idm=1; 
					String idu="1";
					String msj=request.getParameter("mensaje");
					
					String res="INSERT INTO `test`.`mensajes` (`id_msj`, `msj`, `id_usu`) VALUES ('"+idm+"', '"+msj+"', '"+idu+"');";
					
					try  
			          {
			        
			            int n=0;
			        	 	n=instruccion.executeUpdate(res); 		          			          	
			          	 
			          }catch(SQLException e) {};
					
					String res2="SELECT msj FROM mensajes WHERE id_msj='"+idm+"' and id_usu='"+idu+"';";
					
					
					try{
					tabla=instruccion.executeQuery(res2);
					
					
					if(tabla.next()){
						
						
						
						%>
						<div class="chat2 validate-input" data-validate = "Message is required">
						<textarea class="input2 coral" name="message" placeholder=<%out.println(tabla.getString(1)); %> disabled></textarea>
						
						<span class="focus-input2" data-placeholder="Yo"></span>
					</div>
					<%
					}
					
					}catch(SQLException e) {};
					
				
					%>

				
						
						
			</div>
		</div>
	</div>

            
            <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form" name="msj" action="perfil - Copy.jsp">
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
								Enviar
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

            
          
            
            </div>
        </div>
        <div id="seg" class="mlm">
                <div class="hola z100">
            <!------------------------------------asdfasdfasdfas-------------->
            
  <div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="msj-viejos">
				
					<span class="contact2-form-title">
						ConversaciÃ³n con Luz
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
								Enviar
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
						ConversaciÃ³n con Insa
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
								Enviar
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
        </div>
        </div>
    
<!-- Termina mensajes --><!-- Script -->
    <script>
        function openCity1(evt, cityName) {
            var i, mlm, tablinks;
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