<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="EESTN3 - Malvinas Argentinas" />
    <title>Registrador</title>
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
    <link rel="stylesheet" href="css/maqueta.css">
    <link rel="stylesheet" href="css/vistausu.css">
    <link rel="stylesheet" href="css/noti.css">
<!--===============================================================================================-->
<title>Insert title here</title>
</head>
<body>
<!-- Header -->
    <header class="menu pr gris">
        <div class="logo pr"></div>
        <div class="usuario pr">
            <a href="perfil.html"> <article class="fotousu"></article></a>
            <h3 class="nombreusu">Pepito Insaurralde</h3>
            <h5>Cerrar Sesión</h5>
        </div>
        <div class="tab">
            <button class="tablinks " onclick="openCity(event, 'Inicio')">Inicio</button>
            <button class="tablinks" onclick="openCity(event, 'Notif')">Notificaciones</button>
            <button class="tablinks" onclick="openCity(event, 'postu')">Postulaciones</button>
            <button class="tablinks" onclick="openCity(event, 'Mensaje')">Mensajes</button>
        </div>
    </header>
    <br>
<!-- Termina header
    <a href="#openmodal" class="open"><img class="luz" src="img/filter.png"></a>
<!-- Filtro de busqueda
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
                <option value="lugar">Diseño</option>
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
    
    <section class="caja100000">
        
      <section class="fila123">
            <section class="col12 gris fl hauto pd5">
                  <h1 class="josefin"> Nueva Búsqueda</h1>
                <HR></HR>
                <section class="w50 fl">
            <h4 class="josefin pd0">Tipo de Empleo:</h4>
           <input type="text" placeholder="zona laburo">
                </section>
                <section class="w50 fl mr1">
            <h4 class="josefin pd0">Zona de Empleo:</h4>
           <input type="text" placeholder="zona laburo">
                </section>
                <center>
                <input type="submit" class="buscar josefin" value="BUSCAR"></center>
                </section>
               
           </section>
        
    
<!-- Inicio -->
   
    <div id="Inicio" class="tabcontent celeste">
                    <section class="vistausu gris">
                        <section class="imperfil">
                            <section class="perfil fl">
                                    <img src="DSCF5264.jpg" width="100%;">
                            </section>
                        </section>
                        <section class="datos fl">
                            <h1>MAXIMILIANO ARRUABARRENA</h1>
                            <hr>
                            <h4>perrito@gmail.com</h4>
                            <h4>perrito@gmail.com</h4>
                            <a href="#vermas">+ver más</a>
                        </section>
                       
                    </section>
        <br>
        
         <section class="vistausu gris">
                        <section class="imperfil">
                            <section class="perfil fl">
                                    <img src="DSCF5264.jpg" width="100%;">
                            </section>
                        </section>
                        <section class="datos fl">
                            <h1>MAXIMILIANO ARRUABARRENA</h1>
                            <hr>
                            <h4>perrito@gmail.com</h4>
                            <h4>perrito@gmail.com</h4>
                            <a href="#vermas">+ver más</a>
                        </section>
                       
                    </section>
        <br>
    </div>

<!-- Termina inicio --><!-- Notificaciones -->
        
        <section class="fila123">
    <section class="col30 hauto fl gris pd5">

        <h1 class="josefin"> Filtrar</h1>
        <HR></HR>
        <section class="col12 pd5">
           <h4 class="josefin">Zona de trabajo:</h4>
           <input type="text" placeholder="zona laburo">
<h4 class="josefin">Área:</h4>
           <input type="text" placeholder="zona laburo">
           <h4 class="josefin">Puesto:</h4>
           <input type="text" placeholder="zona laburo">
           <h4 class="josefin">Salario:</h4>
           <input type="text" placeholder="zona laburo">
           
                   <h3 class=" boton josefin fr">APLICAR</h3>
           
            

        </section>
    </section>
        </section>
        
        
        
        
    <div id="Notif" class="tabcontent verde pad15">
       
        
        <section class="col100 hauto fl gris pd5">
        <h1 class="josefin"> Notificacion</h1>
        <HR></HR>
            <br>
        <div class="not pd5">
            <section class="col30 logo123 fl pd5"></section>
            
            <section class="col40 pd0 fl"><h5 style="font-size: 8pt">21-04-2000 | 15:30 hs </h5><h3 class="josefin pd0">EVERLAST y asociados </h3>
                <hr style="width:100%"></section>
        
         <h4 style="font-size: 10pt" class="josefin col40 pd0 ">
                se le comunica que la empreza "que te importa " lo han echado por boludo
            </h4>
        <div class="col301 fr">
            <a href="*"><input name="bose" type="button" value="Borrar"></a><br>
            <a href="*"><input name="bose" type="button" value="marcar leido"></a><br><br>
            <a href="*"><input name="bose" type="button" value="responder"></a><br>
           
         </div>   
            
        </div>
            
                  
    
        </section>
       
    </div>
<!-- Termina notificaciones --><!-- Postulados -->
    <div id="postu" class="tabcontent blanco pad10p">
       
          <section class="col100 hauto fl gris pd5">
        <h1 class="josefin"> Postulaciones</h1>
        <HR></HR>
        <!------------POSTULACIONES---------->
        <section class="col50 hauto pd5 fl">
            <section class="col30 logo123 fl pd5"></section>
            <section class="col80 pd5 fl"><h3     class="josefin pd0">EVERLAST y asociados </h3>
            <hr style="width:100%">
            <h4 class="josefin pd0">
                Analista Junior<br>
                Fecha: 15-08-2018
            </h4>
            <h5 class="fl mr5">+ver más</h5><h5 class="fl">- anular match</h5>
            </section></section>
         <!------------FIN POSTULACIONES---------->
                 <!------------POSTULACIONES---------->
        <section class="col50 hauto pd5 fl">
            <section class="col30 logo123 fl pd5"></section>
            <section class="col80 pd5 fl">
                <h3     class="josefin pd0">EVERLAST y asociados </h3>
            <hr style="width:100%">
            <h4 class="josefin pd0">
                Analista Junior<br>
                Fecha: 15-08-2018
            </h4>
            <h5 class="fl mr5">+ver más</h5><h5 class="fl">- anular match</h5>
            </section>
            </section>
         <!------------FIN POSTULACIONES---------->
               <!------------POSTULACIONES---------->
        <section class="col50 hauto pd5 fl">
            <section class="col30 logo123 fl pd5"></section>
            <section class="col80 pd5 fl">
                <h3     class="josefin pd0">EVERLAST y asociados </h3>
            <hr style="width:100%">
            <h4 class="josefin pd0">
                Analista Junior<br>
                Fecha: 15-08-2018
            </h4>
            <h5 class="fl mr5">+ver más</h5><h5 class="fl">- anular match</h5>
            </section>
            </section>
         <!------------FIN POSTULACIONES---------->
              

            </section>
   
        
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
    </section>
</body>
</html>