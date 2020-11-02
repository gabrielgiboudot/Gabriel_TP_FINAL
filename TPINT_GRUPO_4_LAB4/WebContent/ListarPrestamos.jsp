<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prestamos</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <ul class="navbar-nav">
  </ul>
</nav>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="PrincipalCLI.jsp">Menu</a>
    </li>
  </ul>
</nav> 
<div class="container mt-3">
  <h2>Mis Préstamos</h2>
  <p>Aqui podrá visualizar sus préstamos aprobados y seleccionar la cantidad de cuotas que desea abonar.</p>  
  <input class="form-control" id="myInput" type="text" placeholder="">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
       <th>Importe solicitado</th>
        <th>Fecha</th>  
        <th>Cantidad de cuotas</th> 
        <th>Motivo del préstamo.</th>
        <th>Próximo vencimiento</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <td>50.000</td>
        <td>05/02/2020</td>
        <td>24</td>
        <td>Refacción de inmueble</td>
        <td>05/11/2020</td>
      </tr>
      <tr>
        <td>30.000</td>
        <td>10/06/2019</td>
        <td>24</td>
        <td>Viajes y Turismo</td>
        <td>05/11/2020</td>
      </tr>
    </tbody>
  </table> 
  <a href="SolicitarPrestamo.jsp"><button type="button" class="btn btn-secondary" href="SolicitarPrestamo.jsp">Solicitar Nuevo Prestamo</button></a>
  <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">
  	Pagar cuotas
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
         <div class="dropdown">
    		<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
      			Débito de Cuenta
    		</button>
    		<div class="dropdown-menu">
      			<a class="dropdown-item" href="#">Cuenta 1</a>
      			<a class="dropdown-item" href="#">Cuenta 2</a>
    		</div>
  		 </div>
        </div>
        <div class="modal-header">
         <div class="dropdown">
    		<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
      			Préstamo a pagar
    		</button>
    		<div class="dropdown-menu">
      			<a class="dropdown-item" href="#">Prestamo 1</a>
      			<a class="dropdown-item" href="#">Prestamo 2</a>
    		</div>
  		 </div>
        </div>
        <div class="modal-header">
         <div class="dropdown">
    		<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
      			Cuotas
    		</button>
    		<div class="dropdown-menu">
      			<a class="dropdown-item" href="#"> 1 </a>
      			<a class="dropdown-item" href="#"> 2 </a>
      			<a class="dropdown-item" href="#"> 3 </a>
    		</div>
  		 </div>
        </div>
        <!-- Modal body -->
        <div class="modal-body"> Está pagando 2 cuotas del Préstamo 1. Total: 5000 
        </div>
        <div class="modal-body"> Se debitará de la Cuenta 1 
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" >Continuar</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        </div>
        
      </div>
    </div>
</div>
</html>