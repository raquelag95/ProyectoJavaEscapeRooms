package controladores;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Horario;
import modelo.Modelo;

/**
 * Servlet implementation class CargaHorario
 */
@WebServlet("/CargaHorario")
public class CargaHorario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final int HORA_INICIO = 10;
	private final int HORA_FIN = 13;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CargaHorario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
    // en la URL se pondría 6 veces (una por cada sala):
//    http://localhost:8080/Vistas_Bootstrap/CargaHorario?idSala=1&diaInicio=2019-07-18&diaFin=2019-07-31
    
    
	public void loadHorario(Integer salaId, LocalDate diaInicio, LocalDate diaFin) {
		LocalDateTime currentDateTime = LocalDate.from(diaInicio).atTime(HORA_INICIO, 0);
		
		while (!currentDateTime.toLocalDate().isAfter(diaFin)) {
			
			while (currentDateTime.getHour() <= HORA_FIN) {
				Horario horario = new Horario(salaId, currentDateTime, true);
				
				Modelo modelo = new Modelo();
				modelo.setHor(horario);
				
				currentDateTime = currentDateTime.plusHours(1);
			}			
			currentDateTime = currentDateTime.plusDays(1).withHour(HORA_INICIO);
	}
		
}
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	loadHorario(Integer.parseInt(request.getParameter("idSala")), 
    			LocalDate.parse(request.getParameter("diaInicio")), 
    			LocalDate.parse(request.getParameter("diaFin")));
		}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
