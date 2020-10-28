package web.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.modelo.Empleado;
import web.modelo.EmpleadoDAO;

/**
 * Servlet implementation class Validar
 */
@WebServlet("/Validar")
public class Validar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    EmpleadoDAO edao = new EmpleadoDAO();
    Empleado em = new Empleado();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	String accion = request.getParameter("accion");
		if(accion.equalsIgnoreCase("Ingresar")){
			String user = request.getParameter("txtuser");
			String pass = request.getParameter("txtpass");
			em = edao.validar(user, pass);
			if(em.getUser() != null)
			{
				request.setAttribute("usuario", em);
				request.getRequestDispatcher("Controlador?menu = Principal").forward(request, response);
			}else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}else
		{
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
    }
    public Validar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		if(accion.equalsIgnoreCase("Ingresar")){
			String user = request.getParameter("txtuser");
			String pass = request.getParameter("txtpass");
			em = edao.validar(user, pass);
			if(em.getUser() != null)
			{
				request.setAttribute("usuario", em);
				request.getRequestDispatcher("Controlador?accion = Principal").forward(request, response);
			}else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}else
		{
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
