package controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Servlet implementation class CargaHorario
 */
@WebServlet("/CargaHorario")
public class CargaHorario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final int horaInicio = 10;
	private final int horaFin = 13;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CargaHorario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		public void loadHorario(Integer idSala, LocalDate diaInicio, LocalDate diaFin) {
//			
//			// Carga entre las 10:00 y las 13:00 de 1h en 1h
//			LocalDateTime actual = LocalDate.from(diaInicio).atTime(horaInicio, 0);
//			
//			
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
