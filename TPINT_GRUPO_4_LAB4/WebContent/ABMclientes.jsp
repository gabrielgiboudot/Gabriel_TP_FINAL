<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login - home banking</title>
<link rel="shortcut icon" href="https://i.ibb.co/wcwqp98/banco.png">
<!--Bootstrap-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<!--Estilos propios-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/Estilos/AMBclientes.css" />

</head>
<body>

   <div class="footer-siempre-abajo" style="background-color:white">
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
       <span class="navbar-text" style="padding: 10px">
            <asp:Label  style="color:white"  Text="Perfil" runat="server" />
            <a href="#">
                <img
                    src="https://i.ibb.co/Xzbf1pS/usuario.png" />
            </a>
            Perfil
             <asp:Label style="color:white" id="lblcant" Text="Perfil" runat="server" />
        </span>
         <span class="navbar-text">
            <asp:Label  style="color:white"  Text="Salir" runat="server" />
            <a href="#">
                <img
                    src="https://i.ibb.co/TcV6LW4/salir-arriba-a-la-derecha.png" />
            </a>
           	Salir
             <asp:Label style="color:white" id="lblcant" Text="Salir" runat="server" />
        </span>
    </nav>
    
</div>

<!-- Footer -->

<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
        <div class="container text-center">
            <span class="logo-text">© 2020 - By Grupo Nro 4 LAB4  - todos los derechos reservados </span>
        </div>
    </footer>
    
</body>
</html>