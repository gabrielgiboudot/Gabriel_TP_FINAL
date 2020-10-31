<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Home Bank</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="PrincipalADM.jsp">Inicio</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Administrar clientes <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">ABM Clientes</a></li>
          <li><a href="#">Apertura de cuentas</a></li>
        </ul>
      </li>
      <li><a href="#">Reportes</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Perfil</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>
  
<div class="container mt-3">
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
</div>

</body>
</html>
