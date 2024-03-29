package controladores;

import java.io.IOException;
import java.util.List;

import modelo.Modelo;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import modelo.Disponibilidad;
import modelo.Horario;

/**
 * Servlet implementation class ConsultarDisp
 */
@WebServlet("/ConsultarDisp")
public class ConsultarDisp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConsultarDisp() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("Content-Type: application/json; " + "charset=UTF-8");
		Disponibilidad dispon;
		Gson gson = new Gson();
		dispon = gson.fromJson(request.getParameter("objDisponJSON"), Disponibilidad.class);

		Modelo modelo = new Modelo();
		List<Horario> horarioFecha = modelo.getListaHorarios(dispon.getSala(), dispon.getFecha());
	    response.getWriter().write(gson.toJson(horarioFecha)); 
	}

}
