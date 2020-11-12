package presentacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidad.Usuarios;
import negocioImpl.UsuariosNegImpl;

@WebServlet("/ServletUsuarios")
public class ServletUsuarios extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public ServletUsuarios() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btnTodos")!= null) {
			ArrayList<Usuarios> listaUsers = new ArrayList<>();
			UsuariosNegImpl negocio = new UsuariosNegImpl();
			listaUsers =  negocio.obtenerTodos();
			request.setAttribute("AllUsers",listaUsers);
			
			RequestDispatcher rd = request.getRequestDispatcher("/ABMclientes.jsp");   
	        rd.forward(request, response);
		}
		
	}

}
