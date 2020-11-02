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
          <li><a href="ABMclientes.jsp">ABM Clientes</a></li>
          <li><a href="ABMCuentas.jsp">Apertura de cuentas</a></li>
        </ul>
      </li>
      <li><a href="Reportes.jsp">Reportes</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="DatosPersonalesADM.jsp"><span class="glyphicon glyphicon-user"></span> Perfil</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
    </ul>
  </div>
</nav>
  
<div class="container mt-3">
  <h2>La idea de esta ventana es poder ver los reportes</h2>
  <p>podremos generar el reporte buscando por los filtros solicitados y se generara un archivo PDF. </p>  
  <input class="form-control" id="myInput" type="text" placeholder="">
  <br>
 
</div>

</body>
</html>
