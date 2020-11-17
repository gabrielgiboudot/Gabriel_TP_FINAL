package presentacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidad.Cuentas;
import entidad.Usuarios;
import negocioImpl.CuentasNegImpl;

/**
 * Servlet implementation class ServletTransferencias
 */
@WebServlet("/ServletTransferencias")
public class ServletTransferencias extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTransferencias() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getParameter("CuentaPropia")!= null)
		{
			
			ArrayList<Cuentas> listaC=new ArrayList<Cuentas>();
			CuentasNegImpl negocio = new CuentasNegImpl();
			Usuarios u = (Usuarios)request.getSession().getAttribute("Session_user");
			listaC = (ArrayList<Cuentas>)negocio.ObtenerCuentas(u.getIdUsuario());
			
			request.setAttribute("CuentasCliente", listaC);
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/TransferenciasCCPropia.jsp");   
	        rd.forward(request, response);
	    
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getParameter("CuentaPropia")!= null)
		{
			
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/TransferenciasCCPropia.jsp");   
	        rd.forward(request, response);
	    
		}
		
		
		
	}

}
