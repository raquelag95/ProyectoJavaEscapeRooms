package controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Modelo;
import modelo.Reservas;

/**
 * Servlet implementation class ReservarSala
 */
@WebServlet("/ReservarSala")
public class ReservarSala extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservarSala() {
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
		// TODO Auto-generated method stub
//		Reservas r = new Reservas(Integer.parseInt(request.getParameter("idHorario")), request.getParameter("nombre"), 
//				request.getParameter("apellido1"), request.getParameter("apellido2"), request.getParameter("telefono"), 
//				request.getParameter("email"), Integer.parseInt(request.getParameter("nSala")), 
//						Integer.parseInt(request.getParameter("nJugadores")));
		
		Reservas r = new Reservas(request.getParameter("nombre"), 
				request.getParameter("apellido1"), request.getParameter("apellido2"), request.getParameter("telefono"), 
				request.getParameter("email"), Integer.parseInt(request.getParameter("nSala")), 
						Integer.parseInt(request.getParameter("nJugadores")));
						
		Modelo modelo = new Modelo();
		modelo.setReserv(r);
//		int idReserva = modelo.getReserv().getId();
		
		response.sendRedirect("confirmacion.jsp");
		
	}

}
