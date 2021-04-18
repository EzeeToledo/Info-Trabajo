<%@ page import="java.text.DateFormat" %>
<%@ page import="java.io.*, java.util.*, java.net.*, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	String ape1="",numdi="",nom1="",lugnac="",fecnac="",estciv="",direc="",tel="",cu="",cp="",paisor="",sexo="",pass="";
	int c=0;
	String dni="";
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
		}
		} catch(SQLException e) {};
%>
    <header id="header" class="">
        <div class="negro">
            <h1>Info-Trabajo</h1>
			<div class="logo pr"></div>
            <div class="usuario pr">
            	<a href="perfil.jsp"><article class="fotousu"></article></a>
			    <h3 class="nombreusu"><%out.println(ape1+" "+nom1);%></h3>
			    <a  class="cos" href="cerrar.jsp">Cerrar Sesión</a>
            </div>
            <a class="eso" href="inicio.jsp">volver</a>
        </div>
    </header>
    <br><br>
<!---------- Imagen ---------->
    <section class="fila pr">
        <div class="contenedor">
            <div class="c-ima"> <img src="#" class="ima"></div>
            <input name="" class="ma" disabled type="text" value='<%out.println(ape1+" "+nom1);%>'>
        </div>
    </section>
    <section class="agarratodo">
<!---------- Publicaciones https://na.static.mega.co.nz/3/---------->
        <section class="fila pr">
            <div>
                <form name="" method="get" action="perfil.jsp">
                    <center>
                        <input class="com" name="de" type="text" placeholder="
                        Ingrese Publicacion" value="">
                    </center>
                    <br>
                    <input  name="pu" type="hidden">
                    <center><input name="btn1" type="submit"  value="Publicar"></center>
                </form>
            </div>
        </section>
        <%
        String d = request.getParameter("de");
        java.util.Calendar fecha=java.util.Calendar.getInstance();
        java.util.Calendar calendario=java.util.Calendar.getInstance();
        java.util.Date fech=calendario.getTime();
        DateFormat formateador=DateFormat.getInstance();
        DateFormat formatedorFecha=new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        out.print(formatedorFecha.format(fech));
        String le=formatedorFecha.format(fech);
        if(d!=null){
        	
        	String cad= "INSERT INTO publicacion (`ape`, `nom`, `cuil`, `descr`, `email`,`dni`,`fecha`) VALUES ('"+ape1+"', '"+nom1+"', '"+cu+"', '"+d+"', '"+oso+"', '"+dni+"', '"+le+"');";
        	out.print(cad);
        	try{
        		int n = instruccion.executeUpdate(cad);
        		out.print("publicado");
        	}catch(SQLException e){};	
        }
        d="";
        sesionOk.setAttribute("cuil",cu);
		String cadena6 ="Select * From usuario where usuario.email='"+oso+"' ";
		int cont=1;
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
<!---------- Informacion Personal ---------->
        <div class="con">
            <div class="con"><label class="titulo">Información Personal</label></div>
            <div class="con">
            <form method="get" action="modifi.jsp">
                <table>
                    <tr>
                        <td class="colornegro">Nacionalidad</td>
                        <td class="colornegro">Dirección</td>
                        <td class="colornegro">Localidad</td>
                        <td class="colornegro">C.P.</td>
                        <td class="colornegro">Tel/Cel</td>
                        <td class="colornegro"></td>
                    </tr>
                    <tr>
                    <%if (paisor!=null){ %>
                        <td class="colornegro"><input name="nac" type="text" value='<%out.println(paisor);%>'></td>
                    <%} else { %>
                    	<td class="colornegro"><input name="nac" type="text" value="" placeholder='Argentina'></td>
                    <%} if (direc!=null){%>
                        <td class="colornegro"><input name="dir" type="text" value='<%out.println(direc);%>'></td>
                    <%} else { %>
                    	<td class="colornegro"><input name="dir" type="text" value="" placeholder='Las Camelias 1500'></td>
                    <%} if (lugnac!=null){%>
                        <td class="colornegro"><input name="loc" type="text" value='<%out.println(lugnac);%>'></td>
                    <%} else { %>
                        <td class="colornegro"><input name="loc" type="text" value="" placeholder='Tortuguitas'></td>
              		<%} if (cp!=null){%>
                        <td class="colornegro"><input name="cp" type="text" value='<%out.println(cp);%>'></td>
                    <%} else { %>
                    	<td class="colornegro"><input name="cp" type="text" value="" placeholder='1667'></td>
                    <%} if (tel!=null){%>
                    	<td class="colornegro"><input name="tel" type="text" value='<%out.println(tel);%>'></td>
                    <%} else { %>
                    	<td class="colornegro"><input name="tel" type="text" value="" placeholder='11-15789010'></td>
                    <%} if (paisor!=null || direc!=null || lugnac!=null || cp!=null || tel!=null){%>
                        <td class="colornegro tamtd">
                            <a href="modif.jsp"><img src="img/61391.png" class="imatabla"></a>
                        </td>
                    <%} else { %>
                    	<td class="colornegro tamtd">
                            <a href="cargar.jsp"><img src="img/69211.svg" class="imatabla"></a>
                        </td>
                    <%} %>
                    </tr>
                    </form>
                </table>
                <%		}
					} catch(SQLException e) {};
				%>
            </div>
        </div>
<!---------- Formacion Academica ---------->
        <div class="con">
            <div class="con"><label class="titulo">Formación Académica</label></div>
            <div class="con">
                <table>
                    <tr>
                        <td class="colornegro">Institución</td>
                        <td class="colornegro">Carrera</td>
                        <td class="colornegro">Desde</td>
                        <td class="colornegro">Hasta</td>
                        <td class="colornegro"></td>
                    </tr>
                    <form action="cargar1.jsp" method="get">
                    <tr>
                        <td class="colornegro"><input name="des" type="text" value=""></td>
                        <td class="colornegro"><input name="des" type="text" value=""></td>
                        <td class="colornegro"><input name="des" type="date" value=""></td>
                        <td class="colornegro"><input name="des" type="date" value=""></td>
                        <td class="colornegro tamtd">
                            <a href="cargar.jsp"><img src="img/69211.svg" class="imatabla"></a>
                        </td>
                    </tr>
                    </form>
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
					<tr>
                        <td class="colornegro">Institución</td>
                        <td class="colornegro">Carrera</td>
                        <td class="colornegro">Desde</td>
                        <td class="colornegro">Hasta</td>
                        <td class="colornegro"></td>
                    </tr>
                <form method="get" action="modif1.jsp">
                    <tr>
                        <td class="colornegro"><input name="ins" type="text" value='<%out.println(lug+cont);%>'></td>
                        <td class="colornegro"><input name="car" type="text" value='<%out.println(desc+cont);%>'></td>
                        <td class="colornegro"><input name="des" type="text" value='<%out.println(fecini+cont);%>'></td>
                        <td class="colornegro"><input name="has" type="text" value='<%out.println(fecfin+cont);%>'></td>
                        <td class="colornegro tamtd">
                        <input name="hid" type="hidden" value='<%out.println(cont);%>'>
                            <a href="modifi1.jsp"><img src="img/69211.svg" class="imatabla"></a>
                        </td>
                        <%cont++;%>
                    </tr>
                </form>
                <%		}
					} catch(SQLException e) {};
				%>
                </table>
            </div>
        </div>
<!---------- Idiomas 
        <div class="con">
            <div class="con"><label class="titulo">Idiomas</label></div>
            <div class="con">
                <table>
                    <tr>
                        <td class="colornegro"><b>Lugar</b></td>
                        <td class="colornegro">Idioma</td>
                        <td class="colornegro">Nivel</td>
                        <td class="colornegro">Desde</td>
                        <td class="colornegro">Hasta</td>
                        <td class="colornegro"></td>
                    </tr>
                    <tr>
                        <td class="colornegro"></td>
                        <td class="colornegro"></td>
                        <td class="colornegro"></td>
                        <td class="colornegro"></td>
                        <td class="colornegro"></td>
                        <td class="colornegro tamtd">
                            <a href><img src="img/69211.svg" class="imatabla"></a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
<!---------- Experiencia Laboral ---------->
        <div class="con">
            <div class="con"><label class="titulo">Experiencia Laboral</label></div>
            <div class="con">
                <table>
                    <tr>
                        <td class="colornegro">Lugar</td>
                        <td class="colornegro">Puesto</td>
                        <td class="colornegro">Cont Ref</td>
                        <td class="colornegro">Desde</td>
                        <td class="colornegro">Hasta</td>
                        <td class="colornegro"></td>
                    </tr>
                    <tr>
                        <td class="colornegro"><input name="des" type="text" value=""></td>
                        <td class="colornegro"><input name="des" type="text" value=""></td>
                        <td class="colornegro"><input name="des" type="text" value=""></td>
                        <td class="colornegro"><input name="des" type="date" value=""></td>
                        <td class="colornegro"><input name="des" type="date" value=""></td>
                        <td class="colornegro tamtd">
                            <a href><img src="img/69211.svg" class="imatabla"></a>
                        </td>
                    </tr>
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
					<tr>
                        <td class="colornegro">Institución</td>
                        <td class="colornegro">Carrera</td>
                        <td class="colornegro">Cont Ref</td>
                        <td class="colornegro">Desde</td>
                        <td class="colornegro">Hasta</td>
                        <td class="colornegro"></td>
                    </tr>
                <form method="get" action="modifi2.jsp">
                    <tr>
                        <td class="colornegro"><%out.println(lug2);%></td>
                        <td class="colornegro"><%out.println(pue);%></td>
                        <td class="colornegro"><%out.println(tar);%></td>
                        <td class="colornegro"><%out.println(feci);%></td>
                        <td class="colornegro"><%out.println(fecf);%></td>
                        <td class="colornegro tamtd">
                            <a href><img src="img/69211.svg" class="imatabla"></a>
                        </td>
                    </tr>
                </form>
                <%		}
					} catch(SQLException e) {};
				%>

                </table>
            </div>
        </div>
</body>
</html>