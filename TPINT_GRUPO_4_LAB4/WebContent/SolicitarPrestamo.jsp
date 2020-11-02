<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Estilos/Prestamos.css">
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
  <h2>Solicitar préstamo</h2>
  <p>Crédito sujeto a aprobación crediticia.</p>  
  <input class="form-control" id="myInput" type="text" placeholder="">
  <br>
  </div>

<div class="slidecontainer">
  <p>Monto a solicitar:</p>
  <input type="range" min="1" max="200" value="100">
</div>
</body>
</html>