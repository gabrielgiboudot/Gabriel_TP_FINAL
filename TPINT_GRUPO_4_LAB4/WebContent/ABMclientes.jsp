<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>ABM clientes</title>
<link rel="shortcut icon" href="https://i.ibb.co/wcwqp98/banco.png">

<!--Bootstrap-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!--Estilos propios-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/Estilos/AMBclientes.css" />

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
          <a class="dropdown-item" href="ABMCuentas.jsp">Apertura de cuentas</a>
        </div>
      </li>
      <li class="nav-item active">
                    <a class="nav-link" href="Reportes.jsp" style="color:white">Reportes <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
       <span id="perfil" class="navbar-text" style="padding: 10px">
            <a href="DatosPersonalesADM.jsp">
                <img
                    src="https://i.ibb.co/Xzbf1pS/usuario.png" />
            </a>
            Perfil
        </span>
         <span id= "salir" class="navbar-text">
            <a href="Login.jsp">
                <img
                    src="https://i.ibb.co/TcV6LW4/salir-arriba-a-la-derecha.png" />
            </a>
           	Salir
        </span>
    </nav>
    

    <h1 style="text-align: center; padding-top: 150px;" class="font-italic text">Administración de clientes</h1>
    <div class="container-fluid">
    <div class="footer-siempre-abajo" style="background-color:white">
        <div class="row">
            <div class="col-12" style="padding: 10px; text-align: center;">
                <div class="input-group" style="text-align: center;">
                	<input type="text" ID="txtNombre"  class="form-control" name="txtUsuario" Style="margin: 5px;" placeholder="Usuario">
                    <span class="input-group-addon"></span>
                    <input type="text" ID="txtMail"  class="form-control" name="txtEmail" Style="margin: 5px;" placeholder="Email">
                </div>
                <div class="input-group" style="text-align: center;">
                 	<input type="text" ID="txtDni"  class="form-control" name="txtDni" onkeypress="javascript:return solonumeros(event)" Style="margin: 5px; width: 100px;" placeholder="Dni">
                    <input type="text" ID="txtCuil"  class="form-control" name="txtCuil" onkeypress="javascript:return solonumeros(event)" Style="margin: 5px; width: 100px;" placeholder="Cuil">
                </div>
                <div class="col text-center">
                <input class="btn btn-primary"  name="btnBuscar" type="submit" value="Buscar" CssClass="btn btn-primary mb-2" Style="text-align: center; width: 100px;">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1 col-sm-4"></div>
            <div class="col-md-10 col-sm-4">

<table class="table table-dark">
  <thead>
    <tr>
       <th scope="col"></th>
       <th scope="col"></th>
      <th scope="col">ID</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellido</th>
      <th scope="col">Email</th>
      <th scope="col">Dni</th>
      <th scope="col">Cuil</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><input HeaderText="Borrado"  class="btn btn-primary" type="submit" name= "btnEliminar" Onclick="abrir()" id="btnEliminar" value="Eliminar" ></td>
      <td><input HeaderText="Modificacion" class="btn btn-primary" type="submit" name= "btnModificar" Onclick="Abrir_Modificar()" id="btnModificar" value="Modificar" ></td>
      <th scope="row">1</th>
      <td>Martin</td>
      <td>Argañaraz</td>
      <td>MartinArg98@gmail.com</td>
      <td>40558512</td>
      <td>21405585120</td>
    </tr>
     <tr>
      <td><input class="btn btn-primary" type="submit" name= "btnEliminar" id="btnEliminar" Onclick="abrir()" value="Eliminar" ></td>
      <td><input class="btn btn-primary" type="submit" name= "btnModificar" id="btnModificar" Onclick="Abrir_Modificar()" value="Modificar" ></td>
      <th scope="row">2</th>
      <td>Ana</td>
      <td>Perez</td>
      <td>Anaperez12@gmail.com</td>
      <td>40558512</td>
      <td>21405585120</td>
    </tr>
     <tr>
      <td><input class="btn btn-primary" type="submit" name= "btnEliminar" id="btnEliminar"  Onclick="abrir()" value="Eliminar" ></td>
      <td><input class="btn btn-primary" type="submit" name= "btnModificar" id="btnModificar" Onclick="Abrir_Modificar()" value="Modificar" ></td>
      <th scope="row">3</th>
      <td>Luciano</td>
      <td>Souza</td>
      <td>lu_souza76@gmail.com</td>
      <td>40558512</td>
      <td>21405585120</td>
    </tr>
  </tbody>
</table>
            </div>
            <div class="col-md-1 col-sm-4"></div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-4">
                
            </div>
            <div class="col-sm-12 col-md-4" style="text-align: center; padding: 3px;">
            	<input class="btn btn-primary" type="submit" name= "btnAgregar" id="btnAgregar"  Onclick="Agregar()" value="Agregar cliente" >
                <!--  
                 <asp:Button runat="server" class="btn-block btn btn-outline-primary" ID="btnAgregarProdu"  Text="Agregar Producto" OnClick="btnAgregarProdu_Click" />
                 <asp:Button runat="server" class="btn-block btn btn-outline-primary" ID="btnAgregarCateg" Onclick="btnAgregarCateg_Click" Text="Agregar categoria"  />
                 <asp:Button runat="server" class="btn-block btn btn-outline-primary" ID="btnModificarCateg"  Text="Modificar categoria" OnClick="btnModificarCateg_Click"  />
                 -->
            </div>
            <div class="col-sm-12 col-md-4">
                
            </div>
        </div>
        </div> <!-- Footer siempre abajo -->
    </div>

     
   


    <div class="modal fade bd-example-modal-lg" id="ModalModificaciones" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Modificar cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <h5>Validar dni</h5>
                         <input type="text" ID="ValidarDNI"  class="form-control" onkeypress="javascript:return solonumeros(event)"  name="DNI" Style="margin: 5px;" placeholder="Dni">
                        <h5>Nueva clave</h5>
                        <input type="text" ID="ModificarCLAVE" class="form-control" name="CLAVE" Style="margin: 5px;" placeholder="Clave">
                    </div>
                </div>
                <div class="modal-footer">
                	<input ID="btnModificar" class="btn btn-primary col text-center" type="submit" value= "Modificar" name="btnModificar">
                </div>
            </div>
        </div>
    </div>


     <div class="modal fade bd-example-modal-lg" id="ModalAgregar" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel3">Agregar cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <h5>Dni</h5>
                        <input type="text" ID="DNI"  class="form-control" onkeypress="javascript:return solonumeros(event)"  name="DNI" Style="margin: 5px;" placeholder="Dni">
                        <h5>Cuil</h5>
                        <input type="text" ID="CUIL" class="form-control" onkeypress="javascript:return solonumeros(event)"  name="CUIL" Style="margin: 5px;" placeholder="Cuil">
                        <h5>Nombre</h5>
                        <input type="text" ID="Nombre"  class="form-control" name="txtNombreA" Style="margin: 5px;" placeholder="Nombre">
                        <h5>Apellido</h5>
                        <input type="text" ID="Apellido"  class="form-control" name="txtApellidoA" Style="margin: 5px;" placeholder="Apellido">
                         <h5>Fecha de nacimiento</h5>
                         <input type="date" ID="FechaNac"  class="form-control" name="txtFechaNacA"  min="1930-01-01" max="2002-01-01" class="form-control bg-white border-left-0 border-md" required="required" Style="margin: 5px;">
                        <h5>Email</h5>
                        <input type="text" ID="txtMailA"  class="form-control" name="txtEmailA" Style="margin: 5px;" placeholder="Email">
                         <h5>Nombre de usuario</h5>
                        <input type="text" ID="txtUsuario"  class="form-control" name="txtUsuarioA" Style="margin: 5px;" placeholder="Usuario">
                        <h5>Genero</h5>
                        <select id="txtSexo" name="txtGenero" class="form-control" required="required">
                            <option value="Femenino" selected="">Femenino</option>
                            <option value="Masculino">Masculino</option>
                            <option value="na">Sin definir</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <input ID="btnAgregar" class="btn btn-primary col text-center" type="submit" value= "Agregar" name="btnAgregar">
                </div>
            </div>
        </div>
    </div>

 
    <div class="modal fade bd-example-modal-sm" id="modalEliminar" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel2">Eliminar cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                     ¿Esta seguro de eliminar el cliente seleccionado?
                        </div>
                </div>
                <div class="modal-footer">
                    <input ID="btnEliminarE" class="btn btn-primary col text-center" type="submit" value= "Confirmar" name="btnEliminarE">
                </div>

            </div>
        </div>
    </div>

   
    <script>
        function Abrir_Modificar() {
            $('#ModalModificaciones').modal('show');
        }
    </script>
    <script>
        function solonumeros(e) {
            var key;
            if (window.event) // IE
            {
                key = e.keyCode;
            }
            else if (e.which) // Netscape/Firefox/Opera
            {
                key = e.which;
            }
            if (key < 48 || key > 57) {
                return false;
            }
            return true;
        }
    </script>

     <script> 
         function abrir() {
             $('#modalEliminar').modal('show');
         }
    </script>

    <script> 
        function Agregar() {
            $('#ModalAgregar').modal('show');
        }
    </script>
    
<!-- Footer -->

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