<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Administracion</title>
<link rel="shortcut icon" href="https://i.ibb.co/wcwqp98/banco.png">

<!--Bootstrap-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<!--Estilos propios-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/Estilos/PrincipalADM.css" />
</head>
<body>



<nav class="navbar navbar-expand-lg navbar-light  bg-dark text-white-50">

          <a class="navbar-brand" style="color: white" href="#">Home Bank</a>


        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="PrincipalADM.jsp" style="color:white">Inicio <span class="sr-only">(current)</span></a>
                </li>
                 <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" style="color: white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administrar clientes
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="ABMclientes.jsp">ABM Clientes</a>
          <a class="dropdown-item" href="#">Apertura de cuentas</a>
        </div>
      </li>
      <li class="nav-item active">
                    <a class="nav-link" href="#" style="color:white">Reportes <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
  
       <span id="perfil" class="navbar-text" style="padding: 10px">
            <a href="#">
                <img
                    src="https://i.ibb.co/Xzbf1pS/usuario.png" />
            </a>
            Perfil
        </span>
         <span id="salir" class="navbar-text">
            <a href="Login.jsp">
                <img
                    src="https://i.ibb.co/TcV6LW4/salir-arriba-a-la-derecha.png" />
            </a>
           	Salir
        </span>
    </nav>
    
</div>


  
<div class="container mt-3">
<div class="footer-siempre-abajo" style="background-color:white">
  <h2>Se podra ver una lista de los prestamos solicitados dentro de los 5 dias</h2>
  <p>la idea de esto es poder dar una vista rapida a una tarea importante del administrador con sus usuarios. tendra un filtro rapido 
  	 para ver el estado de cada uno.</p>  
  <input class="form-control" id="myInput" type="text" placeholder="">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>Cuenta</th>
       <th>Importe solicitado</th>
        <th>Fecha</th>  
        <th>Cantidad de cuotas</th> 
        <th>Motivo del préstamo.</th>
        <th>Estado</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
      <td>00356555154/5</td>
        <td>50.000</td>
        <td>05/02/2020</td>
        <td>24</td>
        <td>Refacción de inmueble</td>
        <td>Rechazado</td>
      </tr>
      <tr>
      <td>00356555154/4</td>
        <td>30.000</td>
        <td>10/06/2019</td>
        <td>24</td>
        <td>Viajes y Turismo</td>
        <td>Aprobado</td>
      </tr>
    </tbody>
  </table> 
  </div> <!-- Footer siempre abajo -->
</div>


<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
        <div class="container text-center">
            <span class="logo-text">© 2020 - By Grupo Nro 4 LAB4  - todos los derechos reservados </span>
        </div>
    </footer>

<!-- bootstraps -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
